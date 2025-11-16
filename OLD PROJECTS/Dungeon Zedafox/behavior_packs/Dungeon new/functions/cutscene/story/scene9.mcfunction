tp @e[type=zedafox:cutscene] 482 115 520
tp @e[type=zedafox:camera] 482 115 511

scoreboard players set @e[type=zedafox:cutscene] cutscene 2
scoreboard players set @e[type=zedafox:camera] cutscene 0

summon zedafox:gravestone 482 115 511

time set 12500

kill @e[type=zedafox:character_inanimate,tag=!fake1]
kill @e[type=zedafox:character_inanimate2]