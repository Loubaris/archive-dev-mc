summon zedafox:cutscene 1901 101 -94.1
summon zedafox:camera 1921 102 -94.1

scoreboard players set @e[type=zedafox:cutscene] cutscene 4
scoreboard players set @e[type=zedafox:camera] cutscene 0

// KILL

event entity @e[type=zedafox:acid_projectile] to_death