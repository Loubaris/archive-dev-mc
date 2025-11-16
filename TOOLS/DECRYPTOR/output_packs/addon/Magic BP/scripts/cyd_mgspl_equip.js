const MAGIC_EQUIPMENT = ["cyd_mgspl:wizard_hat", "cyd_mgspl:wizard_robe", "cyd_mgspl:wizard_leggings", "cyd_mgspl:wizard_boots"];

const HEAD = ["cyd_mgspl:wizard_hat"];
const CHEST = ["cyd_mgspl:wizard_robe"];
const LEGS = ["cyd_mgspl:wizard_leggings"];
const FEET = ["cyd_mgspl:wizard_boots"];

export function checkEquippedGear(player)
{
    let equipment = player.getComponent('equippable');

    let bonusManaReg = 0;
    let bonusManaMax = 0;

    bonusManaReg = bonusManaReg + checkHeadGear(equipment);
    bonusManaMax = bonusManaMax + checkChestGear(equipment);
    bonusManaMax = bonusManaMax + checkLegsGear(equipment);
    bonusManaMax = bonusManaMax + checkFeetGear(equipment);

    return [bonusManaReg, bonusManaMax];
}

function checkHeadGear(equiment)
{
    let item = equiment.getEquipment("Head");
    if (!item) return 0;
    if (!HEAD.includes(item.typeId)) return 0;

    if(item.typeId == "cyd_mgspl:wizard_hat") return 1;
}

function checkChestGear(equiment)
{
    let item = equiment.getEquipment("Chest");
    if (!item) return 0;
    if (!CHEST.includes(item.typeId)) return 0;

    if(item.typeId == "cyd_mgspl:wizard_robe") return 10;
}

function checkLegsGear(equiment)
{
    let item = equiment.getEquipment("Legs");
    if (!item) return 0;
    if (!LEGS.includes(item.typeId)) return 0;

    if(item.typeId == "cyd_mgspl:wizard_leggings") return 10;
}

function checkFeetGear(equiment)
{
    let item = equiment.getEquipment("Feet");
    if (!item) return 0;
    if (!FEET.includes(item.typeId)) return 0;

    if(item.typeId == "cyd_mgspl:wizard_boots") return 5;
}