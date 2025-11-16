import { norme, distance, randint, repulse } from "./mes_heroes_utils";

const followCooldown = new Map();

export function follow(follower, target, speed = 1 / 3, minDist = 5, followDist = 10, distToTP = 30) {
	// let minDist=1.5;

	const currentTimeFollow = Date.now();
	const lastTimeFollow = followCooldown.get(follower.id) || 0;
	const hasStroll = follower.hasTag("has_stroll");

	const distBetweenPlayerAndHero = distance(follower.location, target.location);
	if (distBetweenPlayerAndHero < followDist) {
		if (hasStroll) {
			follower.runCommandAsync("event entity @s disable_stroll");
			follower.runCommandAsync("tag @s remove has_stroll");
		}
		if (currentTimeFollow - lastTimeFollow > 250 && distBetweenPlayerAndHero > minDist) {
			const vector = {
				x: target.location.x - follower.location.x,
				y: target.location.y - follower.location.y,
				z: target.location.z - follower.location.z,
			};
			const normalizedVector = normalize(vector, follower, speed);
			const vectCoef = Math.sqrt(vector.x ** 2 + vector.z ** 2);
			const coeffSens = vector.x > 0 ? -1 : 1;
			const theta = coeffSens * Math.round((Math.acos(vector.z / vectCoef) * 180) / Math.PI);
			if (isNaN(theta)) return;
			follower.setRotation({ x: theta, y: theta });
			if (norme(vector) < minDist) return;
			follower.applyImpulse(normalizedVector);

			repulse(follower, 2);
			followCooldown.set(follower.id, Date.now());
		}
	} else {
		if (!hasStroll) {
			follower.runCommandAsync("event entity @s enable_stroll");
			follower.runCommandAsync("tag @s add has_stroll");
		}
		if (distance(follower.location, target.location) > distToTP && target.isOnGround) {
			try {
				follower.teleport(target.location, { checkForBlocks: true });
			} catch {}
		}
	}

	function normalize(vector, follower, speed) {
		const vectCoef = Math.sqrt(vector.x ** 2 + vector.y ** 2 + vector.z ** 2);
		let normalizedVector;
		let entitySpeed = Math.sqrt(follower.getVelocity().x ** 2 + follower.getVelocity().z ** 2);
		if (vector.y > 0 && target.isOnGround && entitySpeed < 0.01) {
			normalizedVector = {
				x: (0.2 * speed * vector.x) / vectCoef,
				y: 0.5,
				z: (0.2 * speed * vector.z) / vectCoef,
			};
		} else {
			normalizedVector = {
				x: (speed * vector.x) / vectCoef,
				y: 0,
				z: (speed * vector.z) / vectCoef,
			};
		}
		return normalizedVector;
	}
}
