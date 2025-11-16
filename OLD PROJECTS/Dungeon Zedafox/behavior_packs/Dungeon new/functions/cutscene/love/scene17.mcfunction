kill @e[type=zedafox:character_inanimate]
kill @e[type=zedafox:character_inanimate2]
kill @e[type=zedafox:sandcastle]


tp @e[type=zedafox:cutscene] 340 119 500
tp @e[type=zedafox:camera] 358 112 489
scoreboard players set @e[type=zedafox:cutscene] cutscene 14
scoreboard players set @e[type=zedafox:camera] cutscene 0

summon zedafox:character_inanimate 357 108 494.5
tag @e[type=zedafox:character_inanimate,x=357,y=108,z=494.5,c=1] add fake2
summon zedafox:character_inanimate2 357 108 492.5
tag @e[type=zedafox:character_inanimate2,x=357,y=108,z=492.5,c=1] add fake1
summon zedafox:character_inanimate 369 109 488
tag @e[type=zedafox:character_inanimate,x=369,y=109,z=488,c=1] add fake3

event entity @e[tag=fake1] skin7
event entity @e[tag=fake2] skin6
event entity @e[tag=fake3] skin9