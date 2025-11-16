// 

scoreboard players set @e[type=zedafox:help] cutscene10 1

scoreboard players set @e[type=zedafox:help] musictime 0
stopsound @a battle2

effect @a slowness 999999 3 true
effect @a invisibility 999999 1 true

// SAUVEGARDE DE L'INVENTAIRE

execute @a ~ ~ ~ function save_inventory



// FILL

fill 3058 77 10 3058 81 10 air 0 replace zedafox:persona32
fill 3057 77 9 3057 81 9 air 0 replace zedafox:persona32
fill 3057 77 8 3057 81 8 air 0 replace zedafox:persona32
fill 3056 77 7 3056 81 7 air 0 replace zedafox:persona32
fill 3055 77 6 3055 81 6 air 0 replace zedafox:persona32
fill 3055 77 5 3055 81 5 air 0 replace zedafox:persona32
fill 3054 77 4 3054 81 4 air 0 replace zedafox:persona32
fill 3053 77 3 3053 81 3 air 0 replace zedafox:persona32
fill 3053 77 2 3053 81 2 air 0 replace zedafox:persona32
fill 3052 77 1 3052 81 1 air 0 replace zedafox:persona32
fill 3051 77 0 3051 81 0 air 0 replace zedafox:persona32
fill 3050 77 -1 3050 81 -1 air 0 replace zedafox:persona32
fill 3049 77 -2 3049 81 -2 air 0 replace zedafox:persona32
fill 3048 77 -3 3048 81 -3 air 0 replace zedafox:persona32



// SETBLOCK OPTIMIZATION

setblock 374 58 488 air
setblock 374 58 490 air
setblock 374 58 492 air
setblock 374 58 494 air

setblock 371 58 485 redstone_block