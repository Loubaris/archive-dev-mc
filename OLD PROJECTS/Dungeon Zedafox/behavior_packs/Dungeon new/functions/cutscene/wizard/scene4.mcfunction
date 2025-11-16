tp @e[type=zedafox:cutscene] 450 37.5 513
tp @e[type=zedafox:camera] 454 39 519

scoreboard players set @e[type=zedafox:cutscene] cutscene 3
scoreboard players set @e[type=zedafox:camera] cutscene 0

event entity @e[type=zedafox:wizard2] to_death
event entity @e[type=zedafox:elevator_wizard] to_death
kill @e[type=zedafox:wizard2]