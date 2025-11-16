import { world } from "@minecraft/server";

const activePunchDetect = new Set();

export function punchDetect(rider) {
	if (activePunchDetect.has(rider.id)) return Promise.resolve(false);
	activePunchDetect.add(rider.id);

	return new Promise((resolve) => {
		const hitEntityCallback = (data) => {
			if (data.damagingEntity === rider) {
				cleanup();
				resolve(true);
			}
		};

		const hitBlockCallback = (data) => {
			if (data.damagingEntity === rider) {
                cleanup();
				resolve(true);
			}
		};

        const cleanup = () => {
            world.afterEvents.entityHitEntity.unsubscribe(hitEntityCallback);
            world.afterEvents.entityHitBlock.unsubscribe(hitBlockCallback);
            activePunchDetect.delete(rider.id);
        };

		world.afterEvents.entityHitEntity.subscribe(hitEntityCallback);
		world.afterEvents.entityHitBlock.subscribe(hitBlockCallback);
	});
}
