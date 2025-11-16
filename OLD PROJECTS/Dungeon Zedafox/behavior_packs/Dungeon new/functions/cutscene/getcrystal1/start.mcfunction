// 

fill 1903 101 -93 1903 104 -96 air

scoreboard players set @e[type=zedafox:help] cutscene7 1

scoreboard players set @e[type=zedafox:help] musictime 0
stopsound @a battle1

effect @a slowness 999999 3 true
effect @a invisibility 999999 1 true

// SAUVEGARDE DE L'INVENTAIRE

execute @a ~ ~ ~ function save_inventory



// SETBLOCK OPTIMIZATION

setblock 374 58 488 air
setblock 374 58 490 air
setblock 374 58 492 air
setblock 374 58 494 air

//

setblock 371 58 485 redstone_block