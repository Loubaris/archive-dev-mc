import { punchDetect } from "./punch_detect";
import { horseItem } from "./mes_mrhrs_horse_item";
let inv_Cooldown = new Map();
export function ghostmane_horse(entity) {
	// if (!entity.isOnGround) {
	//     entity.runCommand(
	//         "title @p[r=1.5,tag=mes_mrhrs_gst,scores={mes_mrhrs_gst=1}] actionbar §cOn timer!"
	//     );
	//     entity.runCommand("tag @p[r=1.5] add mes_mrhrs_gst");
	//     entity.runCommand(
	//         "effect @p[r=1.5,tag=mes_mrhrs_gst,scores={mes_mrhrs_gst=0}] invisibility 10 255 true"
	//     );
	//     entity.runCommand("effect @p[r=1.5] night_vision 3 255 true");
	//     entity.runCommand(
	//         "execute as @p[r=1.5,tag=mes_mrhrs_gst,scores={mes_mrhrs_gst=0}] at @s run effect @e[type=mes_mrhrs:ghostmane_horse,r=1.5] invisibility 10 255 true"
	//     );
	// }
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	horseItem(entity, rider);
	if (rider) {
		const inv = rider.getComponent("inventory").container;
		const heldItem = inv.getItem(rider.selectedSlotIndex);
		rider.runCommand("effect @s night_vision 15 1 true");
		const currentTime = Date.now();
		const lastTime = inv_Cooldown.get(entity.id) || 0;
		const remainingTime = Math.max(
			-1,
			30 - Math.floor((currentTime - lastTime) / 1000)
		);
		if (remainingTime > 0) {
			rider.runCommand(`title @s actionbar §eCooldown: ${remainingTime}s`);
		}
		if (rider.hasTag("mes_mrhrs_claw")) {
			if (currentTime - lastTime > 30000) {
				rider.runCommand("particle mes_mrhrs:ghostmane ~ ~ ~");
				rider.runCommand("effect @s invisibility 10 255 true");
				entity.runCommand("effect @s invisibility 10 255 true");
				inv_Cooldown.set(entity.id, currentTime);
			}
			rider.removeTag("mes_mrhrs_claw");
		}
	}
}
