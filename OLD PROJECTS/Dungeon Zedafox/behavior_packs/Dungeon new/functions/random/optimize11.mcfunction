// SPAWNPOINT - DUNGEON 3

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 0 spawnpoint @s 3986 50 -20
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 1 spawnpoint @s 4007 55 -43
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 2 spawnpoint @s 4014 66 -34
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 3 spawnpoint @s 4022 66 3


// START BOSS

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 15 scoreboard players add @e[type=zedafox:help,scores={startboss=..10}] startboss 1