event entity @e[type=zedafox:point] disparition

//

tellraw @a {"rawtext":[{"text":"§6----[OBJECTIVE]----\n§eGo to Kaley's store and talk to him."}]}
playsound success @a

// OBJECTIVE

function objective/reset
scoreboard players set "§6Go to Kaley's store and talk to him." objective 0
scoreboard objectives setdisplay sidebar objective

// DIRECTION

summon zedafox:direction 375 108 472
summon zedafox:direction2 375 108 472

summon zedafox:point 375 110 474


// SETBLOCK - OPTIMIZATION

setblock 371 58 488 redstone_block