tp @e[type=zedafox:cutscene] 156 37 495
tp @e[type=zedafox:camera] 145 36 498
scoreboard players set @e[type=zedafox:cutscene] cutscene 1
scoreboard players set @e[type=zedafox:camera] cutscene 1

time set 12500

kill @e[tag=fake1]
kill @e[tag=fake2]
kill @e[tag=fake3]
kill @e[tag=fake4]

summon zedafox:character_inanimate 148 36 500
tag @e[type=zedafox:character_inanimate,x=148,y=36,z=500,c=1] add fake2
summon zedafox:character_inanimate2 146 36 500
tag @e[type=zedafox:character_inanimate2,x=146,y=36,z=500,c=1] add fake1

event entity @e[tag=fake1] skin7
event entity @e[tag=fake2] skin6

