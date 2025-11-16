import * as mc from "@minecraft/server"

const MANAMOTE_ENEMY_TYPES = ["minecraft:skeleton", "minecraft:zombie", "minecraft:creeper", "minecraft:spider","minecraft:blaze","minecraft:cave_spider","minecraft:drowned","minecraft:elder_guardian","minecraft:enderman","minecraft:evocation_illager","minecraft:ghast","minecraft:guardian","minecraft:husk","minecraft:phantom","minecraft:piglin","minecraft:piglin_brute","minecraft:pillager","minecraft:ravager","minecraft:shulker","minecraft:stray","minecraft:vex","minecraft:vindicator","minecraft:warden","minecraft:witch","minecraft:wither","minecraft:zombie_pigman","minecraft:zombie_villager","minecraft:zombie_villager_v2","minecraft:ender_dragon"]
const MANAMOTE_DROP_CHANCE = 6;

export function setupManaMote() {
    dropManamote();
    //highlightManamote();
}

//TODO add particle glow to manamote item on ground
function highlightManamote() {
    mc.system.runInterval(() => {

    }, 20);
}

//Drop a mana mote per chance when hostiles die
function dropManamote() {
    mc.world.afterEvents.entityDie.subscribe((eventData) => {
        if (MANAMOTE_ENEMY_TYPES.includes(eventData.deadEntity.typeId)) {
            onPercentChance(MANAMOTE_DROP_CHANCE, () => {
                mc.world.getDimension(eventData.deadEntity.dimension.id).spawnItem(new mc.ItemStack("cyd_mgspl:manamote", 1), eventData.deadEntity.location);
                mc.world.getDimension(eventData.deadEntity.dimension.id).spawnParticle("cyd_mgspl:manamote_drop", eventData.deadEntity.location);
            }
            )
        }
    })
}

function onPercentChance(percent = 100, callback) {
    const percentage = Math.round(Math.random() * 100);
    if (percentage <= percent) {
        callback();
        return true;
    } else {
        return false;
    }
}