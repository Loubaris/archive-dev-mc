let damageCooldown = new Map();
const roarCooldown = new Map();
const bulkCooldown = new Map();

const bulkFlag = new Map();
const roarflag = new Map();
let finalBulk = new Map();
const attackCooldown = new Map();
const bulkParticleCooldown = new Map();
const shieldAttackCooldown = new Map();

import { world, EntityComponentTypes, system } from "@minecraft/server";
// import { MessageFormResponse, ActionFormData, ActionFormResponse, MessageFormData } from "@minecraft/server-ui";
import { shieldParticles } from "./mes_heroes_shield_particles";
import { speech } from "./mes_heroes_minions_texts";
import { follow } from "./mes_heroes_follow";
import { getRelatedPlayer, guardianItem, saveCoordinates } from "./mes_heroes_utils";

export function guardian(guardian) {
	// const rider = guardian.getComponent("rideable")?.getRiders()?.[0];
	// guardianItem(guardian, rider)
	const hasTag = guardian.hasTag("has_stroll");

	const relatedPlayer = getRelatedPlayer(guardian);
	if (!relatedPlayer) return;
	if (guardian.hasTag("follow")) {
		follow(guardian, relatedPlayer, 1 / 5, 7, 15, 50);
	}
	saveCoordinates(guardian);
	// guardian.triggerEvent("rideable");

	// if (!rider) {
	//     if (guardian.hasTag("follow")) {
	//         follow(guardian, relatedPlayer, 1 / 5, 7, 15, 50)
	//     } else {
	//         const hasTag = guardian.hasTag("has_stroll")
	//         if (!hasTag) {
	//             guardian.runCommand("event entity @s enable_stroll")
	//             guardian.addTag("has_stroll")
	//         }
	//     }
	//     return
	// }
	// else if (rider != relatedPlayer) return

	// guardian.removeTag("has_stroll");
	// guardian.triggerEvent("disable_stroll");

	// rider.runCommand("effect @s resistance 3 255 true");
	// guardian.runCommand("effect @s resistance 3 255 true");
	speech(guardian, relatedPlayer);

	const nearbyMobs = relatedPlayer.dimension.getEntities({
		location: relatedPlayer.location,
		maxDistance: 20,
		families: ["monster"],
	});
	if (guardian.getVelocity().y > 0.4) {
		const lastTimeParticle = attackCooldown.get(guardian.id) || 0;
		if (Date.now() - lastTimeParticle > 1000) {
			relatedPlayer.runCommand("playsound armor.equip_iron @s");
			guardian.runCommand("particle mes_heroes:guardian_jump ~ ~ ~");
			guardian.runCommand("playanimation @s animation.mes_heroes.guardian.bulkward_stance");
			attackCooldown.set(guardian.id, Date.now());
		}

		for (const mob of nearbyMobs) {
			mob.applyDamage(6);
			mob.addTag("jumpGuardianDamage");

			//no need to replace this timeout
			system.runTimeout(() => {
				mob.removeTag("jumpGuardianDamage");
			}, 10);
		}
	}

	const lastTimeBulk = bulkCooldown.get(guardian.id) || 0;
	if (Date.now() - lastTimeBulk > 5000 && nearbyMobs.length != 0) {
		if (Math.random() * 100 <= 20 || nearbyMobs.length > 8) {
			// bulkFlag.set(rider.id, Date.now());
			bulwark(guardian, guardian, relatedPlayer);

			// guardian.runCommand("/particle mes_heroes:bulk ~ ~ ~");
			// Ajouter sound effect
		}
		bulkCooldown.set(guardian.id, Date.now());
	}

	const lastTimeShield = shieldAttackCooldown.get(guardian.id) || 0;
	if (Date.now() - lastTimeShield > 5000 && nearbyMobs.length != 0) {
		if (Math.random() * 100 <= 40) {
			shieldAppear(guardian, relatedPlayer);
		}
		shieldAttackCooldown.set(guardian.id, Date.now());
	}

	const lastTimeRoar = roarCooldown.get(guardian.id) || 0;
	if (Date.now() - lastTimeRoar > 5000) {
		if ((Math.random() * 100 <= 40 || nearbyMobs.length > 8) && !roar(true, relatedPlayer)) {
			roarflag.set(relatedPlayer.id, Date.now());
			roar(null, relatedPlayer, guardian);
			guardian.runCommand("playanimation @s animation.mes_heroes.guardian.roar");
			guardian.runCommand("effect @s regeneration 1 2");
			//ajouter sound effect
		}
		roarCooldown.set(guardian.id, Date.now());
	}
}

