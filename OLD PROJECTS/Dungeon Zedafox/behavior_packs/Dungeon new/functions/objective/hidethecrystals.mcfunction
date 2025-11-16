event entity @e[type=zedafox:point] disparition

//

tellraw @a {"rawtext":[{"text":"§6----[OBJECTIVE]----\n§eFind an untraceable place to hide the crystals."}]}
playsound success @a

// OBJECTIVE

function objective/reset
scoreboard players set "§6Find an untraceable place to hide the crystals." objective 0
scoreboard objectives setdisplay sidebar objective

// DIRECTION

summon zedafox:direction 385 112 511
summon zedafox:direction2 385 112 511


scoreboard players set @e[type=zedafox:help] song 9
scoreboard players set @e[type=zedafox:help] musictime 1

scoreboard players set @e[type=zedafox:help] timedoor 1000


// SETBLOCK - OPTIMIZATION

setblock 371 58 488 redstone_block