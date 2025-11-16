import { PlatformType, world } from "@minecraft/server";
import { follow } from "./mes_heroes_follow";
import { system } from "@minecraft/server";
import { shieldParticles } from "./mes_heroes_shield_particles";
import { speech } from "./mes_heroes_minions_texts";
import {
	randint,
	getTopSolidBlockY,
	norme,
	shootProjectile,
	hasLineOfSight,
	saveCoordinates,
	getRelatedPlayer,
} from "./mes_heroes_utils";

let invCooldown = new Map();
let critCooldown = new Map();
let shootCooldown = new Map();

export function rogue(rogue) {
	const relatedPlayer = getRelatedPlayer(rogue);
	if (!relatedPlayer) return;

	saveCoordinates(rogue);
	const nearbyMobs = rogue.dimension.getEntities({
		location: rogue.location,
		maxDistance: 10,
		families: ["monster"],
	});

	//Critical Backstab:
	const critLastTime = critCooldown.get(rogue.id) || 0;
	if (Date.now() - critLastTime > 2000) {
		if (Math.random() < 0.6) {
			if (!nearbyMobs[0]) return;
			const rotationVect = nearbyMobs[0]?.getViewDirection();
			const xpos = nearbyMobs[0]?.location.x - 2 * rotationVect.x;
			const zpos = nearbyMobs[0]?.location.z - 2 * rotationVect.z;
			let ypos = getTopSolidBlockY(
				rogue.dimension,
				xpos,
				zpos,
				undefined,
				rogue.location.y
			);
			if (!ypos) return
			if (ypos - nearbyMobs[0].location.y > 4) ypos = nearbyMobs[0].location.y;
			rogue.addEffect("minecraft:invisibility", 5);
			rogue.teleport({
				x: xpos,
				y: ypos,
				z: zpos,
			});
			system.runTimeout(() => {
				nearbyMobs[0].addTag("rogueCriticalDamage");
				nearbyMobs[0].applyDamage(8);
				system.runTimeout(() => {
					nearbyMobs[0].removeTag("rogueCriticalDamage");
				}, 10);
				rogue.runCommand("playanimation @s animation.mes_heroes.rogue.backstab")
				for (let i = 0; i < 10; i++) {
					nearbyMobs[0].dimension.spawnParticle(
						"minecraft:critical_hit_emitter",
						nearbyMobs[0].location
					);
				}
			}, 5);
		}
		critCooldown.set(rogue.id, Date.now());
	}

	//random Dagger shooting:
	const shootLast = shootCooldown.get(rogue.id) || Date.now() - 3000;
	if (Date.now() - shootLast > 2000 && nearbyMobs.length != 0) {
		for (const mob of nearbyMobs) {
			if (!hasLineOfSight(rogue.dimension, rogue.location, mob.location))
				continue;
			rogue.runCommand("playanimation @s animation.mes_heroes.rogue.throw_knife")
			shootProjectile(rogue, mob, "mes_heroes:dagger");
		}

		shootCooldown.set(rogue.id, Date.now());
	}

	//random TP and inv
	let lastTimeInv = invCooldown.get(rogue.id);
	if (!lastTimeInv) {
		invCooldown.set(rogue.id, Date.now() - 1000)
		lastTimeInv = Date.now() - 1000
	}
	if (Date.now() - lastTimeInv > 10000) {

		if (Math.random() <= 0.4 && nearbyMobs.length == 0) {
			rogue.runCommand("playanimation @s animation.mes_heroes.rogue.vanish")
			system.runTimeout(() => {
				rogue.addEffect("invisibility", 20 * 2);
				const xpos = rogue.location.x + randint(-16, 16);
				const zpos = rogue.location.z + randint(-16, 16);
				const ypos = getTopSolidBlockY(
					rogue.dimension,
					xpos,
					zpos,
					undefined,
					rogue.location.y
				);
				if (!ypos) return;
				rogue.teleport({
					x: xpos,
					y: ypos,
					z: zpos,
				});
			}, 23);



		}
		invCooldown.set(rogue.id, Date.now());
	}

	//TP Player:
	{
		if (rogue.hasTag("follow")) {
			follow(rogue, relatedPlayer, undefined, 10, 20, 40);
		}
		speech(rogue, relatedPlayer);

		const playerHealthComp = relatedPlayer.getComponent("minecraft:health");
		const hasTagTP1 = rogue.hasTag("TP1");
		const hasTagTP2 = rogue.hasTag("TP2");

		if (playerHealthComp.currentValue <= 5 && !hasTagTP2) {
			const pos = relatedPlayer.location;
			if (!hasTagTP1) {
				const x = pos.x + randint(-4, 4);
				const z = pos.z + randint(-4, 4);
				const y = getTopSolidBlockY(
					rogue.dimension,
					x,
					z,
					undefined,
					relatedPlayer.location.y
				);
				if (!y) return;
				rogue.addTag("TP1");
				smokeScreen(rogue);
				rogue.runCommand("playanimation @s animation.mes_heroes.rogue.smokebomb")
				rogue.teleport({
					x: x,
					y: y,
					z: z,
				});
				system.runTimeout(() => {
					rogue?.removeTag("TP1");
				}, 20 * 20);
			}
			const xSign = Math.random() > 0.5 ? 1 : -1;
			const zSign = Math.random() > 0.5 ? 1 : -1;

			let xpos = pos.x + xSign * randint(20, 50);
			let zpos = pos.z + zSign * randint(20, 50);
			const ypos = getTopSolidBlockY(
				rogue.dimension,
				xpos,
				zpos,
				undefined,
				relatedPlayer.location.y
			);
			if (!ypos || Math.abs(pos.y - ypos) > 40) return;
			rogue.addTag("TP2");
			shieldParticles(relatedPlayer, 5, true, 1);
			system.runTimeout(() => {
				const newPos = {
					x: xpos,
					y: ypos,
					z: zpos,
				};
				rogue.teleport(newPos);
				relatedPlayer.teleport(newPos);
			}, 20 * 1);
			system.runTimeout(() => {
				rogue?.removeTag("TP2");
			}, 20 * 20);
		}
	}
}

export function clearRogueTags(rogue) {
	rogue.removeTag("TP1")
	rogue.removeTag("TP2")
}

function smokeScreen(caster, radius = 7, durationTicks = 100) {
	const dim = caster.dimension;
	const origin = caster.location;

	// Crée un nuage de particules (cosmétique)

	for (let i = 0; i < 50; i++) {
		const offsetX = (Math.random() - 0.5) * radius * 2;
		const offsetZ = (Math.random() - 0.5) * radius * 2;
		const pos = {
			x: origin.x + offsetX,
			y: origin.y + 1,
			z: origin.z + offsetZ,
		};
		try {
			dim.spawnParticle("minecraft:campfire_smoke_particle", pos); // ou "minecraft:smoke"
		} catch { }
	}

	// Applique les effets aux ennemis proches
	for (const entity of dim.getEntities({
		location: origin,
		maxDistance: radius,
		families: ["monster"],
	})) {
		entity.addEffect("blindness", durationTicks, {
			showParticles: false,
		});
	}
}