export function deathListenerGuardian(event, rider) {
	// bulkFlag.set(rider.id, Date.now());
	bulwark(undefined, rider, rider);
}

export function damageListenerGuardian(event, guardian, rider) {
	const guardianHealth = guardian.getComponent(EntityComponentTypes.Health);
	if (!guardianHealth) return;

	let protectionAngle = Math.PI / 2;
	let scaledShield = false;
	const guardianStillAlive = guardian.hasComponent("minecraft:health");
	const hurtEntity = event.hurtEntity;
	if (!guardianStillAlive || !guardian?.isValid()) {
		return;
	}

	const damageSource = event.damageSource;
	const attacker = damageSource.damagingEntity;

	if (!attacker || !attacker.isValid() || !attacker.location) return;

	//Rotation y vector
	const x1 = guardian.getViewDirection().x;
	const z1 = guardian.getViewDirection().z;

	//Attacker--->Guardian vector
	const x2 = guardian.location.x - attacker.location.x;
	const z2 = guardian.location.z - attacker.location.z;

	const cosAngle = (x1 * x2 + z1 * z2) / Math.sqrt((x1 ** 2 + z1 ** 2) * (x2 ** 2 + z2 ** 2));
	const Angle = Math.acos(cosAngle);
	if (guardianHealth.currentValue <= 2 && !finalBulk.get(guardian.id)) {
		// Active le bouclier
		scaledShield = true;
		// bulkFlag.set(rider.id, Date.now());
		bulwark(guardian, guardian, rider);

		if (roar(true, rider)) return;
		roarflag.set(rider.id, Date.now());
		roar(null, rider, guardian);

		// Marque comme activé pour ne pas le refaire
		finalBulk.set(guardian.id, true);
	}
	protectionAngle = scaledShield ? 0 : Math.PI / 2;

	if (hurtEntity && hurtEntity === rider) {
		shieldParticles(rider, null, false, 10);
		guardianHealth.setCurrentValue(Math.max(0, guardianHealth.currentValue - 1));
	}
	//Angle<(Math.PI)/2 so it gets hit from behind, <0 so it can't get hit
	else if (hurtEntity && hurtEntity == guardian && Angle < protectionAngle) {
		guardianHealth.setCurrentValue(Math.max(0, guardianHealth.currentValue - 1));
	}
	damageCooldown.set(guardian.id, Date.now());
}

export function shieldAppear(guardian, player) {
	// const lastTimeShield = shieldAttackCooldown.get(guardian.id) || 0;
	// if (Date.now() - lastTimeShield < 10000) return;

	system.run(() => {
		guardian.runCommand("playanimation @s animation.mes_heroes.guardian.shield");
	});
	system.runTimeout(() => {
		guardian.runCommand("playanimation @s animation.mes_heroes.guardian.shieldwall");
		player.runCommand("summon mes_heroes:shield ~ ~100 ~");
		player.runCommand("effect @e[type=mes_heroes:shield] invisibility 100 255 true");
		player.runCommand("playsound mob.breeze.land @a[r=10]");
		system.runTimeout(() => {
			player.runCommand("playsound mob.breeze.jump @a[r=10]");
			player.runCommand("tp @e[type=mes_heroes:shield] ^ ^1 ^2.3 facing @e[type=mes_heroes:guardian,c=1]");
			player.runCommand("execute as @e[type=mes_heroes:shield] at @s run effect @e[family=mob,r=6] instant_damage 1 1 true");
			player.runCommand("effect @e[type=mes_heroes:shield] clear");
			player.runCommand("playanimation @e[type=mes_heroes:shield] animation.mes_heroes.shield.spawn f 100");

			system.runTimeout(() => {
				player.runCommand("execute as @e[type=mes_heroes:shield] at @s run particle mes_heroes:shield_explode");
				player.runCommand("execute as @e[type=mes_heroes:shield] at @s run effect @e[family=mob,r=6] instant_damage 1 1 true");
				player.runCommand("execute as @e[type=mes_heroes:shield] at @s run playsound cauldron.explode @a[r=12]");
				player.runCommand("execute as @e[type=mes_heroes:shield] at @s run tp @s ~ ~-100 ~");
				system.runTimeout(() => {
					player.runCommand("execute as @e[type=mes_heroes:shield] at @s run kill @s");
				}, 5);
			}, 20 * 4);
		}, 20 * 0.2);
	}, 20 * 1);

	shieldAttackCooldown.set(guardian.id, Date.now());
}

