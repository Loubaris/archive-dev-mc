tellraw @a {"rawtext":[{"text":"§o§7You give the crystals."}]}

scoreboard players set @e[type=zedafox:wizard] dialog 54
execute @e[type=zedafox:wizard] ~ ~ ~ function dialog

clear @a zedafox:crystal1
clear @a zedafox:crystal2
clear @a zedafox:crystal3
clear @a zedafox:crystal4

playsound armor.equip_gold @a
scoreboard players set @a forced 0