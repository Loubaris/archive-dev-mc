import { world, system } from "@minecraft/server";
const allDimensions = [world.getDimension("minecraft:overworld"), world.getDimension("minecraft:overworld"), world.getDimension("minecraft:the_end")];
// Gère l'affichage de la vie et du nametag des entités sauf joueur.
system.runInterval(() => {
    for (const dimension of allDimensions) {
        const entitiesExceptPlayers = dimension.getEntities({ excludeTypes: ["minecraft:player"] });
        const entitiesWithHealthComponent = entitiesExceptPlayers.filter(entity => entity.hasComponent("minecraft:health"));
        entitiesWithHealthComponent.forEach((entity) => {
            const entityHealthComponent = entity.getComponent("minecraft:health");
            let entityCurrentHealth = entityHealthComponent.currentValue;
            const entityAbsorptionEffect = entity.getEffect("absorption");
            let entityCurrentHealthText = undefined;
            if (entityAbsorptionEffect !== undefined) {
                const entityAbsorptionHealth = 4 * entityAbsorptionEffect.amplifier;
                entityCurrentHealth = entityCurrentHealth + entityAbsorptionHealth;
                entityCurrentHealthText = `[§e${entityCurrentHealth}§f`;
            }
            else {
                entityCurrentHealthText = `[${entityCurrentHealth}`;
            }
            ;
            if (entity.nameTag === undefined) {
                entity.nameTag = "" + "\n" + entityCurrentHealthText + "/" + `${entityHealthComponent.effectiveMax}]`;
            }
            else if (entity.nameTag.includes("\n") === false) {
                entity.nameTag = entity.nameTag + "\n" + entityCurrentHealthText + "/" + `${entityHealthComponent.effectiveMax}]`;
            }
            else if (entity.nameTag.includes("\n") === true) {
                entity.nameTag = entity.nameTag.split("\n")[0] + "\n" + entityCurrentHealthText + "/" + `${entityHealthComponent.effectiveMax}]`;
            }
            ;
        });
    }
    ;
});
