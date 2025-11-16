import { world, system, EntityComponentTypes, ItemComponentTypes } from "@minecraft/server";
// Affiche dans le lore de chaque Item du joueur sa durabilité.
system.runInterval(() => {
    const players = world.getAllPlayers();
    players.forEach((player) => {
        const playerInventoryComponent = player.getComponent(EntityComponentTypes.Inventory);
        const playerContainer = playerInventoryComponent.container;
        for (let i = 0; i < playerContainer.size; i++) {
            const playerInventorySlot = playerContainer.getSlot(i);
            const itemStack = playerInventorySlot.getItem();
            if (itemStack === undefined || itemStack.hasComponent(ItemComponentTypes.Durability) === false)
                continue;
            const itemDurabilityComponent = itemStack.getComponent(ItemComponentTypes.Durability);
            const currentDurability = itemDurabilityComponent.maxDurability - itemDurabilityComponent.damage;
            playerInventorySlot.setLore(["Durability :", `§e${currentDurability}`]);
        }
        ;
        const playerEquippableComponent = player.getComponent(EntityComponentTypes.Equippable);
        for (const equippableSlot of ["Chest", "Feet", "Head", "Legs", "Offhand"]) {
            const playerEquippableSlot = playerEquippableComponent.getEquipmentSlot(equippableSlot);
            const itemStack = playerEquippableSlot.getItem();
            if (itemStack === undefined || itemStack.hasComponent(ItemComponentTypes.Durability) === false)
                continue;
            const itemDurabilityComponent = itemStack.getComponent(ItemComponentTypes.Durability);
            const currentDurability = itemDurabilityComponent.maxDurability - itemDurabilityComponent.damage;
            playerEquippableSlot.setLore(["Durability :", `§e${currentDurability}`]);
        }
        ;
    });
});
