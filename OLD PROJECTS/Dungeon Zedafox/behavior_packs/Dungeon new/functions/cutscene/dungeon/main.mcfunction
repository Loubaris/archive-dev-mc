scoreboard players add @e[type=zedafox:help] cutscene4 1
scoreboard players set @s[scores={cutscene4=20}] startboss 0
execute @s[scores={cutscene4=2}] ~ ~ ~ execute @a ~ ~ ~ function save_inventory

// TICKINGAREA


// MAP

execute @s[scores={cutscene4=2}] ~ ~ ~ effect @a invisibility 20 1 true
execute @s[scores={cutscene4=2}] ~ ~ ~ summon zedafox:cutscene 298.93 50.25 481.54
execute @s[scores={cutscene4=2}] ~ ~ ~ summon zedafox:camera 298.93 50.25 475.54
execute @s[scores={cutscene4=2}] ~ ~ ~ playsound intro @a

// MAP APPARITION

execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help] ~ ~ ~ summon zedafox:map 298.9 50 476

execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=1}] ~ ~ ~ event entity @e[type=zedafox:map] skin1
execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ event entity @e[type=zedafox:map] skin2
execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ event entity @e[type=zedafox:map] skin3
execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=4}] ~ ~ ~ event entity @e[type=zedafox:map] skin4

execute @s[scores={cutscene4=190}] ~ ~ ~ scoreboard players set @e[type=zedafox:help,scores={dungeon=1}] time3 1
execute @s[scores={cutscene4=190}] ~ ~ ~ scoreboard players set @e[type=zedafox:help,scores={dungeon=4}] time3 1

// 

execute @s[scores={cutscene4=140}] ~ ~ ~ function transition/size5

execute @s[scores={cutscene4=189}] ~ ~ ~ event entity @e[type=zedafox:cutscene] to_death
execute @s[scores={cutscene4=189}] ~ ~ ~ event entity @e[type=zedafox:camera] to_death
execute @s[scores={cutscene4=189}] ~ ~ ~ event entity @e[type=zedafox:map] to_death


execute @s[scores={cutscene4=190}] ~ ~ ~ effect @a invisibility 0 0
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=1}] ~ ~ ~ tp @a 1992 99 -28 0 0
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ tp @a 2987.43 50 2.07 -90 0
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ tp @a 3998 50 -5 90 0
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=4}] ~ ~ ~ tp @a 6040 51 16.91 90 0

execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=1}] ~ ~ ~ spawnpoint @a 1992 99 -28
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ spawnpoint @a 2987.43 50 2.07
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ spawnpoint @a 3998 50 -5
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=4}] ~ ~ ~ spawnpoint @a 6040 51 16.91

// SET MUSIC

execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 1
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 2
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 3
execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=4}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 4

execute @s[scores={cutscene4=190}] ~ ~ ~ execute @e[type=zedafox:help] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1


// SET DUNGEON



// NUIT JOUR

execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=2}] ~ ~ ~ time set midnight
execute @s[scores={cutscene4=20}] ~ ~ ~ execute @e[type=zedafox:help,scores={dungeon=3}] ~ ~ ~ time set day



// REMOVE TICKINGAREA


// LOAD INVENTAIRE

execute @s[scores={cutscene4=190}] ~ ~ ~ execute @a ~ ~ ~ function load_inventory
execute @s[scores={cutscene4=190}] ~ ~ ~ setblock 375 58 485 air
