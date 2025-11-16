let animCooldown = new Map();

export function hippocampus_horse(entity) {
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	if (rider) {
		entity.runCommand(
			"execute as @p[r=1,rx=-35,rxm=-90] at @s if block ~ ~ ~ water run execute as @e[r=2,type=mes_mrhrs:hippocampus_horse] at @s run effect @s levitation 1 2 true "
		);
		entity.runCommand(
			"execute as @p[r=1,rx=5,rxm=-10] at @s if block ~ ~ ~ water run execute as @e[r=2,type=mes_mrhrs:hippocampus_horse] at @s run effect @s levitation 1 2 true "
		);
		entity.runCommand(
			"execute as @p[r=1,rx=-10,rxm=-35] at @s if block ~ ~ ~ water run execute as @e[r=2,type=mes_mrhrs:hippocampus_horse] at @s run effect @s levitation 1 2 true "
		);
		entity.runCommand(
			"execute as @p[r=1,rx=-10,rxm=-35] at @s unless block ~ ~ ~ water run execute as @e[r=2,type=mes_mrhrs:hippocampus_horse] at @s run effect @s levitation 0"
		);
		entity.runCommand("effect @p[r=1.5] water_breathing 2 255 true");
	} else {
		entity.runCommand("effect @p[r=10] water_breathing 2 255 true");
		const lastTime = animCooldown.get(entity.id) || 0;
		if (Date.now() - lastTime > 30000) {
			entity.playAnimation("animation.mes_mrhrs.tide_blessing");
			animCooldown.set(Date.now(), entity.id);
		}
		const location = entity.location;
		const block = entity.dimension.getBlock({ x: location.x, y: location.y + 1, z: location.z });
		if (!block) return;
		if (block.typeId === "minecraft:water") {
			entity.runCommand("effect @s levitation 1 1 true");
			entity.runCommand("particle mes_mrhrs:bubble_launch ~ ~ ~");
		} else {
			entity.removeEffect("minecraft:levitation");
		}
	}
}
