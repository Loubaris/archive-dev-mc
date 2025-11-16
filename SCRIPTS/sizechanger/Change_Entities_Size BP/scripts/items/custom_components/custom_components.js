import * as FUNCTIONS_UTILS from "utilities/functions";
export class ItemSizeChangerComponent {
    onUse(arg) {
        const { source } = arg;
        if (source.isSneaking === true) {
            FUNCTIONS_UTILS.changeSizeByFormUI(source, source);
        }
        else {
            const entitiesRaycasted = source.getEntitiesFromViewDirection({ ignoreBlockCollision: false, includeLiquidBlocks: true, includePassableBlocks: true, maxDistance: 4 });
            if (entitiesRaycasted.length === 0)
                return;
            const entityInteracted = FUNCTIONS_UTILS.getClosestEntityRaycasted(entitiesRaycasted);
            if (entityInteracted.hasComponent("minecraft:scale") === true) {
                FUNCTIONS_UTILS.changeSizeByFormUI(source, entityInteracted);
            }
            else {
                source.sendMessage("§cYou cannot change the size of this Entity.");
            }
            ;
        }
    }
}
;
