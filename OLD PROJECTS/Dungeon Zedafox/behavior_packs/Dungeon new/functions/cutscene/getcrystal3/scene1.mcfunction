summon zedafox:cutscene 4043 61 33
summon zedafox:camera 4059 64 49

scoreboard players set @e[type=zedafox:cutscene] cutscene 7
scoreboard players set @e[type=zedafox:camera] cutscene 0

// KILL

event entity @e[type=zedafox:yellowguy] to_death
kill @e[type=zedafox:yellowguy]