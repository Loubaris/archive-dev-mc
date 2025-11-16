import { system } from "@minecraft/server";
const PLACED_BLOCKS = new Map();
let hasInterval = false;

export function emberman_horse(entity, player) {
	const dimension = entity.dimension;
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	if (rider) {
		entity.runCommand("effect @a[r=1.5] fire_resistance 1 255 true");
		for (let nearbyEntity of player.dimension.getEntities({
			location: entity.location,
			maxDistance: 3,
			excludeTypes: ["mes_mrhrs:emberman_horse", "mes_mrhrs:hippocampus_horse", "minecraft:player"],
			families: ["mob"],
		})) {
			nearbyEntity.setOnFire(5, true);
		}
		const { x, y, z } = entity.location;

		if ((entity.getVelocity().x ** 2 + entity.getVelocity().z ** 2) ** (1 / 2) > 0.1) {
			const random = Math.random();
			if (random > 0.9) {
				entity.runCommand(`setblock ${Math.floor(x)} ${Math.floor(y)} ${Math.floor(z)} fire`);
			}
		}

		let area = [];
		for (let dx = -2; dx <= 2; dx++) {
			for (let dz = -2; dz <= 2; dz++) {
				const block = dimension.getBlock({ x: Math.ceil(x) + dx, y: Math.ceil(y) - 1, z: Math.ceil(z) + dz });

				if (block && block.typeId === "minecraft:lava") {
					block.setType("minecraft:red_nether_brick");
					area.push(block);
				}
			}
		}
		if (area.length > 0) {
			PLACED_BLOCKS.set(Date.now(), area);
		}
	}
	if (!hasInterval) {
		hasInterval = true;
		system.runInterval(() => {
			let currentTime = Date.now();
			PLACED_BLOCKS.forEach((area, timestamp) => {
				if (currentTime - timestamp >= 2000) {
					entity.playAnimation("animation.mes_mrhrs.inferno_kick");
					for (let block of area) {
						if (block) {
							block.setType("minecraft:lava"); // Remet la lave
						}
					}
					PLACED_BLOCKS.delete(timestamp); // Supprime l'entrée une fois traitée
				}
			});
		}, 20); // Vérifie toutes les 20 ticks (1s)
	}

	if (entity.isOnGround) {
		entity.runCommand("particle mes_mrhrs:emberman_ambiant ^ ^0.7 ^-1");
	} else {
		entity.runCommand("particle mes_mrhrs:inferno ~ ~-0.6 ~ ");
	}
}
