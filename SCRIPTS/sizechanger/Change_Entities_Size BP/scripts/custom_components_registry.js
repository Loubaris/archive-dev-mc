import { world } from "@minecraft/server";
import { ItemSizeChangerComponent } from "items/custom_components/custom_components";
world.beforeEvents.worldInitialize.subscribe((eventData) => {
    eventData.itemComponentRegistry.registerCustomComponent("douarmc:size_changer", new ItemSizeChangerComponent());
});
