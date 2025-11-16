scoreboard players set @e[type=zedafox:help] cutscene4 1

kill @e[type=zedafox:elevator]


// SETBLOCK - OPTIMIZATION

setblock 371 58 490 air

execute @e[type=zedafox:help,scores={dungeon=1}] ~ ~ ~ setblock 374 58 488 redstone_block

execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ setblock 374 58 488 air
execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ setblock 374 58 490 redstone_block

execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ setblock 374 58 490 air
execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ setblock 374 58 492 redstone_block

execute @e[type=zedafox:help,scores={dungeon=4}] ~ ~ ~ setblock 374 58 492 air
execute @e[type=zedafox:help,scores={dungeon=4}] ~ ~ ~ setblock 374 58 494 redstone_block


// TAG

scoreboard players set @e[type=zedafox:help] zone 1


// SETBLCOK MAIN

setblock 371 58 485 air
setblock 375 58 485 redstone_block