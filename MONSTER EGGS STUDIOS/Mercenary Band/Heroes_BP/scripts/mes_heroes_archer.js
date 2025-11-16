import { speech } from "./mes_heroes_minions_texts";
import { follow } from "./mes_heroes_follow";
import { system, EquipmentSlot, ItemStack, Player, EntityComponentTypes, world } from "@minecraft/server";
import { shieldParticles } from "./mes_heroes_shield_particles";
import { norme, distance, hasLineOfSight, shootProjectile, saveCoordinates, getRelatedPlayer } from "./mes_heroes_utils";

let shootingCooldown = new Map();
let invCooldown = new Map();
const visionParticleCooldown = new Map();

export function archer(archer) {
	if (!archer) return;

	const relatedPlayer = getRelatedPlayer(archer);
	if (!relatedPlayer) return;

	saveCoordinates(archer);

	const nearbyPlayers = archer.dimension.getEntities({
		location: archer.location,
		maxDistance: 10,
		type: "minecraft:player",
	});
	speech(archer, nearbyPlayers[0]);

	const nearbyMobs = archer.dimension.getEntities({
		location: archer.location,
		maxDistance: 20,
		families: ["monster"],
	});

	let followMob;
	for (const mob of nearbyMobs) {
		const lastTimeVisionParticleCooldown = visionParticleCooldown.get(mob.id) || 0;

		if (Date.now() - lastTimeVisionParticleCooldown > 5000 && !hasLineOfSight(archer.dimension, archer.location, mob.location)) {
			mob.runCommand("particle mes_heroes:archer_vision ~ ~ ~");
			visionParticleCooldown.set(mob.id, Date.now());
		}

		if (!followMob || distance(archer.location, mob.location) < distance(archer.location, followMob.location)) {
			followMob = mob;
		}
		// for (const comp of mob.getComponents()) {
		// mob.runCommand(`say ${comp.typeId}`)
		// }
		const lastTime = shootingCooldown.get(archer.id) || 0;
		let cpt = 0;
		const armorComponent = mob.getComponent(EntityComponentTypes.Equippable);
		if (armorComponent) {
			const armorSlots = ["slot.armor.head", "slot.armor.chest", "slot.armor.legs", "slot.armor.feet"];
			for (const slot of armorSlots) {
				const item = armorComponent.getEquipment(slot);
				if (item) {
					cpt++;
				}
			}
		}
		//nearbyMobs.length>5 ? 500 : 1000
		// player.runCommand(`summon zombie ${(player.location.x - Math.sin(player.getRotation().y*Math.PI/180))} ~ ${(player.location.z +Math.cos(player.getRotation().y*Math.PI/180))}`)
		if (Date.now() - lastTime > (nearbyMobs.length > 5 ? 500 : 1000)) {
			if (!hasLineOfSight(archer.dimension, archer.location, mob.location)) continue;

			const arrow = shootProjectile(archer, mob, "mes_heroes:silent_arrow");

			if (archer.location.y - mob.location.y > 5 || nearbyMobs.length > 5) {
				arrow.runCommandAsync("event entity @s critical");
				archer.runCommand("playanimation @s animation.mes_heroes.archer.precision_shot");
			} else {
				archer.runCommand("playanimation @s animation.mes_heroes.archer.burst");
			}
			critical(arrow);

			// archer.runCommand(`say My Position: ${archer.location.x} ${archer.location.y} ${archer.location.z}`)
			// archer.runCommand(`say mob Position: ${mob.location.x} ${mob.location.y} ${mob.location.z}`)
			// archer.runCommand(`say Impulse vector: ${directionVector.x} ${directionVector.y} ${directionVector.z}`)

			shootingCooldown.set(archer.id, Date.now());
		}
	}
	if (
		nearbyMobs.filter((mob) => Math.abs(mob.location.y - archer.location.y) < 5 && distance(mob.location, archer.location) < 10).length == 0 &&
		archer.hasTag("follow")
	) {
		follow(archer, relatedPlayer);
	}
	for (const arrow of archer.dimension.getEntities({
		location: archer.location,
		maxDistance: 20,
		type: "mes_heroes:silent_arrow",
	})) {
		for (const nearbyArrowMob of arrow.dimension.getEntities({
			location: arrow.location,
			maxDistance: 2,
			families: ["monster"],
		})) {
			// arrow.runCommand("say test")
			if (arrow.hasTag("critical")) {
				const pos = arrow.location;

				shieldParticles(nearbyArrowMob, 5, false, 2000);
				// Particules "end_rod" en spirale
				// for (let i = 0; i < 360; i += 20) {
				//     const radians = i * (Math.PI / 180);
				//     const x = Math.cos(radians) * 0.5;
				//     const z = Math.sin(radians) * 0.5;
				//     const y = i / 360; // petit effet montant

				//     arrow.dimension.spawnParticle("minecraft:end_rod", {
				//         x: pos.x + x,
				//         y: pos.y + y,
				//         z: pos.z + z
				//     });
				// }

				// // Petite explosion en "soul" au centre
				// arrow.dimension.spawnParticle("minecraft:soul_fire_flame", pos);
				// arrow.dimension.spawnParticle("minecraft:large_smoke", pos);

				// // Flash instantané sur le mob
				// nearbyArrowMob.dimension.spawnParticle("minecraft:flash", nearbyArrowMob.location);
			}
			// const dist = distance(arrow.location, nearbyArrowMob.location);
			// arrow.runCommand(`say distance: ${dist}`);
			if (distance(arrow.location, nearbyArrowMob.location) < 1) {
				nearbyArrowMob.applyDamage(4);
				arrow.kill();
			}
		}
	}
	if (followMob) {
		// archer.runCommand(`say ${followMob.typeId}`)
		// archer.runCommand("say t")
		follow(archer, followMob, 1 / 3, 14, 20);
	}

	//Each 5s, gets 10% of chance of getting invisibility
	const lastTime = invCooldown.get(archer.id) || 0;
	if (Date.now() - lastTime > 5000) {
		if (Math.round(Math.random() * 100) < 10) {
			archer.runCommand("playsound random.drink @a[r=9]");
			archer.runCommand("playanimation @s animation.mes_heroes.archer.defend");
			system.runTimeout(() => {
				archer.runCommand("particle mes_heroes:splash_potion ~ ~1.1 ~");
				archer.runCommand("effect @s invisibility 10 1");
			}, 12);
		}
		invCooldown.set(archer.id, Date.now());
	}
}

function critical(arrow) {
	//Fires hard arrow:
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_chestplate}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_leggings}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_boots}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_leggings}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_boots}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_boots}] run event entity @s critical`
	);

	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_chestplate}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_leggings}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_boots}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_leggings}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_boots}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_boots}] run event entity @s critical`
	);

	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_chestplate}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run event entity @s critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run event entity @s critical`
	);

	//Add tag:
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_chestplate}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_leggings}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_leggings}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=leather_boots}] run tag @s add critical`
	);

	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_chestplate}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_leggings}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_leggings}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=chainmail_boots}] run tag @s add critical`
	);

	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_chestplate}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_helmet}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_chestplate}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run tag @s add critical`
	);
	arrow.runCommand(
		`/execute if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_leggings}] if entity @e[type=!mes_heroes:archer,r=20,hasitem={item=iron_boots}] run event entity @s critical`
	);
}
