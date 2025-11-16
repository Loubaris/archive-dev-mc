event entity @e[type=zedafox:point] disparition

//

tellraw @a {"rawtext":[{"text":"§6----[OBJECTIVE]----\n§eGo buy weapons in Kaley's store."}]}
summon zedafox:point 375 110 474
playsound success @a

scoreboard players add @a coin 0
scoreboard players set @a[scores={coin=0}] coin 16

// OBJECTIVE

function objective/reset
scoreboard players set "§6Go visit Kaley's store and buy weapons." objective 0
scoreboard objectives setdisplay sidebar objective

// DIRECTION

summon zedafox:direction 375 108 472
summon zedafox:direction2 375 108 472

// SETBLOCK - OPTIMIZATION

setblock 371 58 488 redstone_block

