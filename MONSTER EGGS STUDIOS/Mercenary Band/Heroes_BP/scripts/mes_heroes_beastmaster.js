import { world, system, EntityComponentTypes } from "@minecraft/server";
import { follow } from "./mes_heroes_follow";
import { speech } from "./mes_heroes_minions_texts";
import { getRelatedPlayer, getTopSolidBlockY, randint, saveCoordinates } from "./mes_heroes_utils";
import { guardian } from "./mes_heroes_guardian";

const regenerationParticleCooldown = new Map()

export function beastmaster(beastmaster) {
    const health = beastmaster.getComponent(EntityComponentTypes.Health);
    if (!health || !beastmaster) return;

    const relatedPlayer = getRelatedPlayer(beastmaster)
    if (!relatedPlayer) return

    saveCoordinates(beastmaster)
    if (beastmaster.hasTag("follow")) {
        follow(beastmaster, relatedPlayer);
    }

    const nearbyEnemies = beastmaster.dimension.getEntities({
        location: beastmaster.location,
        maxDistance: 10,
        families: ["monster"]
    });
    const wolves = beastmaster.dimension.getEntities({
        location: beastmaster.location,
        maxDistance: 10,
        type: "mes_heroes:beastwolf"
    });

    if (nearbyEnemies.length > 2 * wolves.length) {
        const summonType = "mes_heroes:beastwolf";
        for (let i = 0; i < nearbyEnemies.length - 2 * wolves.length; i++) {
            const xSpawn = beastmaster.location.x - randint(-8, 8)
            const zSpawn = beastmaster.location.z - randint(-8, 8)

            const ySpawn = getTopSolidBlockY(beastmaster.dimension, xSpawn, zSpawn, false, beastmaster.location.y)
            if (!ySpawn) return;
            const summon = beastmaster.dimension.spawnEntity(summonType, {
                x: xSpawn,
                y: ySpawn,
                z: zSpawn
            });
            summon.addTag(`${Date.now()}`)
            beastmaster.runCommand(`execute as @e[type=mes_heroes:beastwolf] at @s run particle mes_heroes:poof ~ ~0.5 ~`);
        }
        beastmaster.runCommand(`playsound mob.wolf.bark @a[r=15] ~ ~ ~ 0.3`);
    }



    // Beast Bond
    const nearbyPlayers = beastmaster.dimension.getEntities({
        location: beastmaster.location,
        maxDistance: 10,
        type: "minecraft:player"
    });
    speech(beastmaster, nearbyPlayers[0]);
    const nearbyBeastmasters = beastmaster.dimension.getEntities({
        location: beastmaster.location,
        maxDistance: 10,
        type: "mes_heroes:beastmaster"
    });

    if (nearbyPlayers.length > 0) {
        const lastTimeRegenerationParticle = regenerationParticleCooldown.get(beastmaster.id) || 0
        if (Date.now() - lastTimeRegenerationParticle > 5000) {
            beastmaster.runCommand("particle mes_heroes:regeneration ~ ~ ~")
            beastmaster.runCommand("playanimation @s animation.mes_heroes.beastmaster.heal_zone")
            regenerationParticleCooldown.set(beastmaster.id, Date.now())
        }
        for (let i = 0; i < nearbyPlayers.length; i++) {
            nearbyPlayers[i]?.runCommand("effect @s regeneration 2 2 true")
        }
    }
    if (nearbyBeastmasters.length > 0) {
        for (let i = 0; i < nearbyBeastmasters.length; i++) {
            nearbyBeastmasters[i]?.runCommand("effect @s regeneration 2 2 true")
        }
    }

    //Pack Leader

    const nearbyWolves = beastmaster.dimension.getEntities({
        location: beastmaster.location,
        maxDistance: 50,
        type: "mes_heroes:beastwolf"
    });
    const protectorWolves = beastmaster.dimension.getEntities({
        location: beastmaster.location,
        maxDistance: 50,
        type: "mes_heroes:beastwolf"
    });



    for (const wolf of nearbyWolves) {
        const wolfHealth = wolf.getComponent(EntityComponentTypes.Health);
        if (wolfHealth.currentValue <= 4 && !wolf.hasTag("low")) {
            beastmaster.runCommand("playanimation @s animation.mes_heroes.beastmaster.predator_mark");
            const protectorWolf = wolf.dimension.spawnEntity("mes_heroes:beastwolf", {
                x: wolf.location.x - randint(-2, 2),
                y: wolf.location.y,
                z: wolf.location.z - randint(-2, 2)
            });

            wolf.addTag("low");
            protectorWolf.addTag(`${Date.now()}`)
            protectorWolf.addTag("protector");
        }
    }

    for (const protector of protectorWolves) {
        if (protector.hasTag("protector")) {
            for (const low of protector.dimension.getEntities({
                location: protector.location,
                maxDistance: 4,
                type: "mes_heroes:beastwolf"
            })) {
                if (low.hasTag("low")) {
                    follow(protector, low);
                }
            }
        }
    }

}
