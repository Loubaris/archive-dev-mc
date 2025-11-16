import { punchDetect } from "./punch_detect";
import { horseItem } from "./mes_mrhrs_horse_item";
let lu_shuCooldown = new Map();

export function lushu_horse(entity) {
	//Run on water:
	const dimension = entity.dimension;
	const position = entity.location;
	const block = dimension.getBlock(position);
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	horseItem(entity, rider);
	if (block && rider && block.typeId === "minecraft:water") {
		block.setType("minecraft:frosted_ice");
	}

	//Energy burst:
	if (rider) {
		const inv = rider.getComponent("inventory").container;
		const heldItem = inv.getItem(rider.selectedSlotIndex);
		const currentTime = Date.now();
		const lastTime = lu_shuCooldown.get(entity.id) || 0;
		const remainingTime = Math.max(-1, 20 - Math.floor((currentTime - lastTime) / 1000));
		if (remainingTime > 0) {
			rider.runCommand(`title @s actionbar §eCooldown: ${remainingTime}s`);
		}
		if (rider.hasTag("mes_mrhrs_claw")) {
			rider.runCommand("particle mes_mrhrs:earth_shockwave ~ ~ ~");
			if (currentTime - lastTime > 20000) {
				for (let nearbyEntity of rider.dimension.getEntities({
					location: entity.location,
					maxDistance: 8,
				})) {
					if (!(nearbyEntity.id === rider.id || nearbyEntity.id === entity.id)) {
						nearbyEntity.runCommand("effect @s instant_damage 1 1 true");
					}
				}
				entity.applyImpulse({ x: 0, y: 1.6, z: 0 });
				rider.runCommand("effect @s resistance 2 50 true");
				rider.runCommand("effect @s fire_resistance 5 1 true");
				entity.runCommand("effect @s resistance 2 50 true");
				entity.runCommand("effect @s fire_resistance 5 1 true");
				entity.runCommand("/particle minecraft:huge_explosion_emitter");
				entity.runCommand("/playsound cauldron.explode @a[r=10]");
				entity.playAnimation("animation.mes_mrhrs.heal");
				lu_shuCooldown.set(entity.id, currentTime);
			}
			rider.removeTag("mes_mrhrs_claw");
		}
	} else {
		const location = entity.location;
		const dimension = entity.dimension;
		const block = dimension.getBlock({
			x: location.x,
			y: location.y + 1,
			z: location.z,
		});
		if (block && block.typeId === "minecraft:water") {
			entity.runCommand("effect @s levitation 1 10");
		}
		if (block && block.typeId != "minecraft:water") {
			entity.removeEffect("minecraft:levitation");
		}
	}
}
