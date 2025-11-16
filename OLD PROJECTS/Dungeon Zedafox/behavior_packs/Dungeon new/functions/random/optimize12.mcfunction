// SPAWNPOINT - DUNGEON 4

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 0 spawnpoint @s 6024 57 6
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 1 spawnpoint @s 6033 59 -52
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 2 spawnpoint @s 6144 66 -37
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 3 spawnpoint @s 6149 67 -119
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 4 spawnpoint @s 6085 67 -119


// START BOSS

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 15 scoreboard players add @e[type=zedafox:help,scores={startboss=..10}] startboss 1