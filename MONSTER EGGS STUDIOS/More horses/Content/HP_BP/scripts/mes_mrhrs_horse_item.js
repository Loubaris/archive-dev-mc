import { world, ItemStack, EnchantmentTypes } from "@minecraft/server";
export function horseItem(entity, rider) {
    const storedRider = entity.getDynamicProperty("riderName");
    // const savedItem = entity.getDynamicProperty("inventory");
    if (rider) {
        if (!storedRider || storedRider == "{}") {
            entity.setDynamicProperty("riderName", JSON.stringify(rider.id));
            rider.runCommand(
                "titleraw @p actionbar { \"rawtext\" : [ { \"text\" : \"§7[§2§lMore Horses§r§7] §f-§r §2You received a Horse Claw\" } ] }"
            );
            rider.dimension.spawnItem(new ItemStack("mes_mrhrs:claw", 1), rider.location)
        }
        //  if(!savedItem) {
        //     takeAndSaveSlot(entity,rider);
        // }

    }
    // else if(savedItem && storedRider){
    else if (storedRider) {
        const player=world.getAllPlayers().find(player=>player.id==JSON.parse(storedRider))
        player?.runCommand("clear @s mes_mrhrs:claw 0 1")
        player?.runCommand("playsound mob.horse.land @a[r=5]") 

        // giveItem(JSON.parse(storedRider),JSON.parse(savedItem), entity);
        entity.setDynamicProperty("riderName", null);
        // entity.setDynamicProperty("inventory", null);
    }
}

function takeAndSaveSlot(entity, rider) {
    const inv = rider.getComponent("inventory").container;
    const item = inv.getItem(8);
    if (!item) {
        entity.setDynamicProperty("inventory", JSON.stringify(null));
        const stick = new ItemStack("mes_mrhrs:claw", 1);
        stick.lockMode = "slot";
        inv.setItem(8, stick);
        return;
    }

    const saveItem = {
        typeId: item.typeId,
        amount: item.amount,
        nameTag: item.nameTag,
        lore: item.getLore(),
        canDestroy: item.getCanDestroy(),
        canPlaceOn: item.getCanPlaceOn(),
        enchantments: item.getComponent("enchantable")
            ? item.getComponent("enchantable").getEnchantments().map(e => ({ type: e.type.id, level: e.level }))
            : null,
        durability: item.getComponent("durability")
            ? item.getComponent("durability").damage
            : null
    };

    entity.setDynamicProperty("inventory", JSON.stringify(saveItem));
    const stick = new ItemStack("mes_mrhrs:claw", 1);
    stick.lockMode = "slot";
    inv.setItem(8, stick);
}

function recreateItem(saveItem, entity) {
    if (!saveItem || !saveItem.typeId || !saveItem.amount) return null;
    const item = new ItemStack(saveItem.typeId, saveItem.amount);
    if (saveItem.nameTag) {
        item.nameTag = saveItem.nameTag;
    }
    if (saveItem.lore) {
        item.setLore(saveItem.lore);
    }
    if (saveItem.canDestroy) {
        item.setCanDestroy(saveItem.canDestroy);
    }
    if (saveItem.canPlaceOn) {
        item.setCanPlaceOn(saveItem.canPlaceOn);
    }
    if (saveItem.enchantments) {
        const enchantable = item.getComponent("enchantable");
        enchantable.addEnchantments(
            saveItem.enchantments.map(e => ({
                type: EnchantmentTypes.get(e.type),
                level: e.level
            }))
        );
    }

    if (saveItem.durability !== null && item.getComponent("durability")) {
        const durability = item.getComponent("durability");
        durability.damage = saveItem.durability;
        entity.runCommand("say test")
    }
    return item;
}

function giveItem(ID, item, entity) {
    let targetPlayer = null;
    for (const player of world.getPlayers()) {
        if (player.id === ID) {
            targetPlayer = player;
            break;
        }
    }
    if (!targetPlayer) return;
    const inv = targetPlayer.getComponent("inventory")?.container;
    if (!inv) return;
    inv.setItem(8, null);
    const newItem = recreateItem(item, entity);
    if (!newItem) return;
    inv.setItem(8, newItem);
}
