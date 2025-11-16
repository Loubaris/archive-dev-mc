import { punchDetect } from "./punch_detect";
import { horseItem } from "./mes_mrhrs_horse_item";

let shadowCooldown = new Map();
let shadowInvisibilityCooldown = new Map();

export function shadow_horse(entity) {
	// Old code:
	// if (!entity.isOnGround) {
	// 	entity.runCommand(
	// 		"title @p[r=1.5,tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=1}] actionbar §cOn timer!"
	// 	);
	// 	entity.runCommand("tag @p[r=1.5] add mes_mrhrs_shw");
	// }

	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	horseItem(entity, rider);
	if (rider) {

		//TP:
		const currentTime = Date.now();
		const lastTime = shadowCooldown.get(entity.id) || 0;
		const lastTimeInv = shadowInvisibilityCooldown.get(entity.id) || 0;

		const remainingTime = Math.max(
			-1,
			10 - Math.floor((currentTime - lastTime) / 1000)
		);
		if (remainingTime >= 0) {
			rider.runCommand(`title @s actionbar §eCooldown: ${remainingTime}s`);
		}

		// const yaw = (rotation.y * Math.PI) / 180;
		// const pitch = (rotation.x * Math.PI) / 180;
		// rider.runCommand(`say ${yaw}`);	


		// const dx = -Math.sin(yaw) * 10;
		// const dz = Math.cos(yaw) * 10;

		// const dy = -Math.sin(pitch) * 10;


		// rider.runCommand(`say ${newRotation}`);
		const inv = rider.getComponent("inventory").container;
		const heldItem = inv.getItem(rider.selectedSlotIndex);

		if (rider.hasTag("mes_mrhrs_claw")) {
			if (currentTime - lastTime > 10000) {

				const rotation = rider.getRotation();
				const position = entity.location;
				const newRotation = newRotationY(rotation);
				const dx = Math.sin(newRotation) * 10;
				const dz = Math.cos(newRotation) * 10;
				// const dy = -Math.sin((rotation.x * Math.PI) / 180) * 10;

				const newPosition = {
					x: position.x + dx,
					y: position.y,
					z: position.z + dz
				};

				// entity.teleport(newPosition, {
				// 	dimension: entity.dimension,
				// 	facingLocation: newPosition
				// });
				entity.runCommand('playsound mob.breeze.idle_air @a[r=10]')
				entity.applyImpulse({ x: dx, y: 0, z: dz });
				shadowCooldown.set(entity.id, currentTime);
			}
			rider.removeTag("mes_mrhrs_claw");
		}

		//Invisibility:
		//Visible 5s, invisible 5s, so 50% of the time
		if (currentTime - lastTimeInv > 10000) {
			rider.runCommand("particle mes_mrhrs:splash_potion ~ ~ ~");
			rider.runCommand("effect @s invisibility 5 1 true");
			entity.runCommand("effect @s invisibility 5 1 true");
			shadowInvisibilityCooldown.set(entity.id, currentTime);
		}
	}
}

//converts to radians
function newRotationY(rotation) {
	if (rotation.y < 0) {
		return (-rotation.y) * (Math.PI / 180);
	}
	return (360 - rotation.y) * (Math.PI / 180);
}
