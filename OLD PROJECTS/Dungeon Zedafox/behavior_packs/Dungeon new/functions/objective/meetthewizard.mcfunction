event entity @e[type=zedafox:point] disparition

//

tellraw @a {"rawtext":[{"text":"§6----[OBJECTIVE]----\n§eMeet the Wizard."}]}
summon zedafox:point 382 113 511
playsound success @a

// OBJECTIVE

function objective/reset
scoreboard players set "§6Go meet the wizard." objective 0
scoreboard objectives setdisplay sidebar objective

// DIRECTION

summon zedafox:direction 385 112 511
summon zedafox:direction2 385 112 511


// SETBLOCK - OPTIMIZATION

setblock 371 58 488 redstone_block