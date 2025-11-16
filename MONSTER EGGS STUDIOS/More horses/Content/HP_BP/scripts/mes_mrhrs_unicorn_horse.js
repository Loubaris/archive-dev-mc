import { world, system, ItemStack } from "@minecraft/server";
export function unicorn_horse(entity){
    entity.runCommand("effect @p[r=10] regeneration 2 1 true");
    entity.runCommand("effect @p[r=3] poison 0");
    entity.runCommand("effect @p[r=3] wither 0");
    const rider = entity.getComponent("rideable")?.getRiders()?.[0];
    if(rider){
        rider.removeEffect("minecraft:poison");
        rider.removeEffect("minecraft:wither");
    }
    
}