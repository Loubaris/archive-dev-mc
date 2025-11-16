// import { BiomeTypes } from "@minecraft/server";
let kirinCooldown = new Map();

export function kirin_horse(entity) {
	//Heal:
	const currentTime = Date.now();
	const lastTime = kirinCooldown.get(entity.id) || 0;
	if (currentTime - lastTime > 10000) {
		entity.runCommand("effect @e[type=player,r=5] instant_health 1");
		entity.runCommand("/particle mes_mrhrs:heart ~ ~2 ~");
		entity.playAnimation("animation.mes_mrhrs.radial_energy");
		kirinCooldown.set(entity.id, currentTime);
	}

	//Speed: (not implemented because unable to detect biome)
	// const biomeSpeedMultipliers = {
	//     "minecraft:desert": 1.5,    // 50% plus rapide dans le désert
	//     "minecraft:snowy_tundra": 0.8,  // 20% plus lent dans la neige
	//     "minecraft:plains": 1.2,    // 20% plus rapide dans les plaines
	// };
	// const dimension = entity.dimension;
	// const position = entity.location;
	// const biome = dimension.getBiome(position);
	// const multiplier = biomeSpeedMultipliers[biome] || 1.0;
	// const rider = entity.getComponent("rideable")?.getRiders()?.[0];
	// const movementComponent = entity.getComponent("minecraft:movement");
	// if (movementComponent) {
	//     movementComponent.currentValue = 0.1 * multiplier; // Ajuste la vitesse de base
	// }
	// const biomeTypes = BiomeTypes.getAll();
	// for (const currentBiome of biomeTypes) {
	//     const biome = player.dimension.findClosestBiome(
	//         rider.location,
	//         currentBiome,
	//         { boundingSize: { x: 64, y: 64, z: 64 } }
	//     );
	//     if (biome !== undefined) {
	//         if(currentBiome.id === "minecraft:desert") {
	//             rider.runCommand("say ${currentBiome.id}");
	//         }

	//     }
	// }
}
