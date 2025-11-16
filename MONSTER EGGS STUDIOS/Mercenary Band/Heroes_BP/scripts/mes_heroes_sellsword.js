import { world, system } from "@minecraft/server";
import {
	MessageFormResponse,
	ActionFormData,
	ActionFormResponse,
	MessageFormData,
} from "@minecraft/server-ui";
import {
	randint,
	getTopSolidBlockY,
	saveInventory,
	loadInventory,
	distance,
	randfloat,
	normalize,
	norme,
	saveCoordinates,
	getRelatedPlayer,
	removeNbMerc,
	addHeroToPlayer,
} from "./mes_heroes_utils";
import { follow } from "./mes_heroes_follow";
import { speech } from "./mes_heroes_minions_texts";

let dashCooldown = new Map();
let bloodCooldown = new Map();
let moveCooldown = new Map();
let blockCooldown = new Map();

export function sellswordUI(sellsword, player) {
	if (!sellsword) return;

	const relatedPlayer = getRelatedPlayer(sellsword)
	if (!relatedPlayer) return;

	const hasTag = sellsword.getTags().find((tag) => tag.startsWith("Fighting"));
	if (hasTag) return;
	system.run(() => {
		const form = new ActionFormData()
			.title("Duel Pannel")
			.body("Chose an Option")
			.button("Let's Fight !", "textures/items/iron_sword.png")
			.button("Maybe later.", "textures/blocks/barrier.png");

		form.show(player).then((response) => {
			if (response.canceled) return;

			switch (response.selection) {
				case 0:
					startFight(sellsword, player);
					break;
				case 1:
					break;
			}
		});
	});
}

export function onDieEvent(event, player, whosDead) {
	//sellsword's dead
	if (whosDead == event?.deadEntity) {
		const newSellsword = player.dimension.spawnEntity(
			"mes_heroes:sellsword",
			event.deadEntity.location
		);
		system.runTimeout(() => {
			newSellsword.runCommand("playanimation @s animation.mes_heroes.sellsword.downed")
			system.runTimeout(() => {
				newSellsword.runCommand("playanimation @s animation.mes_heroes.sellsword.downed")
			}, 75)
		}, 5)

		system.runTimeout(() => {
			newSellsword.runCommand("event entity @s block")
			newSellsword.addTag(`block-${Date.now() + 4000}`)
		}, 20)
		newSellsword.addEffect("minecraft:resistance", 20 * 3, {
			showParticles: false,
		});
		newSellsword.runCommand("effect @s slowness 4 255 true")


		newSellsword.nameTag = event.deadEntity?.nameTag

		const value = event.deadEntity?.getComponent("minecraft:variant")?.value

		if (value != null && value != undefined) {
			const skinList = ["farmer", "librarian", "priest", "smith", "butcher"]
			newSellsword.triggerEvent(skinList[value])
		}

		removeNbMerc(player, event.deadEntity)
		addHeroToPlayer(player, newSellsword)

		system.runTimeout(() => {
			const messageForm = new MessageFormData()
				.title("Congrats !")
				.body("You win this time. Here's some XP for you.")
				.button1("New fight !")
				.button2("That we'll be it for today.");

			messageForm.show(player).then((response) => {
				if (response.canceled) return;

				if (response.selection == 0) {
					startFight(newSellsword, player);
				}
			});
		}, 10);
		player.runCommand("/xp 5L @s");
		//Add playsound

		//player's dead
	} else if (whosDead == player) {
		const xTag = player.getTags().find((tag) => tag.startsWith("deathX"));
		const yTag = player.getTags().find((tag) => tag.startsWith("deathY"));
		const zTag = player.getTags().find((tag) => tag.startsWith("deathZ"));

		if (!xTag || !yTag || !zTag) return
		const xPos = parseInt(xTag.split("_")[1]);
		const yPos = parseInt(yTag.split("_")[1]);
		const zPos = parseInt(zTag.split("_")[1]);


		player.removeTag(xTag);
		player.removeTag(yTag);
		player.removeTag(zTag);


		player.removeTag("FightingSellsword");

		player.teleport({
			x: xPos,
			y: yPos,
			z: zPos,
		});

		loadInventory(player);

		const sellswords = player.dimension.getEntities({
			location: player.location,
			maxDistance: 10,
			type: "mes_heroes:sellsword"
		})
		let minDist = Infinity
		let trueSellsword = null
		for (const sellsword of sellswords) {
			if (distance(player.location, sellsword.location) < minDist) {
				minDist = distance(player.location, sellsword.location)
				trueSellsword = sellsword
			}
		}

		if (!trueSellsword) return

		system.runTimeout(() => {
			const messageForm = new MessageFormData()
				.title("Defeated...")
				.body("The Sellsword bested you. Better luck next time.")
				.button1("New fight !")
				.button2("That we'll be it for today.");

			messageForm.show(player).then((response) => {
				if (response.canceled) return;

				if (response.selection == 0) {
					startFight(trueSellsword, player);
				}
			});
		}, 10);
	}
}