function bulwark(guardian, fighter = guardian, rider) {
	const lastTimeBulk = bulkFlag.get(rider.id) || 0;
	if (Date.now() - lastTimeBulk < 15000 || !guardian || !guardian.isValid()) return;
	guardian.runCommand("playsound mob.breeze.idle_ground @a[r=25]");
	guardian.runCommand("playanimation @s animation.mes_heroes.guardian.irons_resolve");
	bulkFlag.set(rider.id, Date.now());
	const intervalId = system.runInterval(() => {
		try {
			if (!fighter || !fighter.isValid() || !fighter.dimension) return;
			let mobs = fighter.dimension.getEntities({
				location: fighter.location,
				maxDistance: 5,
				families: ["monster"],
			});
			const remainingTime = Math.round((10000 - (Date.now() - bulkFlag.get(rider.id))) * 0.001);
			rider.runCommand(`title @s actionbar §eBulwark Stance: ${remainingTime}s`);

			const lastTimeBulk = bulkParticleCooldown.get(rider.id) || 0;
			if (Date.now() - lastTimeBulk > 1000) {
				guardian.runCommand("particle mes_heroes:bulkward ~ ~ ~");
				bulkParticleCooldown.set(rider.id, Date.now());
			}
			for (let entity of mobs) {
				if (entity != rider && entity != fighter) {
					const x1 = entity.location.x;
					const y1 = entity.location.y;
					const z1 = entity.location.z;

					const x2 = fighter.location.x;
					const z2 = fighter.location.z;

					const vectCoef = 5 - Math.sqrt((x2 - x1) ** 2 + (z2 - z1) ** 2);
					entity.teleport(
						{
							x: x1 + (x1 - x2) * vectCoef,
							y: y1 + 1,
							z: z1 + (z1 - z2) * vectCoef,
						},
						{ facingLocation: fighter.location }
					);
				}
			}

			if (remainingTime <= 0) {
				system.clearRun(intervalId);
			}
		} catch (e) {
			// Entity might be invalid or removed, safely ignore
		}
	}, 5);
}

function roar(isActive, rider, guardian) {
	const time = roarflag.get(rider.id);
	const remainingTime = 10 - Math.max(0, Math.round((Date.now() - time) * 0.001));
	if (isActive) {
		return remainingTime > 0;
	}
	if (time && remainingTime >= 0) {
		// rider.runCommand(`title @s actionbar §eGuardian's Roar: ${remainingTime}s`);

		// Guardian Angry particles
		for (let i = 0; i < 20; i++) {
			const angle = (Math.PI * 2 * i) / 20;
			const x = guardian.location.x + Math.cos(angle);
			const y = guardian.location.y + 3;
			const z = guardian.location.z + Math.sin(angle);
			rider?.dimension?.spawnParticle("minecraft:villager_angry", { x, y, z });
		}

		guardian?.runCommand(
			`playsound minecraft:entity.ender_dragon.growl @a[r=20] ${guardian.location.x} ${guardian.location.y} ${guardian.location.z} 1 1`
		);

		// shieldParticles(rider, 5, true, 3000)
		for (let entity of guardian.dimension.getEntities({
			location: guardian.location,
			maxDistance: 20,
			families: ["monster"],
		})) {
			if (!entity) continue;
			entity.applyDamage(5);
			entity.addTag("guardianRoarDamage");
			system.runTimeout(() => {
				entity.removeTag("guardianRoarDamage");
			}, 10);

			try {
				const start = guardian.location;
				const steps = 5;
				// guardian.runCommand(`say ${entity.location.x} , ${entity.location.z}`)

				for (let i = 0; i <= steps; i++) {
					const t = i / steps;
					const x = start.x + (entity.location.x - start.x) * t;
					const y = start.y + (entity.location.y - start.y) * t;
					const z = start.z + (entity.location.z - start.z) * t;
					// rider.dimension.spawnParticle("minecraft:redstone_wire_dust_particle", { x, y, z });
					guardian.runCommand(`summon evocation_fang ${x} ${y} ${z}`);
					// rider.runCommand(`particle minecraft:reddust_particle`)
				}
			} catch (e) {
				// guardian.runCommand(`say ${entity.typeId}`)
			}
		}
	}
}
