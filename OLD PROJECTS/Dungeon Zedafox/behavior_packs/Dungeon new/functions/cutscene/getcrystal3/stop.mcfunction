scoreboard players set @e[type=zedafox:help] cutscene9 0

kill @e[type=zedafox:cutscene]
kill @e[type=zedafox:camera]

effect @a slowness 0 0
effect @a[tag=!OQP] invisibility 0 0
kill @e[type=zedafox:crystal]

// LOAD DE L'INVENTAIRE

execute @a ~ ~ ~ function load_inventory

// TELEPORTATION

tp @a 358 108 494 -90 0
time set midnight
function cutscene/raxly/start

// CRYSTAL

give @a[tag=owner] zedafox:crystal3
scoreboard players set @e[type=zedafox:help] zone 0