export function sellsword(sellsword) {

	const player = getRelatedPlayer(sellsword)
	if (!player) return;

	// sellsword.runCommand("say -1")
	saveCoordinates(sellsword)

	const isFighting = sellsword
		.getTags()
		.find((tag) => tag.startsWith("Fighting"));

	// for (const tag of sellsword.getTags()) {
	//     sellsword.runCommand(`say ${tag}`);
	// }
	const blockTag = sellsword.getTags().find(tag => tag.startsWith("block"))
	if (blockTag && (Date.now() - parseInt(blockTag.split('-')[1]) > 300)) {
		sellsword.runCommand("event entity @s stop_block")
		sellsword.removeTag(blockTag)
	}

	if (isFighting) {
		const lastTimeRandomMove = moveCooldown.get(sellsword.id) || 0;
		const lastTimeBlock = blockCooldown.get(sellsword.id) || Date.now() - 1000; //So they are not in phase
		if (Date.now() - lastTimeRandomMove > 2000) {
			const players = world.getAllPlayers();
			const player = players.find(
				(playerName) => playerName.name == isFighting.split("-")[1]
			);

			if (!player) return
			if (distance(player.location, sellsword.location) > 10) return

			const center = player.location;
			const radius = 5
			const theta0 = randfloat(0, 2 * Math.PI);
			const coef = Math.random()
			const finalRadius = radius * Math.sqrt(coef)

			const xpos = finalRadius * Math.sin(theta0) + center.x
			const zpos = finalRadius * Math.cos(theta0) + center.z

			const moveVector = {
				x: xpos - sellsword.location.x,
				y: 0.3,
				z: zpos - sellsword.location.z
			}

			const normlizedMoveVector = normalize(moveVector, 1)

			sellsword.applyImpulse(normlizedMoveVector)


			moveCooldown.set(sellsword.id, Date.now());
		}

		if (Date.now() - lastTimeBlock > 2000) {
			if (Math.random() < 0.4) {
				sellsword.runCommand("event entity @s block")
				sellsword.addTag(`block-${Date.now()}`)
			}
		}

	}




	const lastTimeDash = dashCooldown.get(sellsword.id) || 0;
	if (Date.now() - lastTimeDash > 2000) {
		if (Math.random() < 0.4) {
			const mobsAroundSellsword = sellsword.dimension.getEntities({
				location: sellsword.location,
				maxDistance: 10,
				families: ["monster"],
			});
			if (mobsAroundSellsword.length != 0) {
				dash(mobsAroundSellsword, sellsword, sellsword);
			}
		}
		dashCooldown.set(sellsword.id, Date.now());
	}

	speech(sellsword, player);
	const mobsAroundPlayer = player.dimension.getEntities({
		location: player.location,
		maxDistance: 10,
		families: ["monster"],
	});

	if (mobsAroundPlayer.length >= 3) {
		dash(mobsAroundPlayer, player, sellsword);
	} else if (mobsAroundPlayer.length == 0 && sellsword.hasTag("follow")) {
		follow(sellsword, player);
	}


	const lastTimeBlood = bloodCooldown.get(sellsword.id) || 0;
	if (Date.now() - lastTimeBlood > 3000) {
		if (Math.random() < 0.6) {
			const mobsAroundSellsword = sellsword.dimension.getEntities({
				location: sellsword.location,
				maxDistance: 3,
				families: ["monster"],
			});
			if (mobsAroundSellsword.length == 0) return;
			sellsword.applyDamage(2);
			mobsAroundSellsword[0].applyDamage(6);

			mobsAroundSellsword[0].addTag("sellswordBloodDamage")
			system.runTimeout(() => {
				mobsAroundSellsword[0].removeTag("sellswordBloodDamage")
			}, 10)
			sellsword.runCommand("playanimation @s animation.mes_heroes.sellsword.blood_price");
			for (let i = 0; i < 10; i++) {
				mobsAroundSellsword[0].dimension.spawnParticle(
					"minecraft:critical_hit_emitter",
					mobsAroundSellsword[0].location
				);
			}
		}
		bloodCooldown.set(sellsword.id, Date.now());
	}
}

