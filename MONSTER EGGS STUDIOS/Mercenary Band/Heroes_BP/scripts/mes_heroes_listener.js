import { system, world, ItemStack, GameMode, Player } from "@minecraft/server";
import { onDieEvent, sellswordUI } from "./mes_heroes_sellsword";
import { damageListenerGuardian, deathListenerGuardian, shieldAppear } from "./mes_heroes_guardian";
import {
	reviveEntity,
	randint,
	isLookingAtEntity,
	getNearestEntity,
	addKill,
	findKillerAndAddKill,
	getNbMerc,
	getRandomName,
	getMercPropNames,
	getMercPropList,
	getRelatedPlayer,
	isOnAPlatform,
	smoothKill,
	areThereBlocksAbove,
} from "./mes_heroes_utils";
import { contractUI, contractUI_Families } from "./mes_heroes_contractUI";
import { ActionFormData } from "@minecraft/server-ui";
import { campsiteUI } from "./mes_heroes_campsite";
import { guide_book } from "./mes_heroes_guidebook";
import { clearRogueTags } from "./mes_heroes_rogue";

export function listener() {
	// INITIALISE ET DONNE LE GUIDE BOOK DE L'ADDON ( LE GUIDEBOOK JE LE CODERAIS MOI PLUS TARD)
	const playerSpawnListener = world.afterEvents.playerSpawn.subscribe((event) => {
		const player = event.player;

		if (event.initialSpawn) {
			player.runCommand(`tickingarea remove mes_heroes_load`);
			for (const rogue of player.dimension.getEntities({ type: "mes_heroes:rogue" })) {
				clearRogueTags(rogue);
			}
			// for (const prop of player.getDynamicPropertyIds()) {
			// 	player.runCommand(`say ${prop}: ${player.getDynamicProperty(prop)}`);
			// 	player.setDynamicProperty(prop, null);
			// }
			// for (const tag of player.getTags()) {
			// 	player.removeTag(tag);
			// }

			if (player.hasTag("mes_heroes_join") === false) {
				player.runCommand(`/tellraw @p { \"rawtext\" : [ { \"text\" : \"§7[§6§lHeroes§r§7] §f-§r §6Heroes Add-On Guidebook Received\" } ] }`);
				player.runCommand("function mes/heroes/setup");
				world.getDimension(player.dimension.id).spawnItem(new ItemStack("mes_heroes:guide_book", 1), player.location);
				player.addTag("mes_heroes_join");
			}
		} else {
			const hasTag = player.getTags().find((tag) => tag.startsWith("FightingSellsword"));
			if (!hasTag) return;
			onDieEvent(null, player, player);
		}
	});

	const entitySpawn = world.afterEvents.entitySpawn.subscribe((event) => {
		if (event.entity.typeId.split("_")[2] == "campsite") {
			event.entity.runCommand("particle mes_heroes:campsite_build ~ ~ ~");
			const campsite = event.entity;
			const entityTag = event.entity.typeId.split("_")[1].split(":")[1];
			let ID = Math.round(Math.random() * Math.pow(10, 8));
			campsite.addTag(`ID-${ID}`);

			const randomSkins = ["farmer", "librarian", "butcher", "smith", "priest"];
			// add a timer, if no merc of the campsite is hired after 1 minutes, kill the campsite
			system.runTimeout(() => {
				if (!campsite.hasTag("mes_heroes_clm")) {
					campsite.runCommand("tp @s ~ ~-20 ~");
					system.runTimeout(() => {
						campsite.runCommand("kill @s");
					}, 20);
				}
			}, 20 * 51);

			//If there's a player close, we can assume he made the campsite spawn so no need to summon heroes
			// const closePlayers = campsite.dimension.getEntities({ type: "minecraft:player", location: campsite.location, maxDistance: 10 });
			// if (closePlayers.length > 0) return;

			if (![...campsite.dimension.getEntities({ type: `mes_heroes:${entityTag}` })]
				.some(ent => ent.hasTag("mes_heroes_rem"))) {

				if (!isOnAPlatform(campsite.location, 3, campsite.dimension) ||
					areThereBlocksAbove(campsite.location, 3, campsite.dimension)) {
					return smoothKill(campsite);
				}

				// 🔹 Filtrage ici — on ignore les placeholders
				if (entityTag === "placeholder" || entityTag === "placeholder_campsite") return;

				const spawnLocation = {
					x: campsite.location.x + randint(-4, 4),
					y: campsite.location.y,
					z: campsite.location.z + randint(-4, 4),
				};

				const merc = campsite.dimension.spawnEntity(`mes_heroes:${entityTag}`, spawnLocation);
				merc.addTag("has_stroll");
				merc.addTag(`ID-${ID}`);
				merc.nameTag = getRandomName();
				merc.triggerEvent(randomSkins[Math.round(Math.random() * (randomSkins.length - 1))]);
			} else {
				if (!isOnAPlatform(campsite.location, 3, campsite.dimension) || areThereBlocksAbove(campsite.location, 3, campsite.dimension)) {
					const players = campsite.dimension.getPlayers({
						maxDistance: 1,
						location: campsite.location,
					});

					const player = players[0];

					const relatedMerc = campsite.dimension.getEntities({
						type: `mes_heroes:${entityTag}`,
						location: campsite.location,
						maxDistance: 10,
					});

					const newCamp = new ItemStack(`${campsite.typeId}_spawn_egg`, 1);
					newCamp.nameTag = `${player.name} - ${
						campsite.typeId.split(":")[1].split("_")[0].charAt(0).toUpperCase() + campsite.typeId.split(":")[1].split("_")[0].slice(1)
					} Campsite`;
					player.getComponent("minecraft:inventory")?.container.addItem(newCamp);
					for (const merc of relatedMerc) {
						// add the tag 'merc.addTag("mes_heroes_rem");' if the hero is hired, if not kill the hero smootKill(merc);
						// if merc has tag follow or tag stroll
						if (merc.hasTag("follow")) {
							merc.addTag("mes_heroes_rem");
						} else {
							smoothKill(merc);
						}
					}

					player.runCommand("title @s actionbar §aUnable to place campsite here.");
					smoothKill(campsite);
				} else {
					// remove the tags of these entities
					const relatedMerc2 = campsite.dimension.getEntities({
						type: `mes_heroes:${entityTag}`,
					});

					// add to these entities that have the remove that the campsite tag
					for (const merc of relatedMerc2) {
						if (merc.hasTag("mes_heroes_rem")) {
							merc.removeTag("mes_heroes_rem");
						}
						if (merc.hasTag("follow")) {
							merc.addTag(`ID-${ID}`);
						}
					}
				}
			}
		}
	});




	const interactionListener = world.beforeEvents.playerInteractWithEntity.subscribe((event) => {
		const { player, target } = event;

		if (!player || !target) return;

		const inventory = player.getComponent("inventory").container;
		const heldItem = inventory.getItem(player.selectedSlotIndex);
		if (
			(target && target.typeId == "mes_heroes:archer") ||
			target.typeId == "mes_heroes:beastmaster" ||
			target.typeId == "mes_heroes:guardian" ||
			target.typeId == "mes_heroes:rogue" ||
			(target.typeId == "mes_heroes:sellsword" && !player.isSneaking) ||
			target.typeId == "mes_heroes:cleric"
		) {
			contractUI(player, target);
		} else if (target.typeId === "mes_heroes:sellsword" && player.isSneaking && getRelatedPlayer(target)) {
			sellswordUI(target, player);
		} else if (target.typeId.split("_")[2] == "campsite") {
			campsiteUI(player, target);
		}
	});

	const deathListener = world.afterEvents.entityDie.subscribe((event) => {
		const deadEntity = event.deadEntity;
		const killer = event.damageSource.damagingEntity;

		if (killer) {
			switch (killer.typeId) {
				//archer
				case "mes_heroes:silent_arrow":
					findKillerAndAddKill("mes_heroes:archer", deadEntity);
					break;

				//beastmaster
				case "mes_heroes:beastwolf":
					findKillerAndAddKill("mes_heroes:beastmaster", deadEntity);
					break;

				// rogue
				case "mes_heroes:rogue":
				case "mes_heroes:dagger":
					findKillerAndAddKill("mes_heroes:rogue", deadEntity);
					break;

				// sellsword
				case "mes_heroes:sellsword":
					findKillerAndAddKill("mes_heroes:sellsword", deadEntity);
					break;
			}
		}
		if (!deadEntity) return;
		if (deadEntity.typeId == "mes_heroes:guardian") {
			const rider = deadEntity.getComponent("rideable")?.getRiders()?.[0];
			if (rider) {
				deathListenerGuardian(event, rider);
			}
		}
		if (
			deadEntity &&
			(deadEntity.typeId == "mes_heroes:archer" ||
				deadEntity.typeId == "mes_heroes:beastmaster" ||
				deadEntity.typeId == "mes_heroes:guardian" ||
				deadEntity.typeId == "mes_heroes:rogue" ||
				deadEntity.typeId == "mes_heroes:sellsword" ||
				deadEntity.typeId == "mes_heroes:cleric")
		) {
			if (deadEntity.typeId == "mes_heroes:sellsword") {
				const hasTag = deadEntity.getTags().find((tag) => tag.startsWith("Fighting"));
				if (!hasTag) {
					reviveEntity(deadEntity);
				}
			} else {
				reviveEntity(deadEntity);
			}
		}
		if (deadEntity && deadEntity.typeId == "mes_heroes:sellsword") {
			const hasTag = deadEntity.getTags().find((tag) => tag.startsWith("Fighting"));
			if (!hasTag) return;
			const players = world.getAllPlayers();
			const player = players.find((playerFighting) => playerFighting.name == hasTag.split("-")[1]);
			if (!player) return;
			onDieEvent(event, player, deadEntity);
		}
		if (deadEntity && deadEntity.typeId == "minecraft:player") {
			const sellsword = event.damageSource.damagingEntity;

			const hasTag = deadEntity.getTags().find((tag) => tag.startsWith("FightingSellsword"));
			if (!sellsword || !hasTag || sellsword.typeId != "mes_heroes:sellsword") return;

			deadEntity.addTag(`deathX_${deadEntity.location.x}`);
			deadEntity.addTag(`deathY_${deadEntity.location.y}`);
			deadEntity.addTag(`deathZ_${deadEntity.location.z}`);

			sellsword.runCommand("kill @e[type=minecraft:item,r=10]");
			system.runTimeout(() => {
				sellsword.runCommand("kill @e[type=xp_orb,r=10]");
			}, 20 * 2);

			sellsword.runCommand("effect @s instant_health");

			const fightingtag = sellsword.getTags().find((tag) => tag.startsWith("Fighting"));
			sellsword.removeTag(fightingtag);
			sellsword.runCommand("event entity @s end_fight");
		}
		try {
			if (deadEntity.getTags().length == 0) return;
		} catch {
			return;
		}
		if (deadEntity?.hasTag("jumpGuardianDamage") || deadEntity?.hasTag("guardianRoarDamage")) {
			findKillerAndAddKill("mes_heroes:guardian", deadEntity);
		}
		if (deadEntity?.hasTag("rogueCriticalDamage")) {
			findKillerAndAddKill("mes_heroes:rogue", deadEntity);
		}
		if (deadEntity?.hasTag("sellswordBloodDamage") || deadEntity.hasTag("sellswordDashDamage")) {
			findKillerAndAddKill("mes_heroes:sellsword", deadEntity);
		}
	});

	const damageListener = world.afterEvents.entityHurt.subscribe((event) => {
		const hurtEntity = event.hurtEntity;
		const attacker = event.damageSource?.damagingEntity;

		if (hurtEntity && hurtEntity.typeId == "mes_heroes:guardian") {
			const rider = hurtEntity.getComponent("rideable")?.getRiders()?.[0];
			if (rider) damageListenerGuardian(event, hurtEntity, rider);
		} else if (hurtEntity && hurtEntity.typeId == "minecraft:player") {
			// const healthComp = hurtEntity.getComponent("minecraft:health")
			// if (healthComp.currentValue <= 0) {
			//     healthComp.resetToMaxValue()
			// }
			if (attacker && attacker.typeId == "mes_heroes:sellsword") attacker.runCommand("playanimation @s animation.mes_heroes.sellsword.attack");

			const ridingComponent = hurtEntity.getComponent("riding");
			const entityThatThePlayerIsRidingOnTopOf = ridingComponent?.entityRidingOn;
			if (!entityThatThePlayerIsRidingOnTopOf) return;
			if (entityThatThePlayerIsRidingOnTopOf.typeId == "mes_heroes:guardian") {
				damageListenerGuardian(event, entityThatThePlayerIsRidingOnTopOf, hurtEntity);
			}
		}
	});

	const itemUseListener = world.beforeEvents.itemUse.subscribe((event) => {
		const { itemStack, source } = event;
		const player = source;

		if (itemStack.typeId == "mes_heroes:contract") {
			const nearbyMerc = player.dimension.getEntities({
				location: player.location,
				maxDistance: 5,
			});
			for (let i = 0; i < nearbyMerc.length; i++) {
				const mob = nearbyMerc[i];
				if (
					mob.typeId != "mes_heroes:archer" &&
					mob.typeId != "mes_heroes:beastmaster" &&
					mob.typeId != "mes_heroes:cleric" &&
					mob.typeId != "mes_heroes:guardian" &&
					mob.typeId != "mes_heroes:rogue" &&
					mob.typeId != "mes_heroes:sellsword"
				) {
					nearbyMerc.splice(i);
				}
			}
			for (const merc of nearbyMerc) {
				if (isLookingAtEntity(player, merc)) return;
			}
			//We are now sure the player is sneaking and not looking at a merc

			contractUI_Families(player);
		}
		if (itemStack.typeId == "mes_heroes:guide_book") {
			guide_book(player);
		}
		const guardian = player.getComponent("riding")?.entityRidingOn;
		if (itemStack.typeId == "mes_heroes:shield_item" && guardian.typeId == "mes_heroes:guardian") {
			shieldAppear(guardian, player);
		}
	});

	const entityHealth = world.afterEvents.entityHealthChanged.subscribe((event) => {
		const entity = event?.entity;
		if (entity.typeId == "mes_heroes:sellsword" && event.oldValue < event.newValue) {
			if (entity.getTags().find((tag) => tag.startsWith("Fighting"))) {
				const healthComp = entity.getComponent("minecraft:health");
				healthComp.setCurrentValue(event.oldValue);
			}
		}
	});
}


system.runInterval(() => {
	const overworld = world.getDimension("overworld");
	for (const entity of overworld.getEntities({ type: "mes_heroes:placeholder_campsite" })) {
		if (!isOnAPlatform(entity.location, 3, entity.dimension) || areThereBlocksAbove(entity.location, 3, entity.dimension)) {
			smoothKill(entity);
			continue;
			}
		const campsiteTypes = [
			"mes_heroes:sellsword_campsite",
			"mes_heroes:guardian_campsite",
			"mes_heroes:rogue_campsite",
			"mes_heroes:archer_campsite",
			"mes_heroes:beastmaster_campsite",
			"mes_heroes:cleric_campsite",
		];
		const chosenCampsite = campsiteTypes[Math.floor(Math.random() * campsiteTypes.length)];
		const campsite = overworld.spawnEntity(chosenCampsite, entity.location);
		smoothKill(entity);
	}
}, 20 * 3);