//@ts-check
const animCooldown = new Map();
/**
 *
 * @param {*} entity
 */
export function glacian_horse(entity) {
	entity.runCommand(
		"execute as @p[r=1.5] at @s run execute as @e[type=mes_mrhrs:glacian_horse,c=1,r=1.5] at @s run fill ~-5~-1~-5 ~5~-1~5 frosted_ice [] replace water"
	);
	const { x, y, z } = entity.location;
	const block = entity.dimension.getBlock({ x: x, y: y - 1, z: z });

	const lastTimeAnim = animCooldown.get(entity.id) || 0;
	if (
		block &&
		(block.isLiquid || block.typeId == "minecraft:water" || block.typeId == "minecraft:frosted_ice") &&
		Date.now() - lastTimeAnim > 10000
	) {
		entity.playAnimation("animation.mes_mrhrs.shockwave");
		animCooldown.set(entity.id, Date.now());
	}
	entity.runCommand("particle mes_mrhrs:glacian_frost ~ ~0.1 ~");
	const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	// horseItem(entity, rider);
}
