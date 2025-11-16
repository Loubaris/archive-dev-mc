import { world, system } from "@minecraft/server";
import { follow } from "./mes_heroes_follow";
import { speech } from "./mes_heroes_minions_texts";
import { getRelatedPlayer, hasLineOfSight, saveCoordinates } from "./mes_heroes_utils";
import { guardian } from "./mes_heroes_guardian";

const levitationCooldown = new Map();
const sacredSmithCooldown = new Map();

export function cleric(cleric) {
	const relatedPlayer = getRelatedPlayer(cleric);
	if (!relatedPlayer) return;

	saveCoordinates(cleric);

	if (cleric.hasTag("follow")) {
		follow(cleric, relatedPlayer);
	}

	speech(cleric, relatedPlayer);
	levitationAttack(cleric);
	sacredSmith(cleric);
}

function levitationAttack(cleric) {
	const nearbyEntities = cleric.dimension.getEntities({
		families: ["monster"],
		maxDistance: 10,
		location: cleric.location,
	});

	const lastTImeAttack = levitationCooldown.get(cleric.id) || 0;

	if (Date.now() - lastTImeAttack < 5000 || nearbyEntities.length == 0) return;

	if (!(Math.random() < 0.6)) return levitationCooldown.set(cleric.id, Date.now());

	for (const enemy of nearbyEntities) {
		// if(!hasLineOfSight(enemy.dimension, cleric.location, enemy.location)) continue
		enemy.runCommand("effect @s fatal_poison 3 255 true");
		enemy.runCommand("effect @s levitation 3 2 true");
		cleric.runCommand("playanimation @s animation.mes_heroes.cleric.blessed_aura");
		cleric.runCommand("particle mes_heroes:cleric");
	}
	levitationCooldown.set(cleric.id, Date.now());
}

function sacredSmith(cleric) {
	const nearbyEntities = cleric.dimension.getEntities({
		location: cleric.location,
		maxDistance: 15,
		families: ["monster"],
	});
	const lastTimeSacred = sacredSmithCooldown.get(cleric.id) || 0;

	if (nearbyEntities.length < 5 || Date.now() - lastTimeSacred < 10000) return;

	cleric.runCommand("effect @s fire_resistance 5");
	for (const mob of nearbyEntities) {
		const location = mob.location;
		mob.dimension.spawnEntity("minecraft:lightning_bolt", location);

		system.runTimeout(() => {
			for (let x = location.x - 2; x < location.x + 2; x++) {
				for (let y = location.y - 2; y < location.y + 2; y++) {
					for (let z = location.z - 2; z < location.z + 2; z++) {
						const block = cleric.dimension.getBlock({ x, y, z });
						if (block.typeId == "minecraft:fire") {
							block.setType("minecraft:barrier");
							block.setType("minecraft:air");
						}
					}
				}
			}
		}, 20);
	}
	if (Math.random() > 0.5) {
		cleric.runCommand("playanimation @s animation.mes_heroes.cleric.sacred_smith");
	} else {
		cleric.runCommand("playanimation @s animation.mes_heroes.cleric.scan");
	}
	sacredSmithCooldown.set(cleric.id, Date.now());
}
