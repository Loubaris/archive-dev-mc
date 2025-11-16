import { worldLimits } from "./mes_heroes_utils";

let shieldParticlesCooldown = new Map();
export function shieldParticles(player, rad, circle, delay, isGuardianDead = null) {

  // player.runCommand("say test")

  const currentTime = Date.now();
  const lastTime = shieldParticlesCooldown.get(player.id) || 0;
  let radius;


  if (currentTime - lastTime > delay) {
    radius = rad ? rad : 2.5;

    const points = 20;
    const center = player.location;

    if (circle) {
      let offset = 0;
      if (isGuardianDead) offset = 2
      for (let i = 0; i < points; i++) {
        const theta = (Math.PI * 2 * i) / points;
        const x = center.x + radius * Math.cos(theta);
        const y = center.y - 1 + offset;
        const z = center.z + radius * Math.sin(theta);
        player.dimension.spawnParticle("minecraft:endrod", { x, y, z });
      }

    } else {
      for (let i = 0; i < points; i++) {
        const theta = (Math.PI * 2 * i) / points;
        for (let j = 0; j < points / 2; j++) {
          const phi = (Math.PI * j) / (points / 2);
          const x = center.x + radius * Math.sin(phi) * Math.cos(theta);
          const y = center.y + radius * Math.cos(phi);
          const z = center.z + radius * Math.sin(phi) * Math.sin(theta);

          if (y > worldLimits(player.dimension).max || y < worldLimits(player.dimension).min) continue

          player.dimension.spawnParticle("minecraft:endrod", { x, y, z });
        }

      }

    }
    shieldParticlesCooldown.set(player.id, currentTime);
  }


}


