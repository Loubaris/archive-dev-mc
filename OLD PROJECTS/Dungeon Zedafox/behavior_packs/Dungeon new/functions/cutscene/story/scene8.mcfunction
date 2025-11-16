tp @e[type=zedafox:cutscene] 403 59 491
tp @e[type=zedafox:camera] 396 59 495

scoreboard players set @e[type=zedafox:cutscene] cutscene 17
scoreboard players set @e[type=zedafox:camera] cutscene 0

tp @e[tag=fake1] 397 59.1 494
event entity @e[type=zedafox:boss] to_death