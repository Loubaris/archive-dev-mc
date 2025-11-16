scoreboard players set @e[type=zedafox:help] cutscene7 0

kill @e[type=zedafox:cutscene]
kill @e[type=zedafox:camera]

effect @a slowness 0 0
effect @a[tag=!OQP] invisibility 0 0
kill @e[type=zedafox:crystal]

// LOAD DE L'INVENTAIRE

execute @a ~ ~ ~ function load_inventory

// TELEPORTATION

tp @a 412 110 498 90 0

// CRYSTAL

give @a[tag=owner] zedafox:crystal2

// VILLAGE

function event/phase3
scoreboard players set @e[type=zedafox:help] zone 0