function startFight(sellsword, player) {
	saveInventory(player);
	sellsword.runCommand("playanimation @s animation.mes_heroes.sellsword.defend"); // petite anim de debut de combat stylé
	sellsword.runCommand("event entity @s start_fight");
	sellsword.addTag(`Fighting-${player.name}`);
	player.addTag("FightingSellsword");

	const centerPos = {
		x: (sellsword.location.x + player.location.x) / 2,
		y: (sellsword.location.y + player.location.y) / 2,
		z: (sellsword.location.z + player.location.z) / 2,
	};

	//Sellsword TP
	const xpos = sellsword.location.x + (sellsword.location.x - centerPos.x) * 5;
	const zpos = sellsword.location.z + (sellsword.location.z - centerPos.z) * 5;
	let ypos = getTopSolidBlockY(sellsword.dimension, xpos, zpos, false, sellsword.location.y);

	if (!ypos) ypos = sellsword.location.y;

	sellsword.teleport({
		x: xpos,
		y: ypos,
		z: zpos,
	});
	//----------------------
	//Player TP
	const xpos2 = player.location.x + (player.location.x - centerPos.x) * 5;
	const zpos2 = player.location.z + (player.location.z - centerPos.z) * 5;
	let ypos2 = getTopSolidBlockY(player.dimension, xpos2, zpos2, false, player.location.y);

	if (!ypos2) ypos2 = player.location.y;

	player.teleport({
		x: xpos2,
		y: ypos2,
		z: zpos2,
	});
	//Look at:
	const vector = {
		x: sellsword.location.x - player.location.x,
		y: sellsword.location.y - player.location.y,
		z: sellsword.location.z - player.location.z,
	};
	const vectCoef = Math.sqrt(vector.x ** 2 + vector.z ** 2);
	const coeffSens = vector.x > 0 ? -1 : 1;
	const theta =
		coeffSens * Math.round((Math.acos(vector.z / vectCoef) * 180) / Math.PI);
	if (isNaN(theta)) return;
	sellsword.setRotation({ x: -theta, y: -theta });
}

function dash(mobArray, closestToWho, sellsword) {
	let dist = Infinity;
	let mobToFight = null;
	for (const mob of mobArray) {
		if (distance(mob.location, closestToWho.location) < dist) {
			dist = distance(mob.location, closestToWho.location);
			mobToFight = mob;
		}
	}
	if (distance(mobToFight.location, sellsword.location) < 2) return;
	sellsword.applyImpulse({
		x:
			mobToFight.location.x -
			mobToFight.getViewDirection().x -
			sellsword.location.x,
		y:
			mobToFight.location.y -
			mobToFight.getViewDirection().y -
			sellsword.location.y,
		z:
			mobToFight.location.z -
			mobToFight.getViewDirection().z -
			sellsword.location.z,
	});
	mobToFight.addTag("sellswordDashDamage")
	system.runTimeout(() => { mobToFight.removeTag("sellswordDashDamage") }, 10)
	mobToFight.applyDamage(8);
	sellsword.runCommand("playanimation @s animation.mes_heroes.sellsword.attack")
	for (let i = 0; i < 10; i++) {
		mobToFight.dimension.spawnParticle(
			"minecraft:critical_hit_emitter",
			mobToFight.location
		);
	}
}
