let arcaneCooldown = new Map();
import { punchDetect } from "./punch_detect";
import { horseItem } from "./mes_mrhrs_horse_item";
let canShoot = true;
export function arcane_horse(entity) {
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	horseItem(entity, rider);
	if (rider) {
		if (!entity.isOnGround && canShoot) {
			//Projectile shoots:
			canShoot = false;
			let location = entity.getHeadLocation();
			const velocity = entity.getViewDirection();
			location = {
				x: location.x + velocity.x * 1.5,
				y: location.y + velocity.y * 1.5,
				z: location.z + velocity.z * 1.5,
			};
			const projectile = entity.dimension.spawnEntity("mes_mrhrs:arcane_shoot", location);
			projectile.setRotation(entity.getRotation());
			projectile.clearVelocity();
			projectile.applyImpulse({
				x: velocity.x * 2,
				y: velocity.y * 2,
				z: velocity.z * 2,
			});
		}
		if (entity.isOnGround) {
			canShoot = true;
		}

		//Energy shield:
		const inv = rider.getComponent("inventory").container;
		const heldItem = inv.getItem(rider.selectedSlotIndex);

		const currentTime = Date.now();
		const lastTime = arcaneCooldown.get(entity.id) || 0;

		const remainingTime = Math.max(-1, 30 - Math.floor((currentTime - lastTime) / 1000));
		if (remainingTime > 0) {
			rider.runCommand(`title @s actionbar §eCooldown: ${remainingTime}s`);
		}
		// punchDetect(rider).then((hasPunched) => {
		// });
		if (rider.hasTag("mes_mrhrs_claw")) {
			if (currentTime - lastTime > 30000) {
				rider.runCommand("particle minecraft:totem_particle ~ ~1 ~");
				rider.runCommand("playsound random.orb @s ~ ~ ~ 1 1.5");
				rider.runCommand("effect @s resistance 5 50 true");
				entity.runCommand("effect @s resistance 5 50 true");

				entity.playAnimation("animation.mes_mrhrs.shield");

				arcaneCooldown.set(entity.id, currentTime);
			}
			rider.removeTag("mes_mrhrs_claw");
		}
	}
}
