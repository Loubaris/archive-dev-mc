export function pegasus_horse(entity) {
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	const speed =
		(entity.getVelocity().x ** 2 + entity.getVelocity().z ** 2) ** (1 / 2);

	if (rider && speed > 0.3) {
		// if (rider.isJumping) {
			// entity.applyImpulse({ x: 0, y: 0.15, z: 0 }); // Push the horse upwards
			// const rotation = entity.getRotation();
			// const yaw = (rotation.y * Math.PI) / 180;
			// const speed = 0.1; // Adjust speed value as needed
			// const forwardImpulse = {
			//     x: -Math.sin(yaw) * speed, // Negative because Minecraft's yaw is inverted
			//     y: 0,
			//     z: Math.cos(yaw) * speed
			// };

			// // Apply the forward movement
			// entity.applyImpulse(forwardImpulse);

			entity.runCommand(
				"execute as @p[r=1,rx=-35,rxm=-90] at @s run execute as @e[r=2,type=mes_mrhrs:pegasus_horse,c=1] at @s run effect @s levitation 1 10 true "
			);
			entity.runCommand(
				"execute as @p[r=1,rx=-35,rxm=-90] at @s unless block ~ ~-1 ~ air run execute as @e[r=2,type=mes_mrhrs:pegasus_horse,c=1] at @s run particle mes_mrhrs:pegasus ~ ~ ~"
			);
			entity.runCommand(
				"execute as @p[r=1,rx=5,rxm=-10] at @s run execute as @e[r=2,type=mes_mrhrs:pegasus_horse,c=1] at @s run effect @s levitation 1 4 true "
			);
			entity.runCommand(
				"execute as @p[r=1,rx=-10,rxm=-35] at @s run execute as @e[r=2,type=mes_mrhrs:pegasus_horse,c=1] at @s run effect @s levitation 1 6 true "
			);
			entity.runCommand(
				"execute as @p[r=1,rx=90,rxm=5] at @s run execute as @e[r=2,type=mes_mrhrs:pegasus_horse,c=1] at @s run effect @s slow_falling 3 0 true "
			);
			entity.runCommand("tag @p[r=1.5] add mes_mrhrs_pgs");
		// }
	}
}
