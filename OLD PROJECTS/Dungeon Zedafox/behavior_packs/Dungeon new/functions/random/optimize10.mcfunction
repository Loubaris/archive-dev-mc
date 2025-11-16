// SPAWNPOINT - DUNGEON 2

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 0 spawnpoint @s 3018 61 10
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 1 spawnpoint @s 3000 62 24
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 2 spawnpoint @s 3027 73 46


// START BOSS

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 15 scoreboard players add @e[type=zedafox:help,scores={startboss=..10}] startboss 1