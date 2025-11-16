// SPAWNPOINT - DUNGEON 1

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 0 spawnpoint @s 1960 99 0
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 1 spawnpoint @s 1933 99 0
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 2 spawnpoint @s 1893 99 19
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 3 spawnpoint @s 1884 101 -30
execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 4 spawnpoint @s 1879 101 -65


// START BOSS

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 15 scoreboard players add @e[type=zedafox:help,scores={startboss=..10}] startboss 1