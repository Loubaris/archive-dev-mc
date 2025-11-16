tp @e[type=zedafox:camera] 373 110 482
tp @e[type=zedafox:cutscene] 385 108 505
scoreboard players set @e[type=zedafox:cutscene] cutscene 13

summon zedafox:character_inanimate 383 108 496
tag @e[family=character,x=383,y=108,z=496,c=1] add fake2
event entity @e[tag=fake2] skin6