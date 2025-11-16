let isFlying = false;
export function hippogriff_horse(entity) {
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	const dimension = entity.dimension;
	const nearbyEntities = dimension.getEntities({
		location: entity.location,
		maxDistance: 7,
		excludeTypes: [entity.typeId],
	});
	if (rider) {
		const riderRotation = rider.getRotation().x;

		// If rider looks down too much & entity is airborne, trigger attack
		if (riderRotation > 60 && !entity.isOnGround) {
			console.log("t1");
			entity.applyImpulse({ x: 0, y: -0.5, z: 0 });
			entity.runCommand("execute as @s at @s run playsound mob.breeze.charge @a[r=6]");
			entity.runCommand("particle mes_mrhrs:hippogriff ~ ~-1 ~");
			entity.runCommand("playanimation @s animation.mes_mrhrs:hippogriff_attack f 1");

			nearbyEntities.forEach((nearbyEntity) => {
				if (nearbyEntity !== rider) {
					nearbyEntity.runCommand("damage @s 10");
				}
			});
		}

		// Remove the "mes_onground" tag if entity touches ground
		entity.runCommand("/execute as @s at @s unless block ~ ~-0.1 ~ air run tag @s remove mes_onground");

		// Apply levitation/slowing effects based on player rotation
		const speed = (entity.getVelocity().x ** 2 + entity.getVelocity().z ** 2) ** (1 / 2);
		// if (entity.isOnGround) {
		// 	isFlying = false;
		// }
		const { x, y, z } = entity.location;
		const block1 = entity.dimension.getBlock({ x: x, y: y - 1, z: z });
		const block2 = entity.dimension.getBlock({ x: x, y: y - 2, z: z });
		const block3 = entity.dimension.getBlock({ x: x, y: y - 3, z: z });

		isFlying = block1.typeId == "minecraft:air" && block2.typeId == "minecraft:air" && block3.typeId == "minecraft:air";
		// if ((rider && speed > 0.5) || isFlying) {
		if (isFlying) {
			entity.playAnimation("animation.mes_mrhrs.hippogriff_fly");
			// isFlying = true;
			entity.runCommand(
				"execute as @p[r=1,rx=-35,rxm=-90] at @s run execute as @e[r=2,type=mes_mrhrs:hippogriff_horse,c=1] at @s run effect @s levitation 1 10 true "
			);
			entity.runCommand(
				"execute as @p[r=1,rx=5,rxm=-10] at @s run execute as @e[r=2,type=mes_mrhrs:hippogriff_horse,c=1] at @s run effect @s levitation 1 4 true "
			);
			entity.runCommand(
				"execute as @p[r=1,rx=-10,rxm=-35] at @s run execute as @e[r=2,type=mes_mrhrs:hippogriff_horse,c=1] at @s run effect @s levitation 1 6 true "
			);
			entity.runCommand(
				"execute as @p[r=1,rx=90,rxm=5] at @s run execute as @e[r=2,type=mes_mrhrs:hippogriff_horse,c=1] at @s run effect @s slow_falling 3 0 true "
			);
			entity.runCommand("tag @p[r=1.5] add mes_mrhrs_pgs");
		}

		// Ensure player gets tagged properly
		rider.runCommand("tag @s add mes_mrhrs_pgs");
	}
}
