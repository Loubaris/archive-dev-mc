tp @e[type=zedafox:cutscene] 400 29 464.5
tp @e[type=zedafox:camera] 405 29 470
scoreboard players set @e[type=zedafox:cutscene] cutscene 2
scoreboard players set @e[type=zedafox:camera] cutscene 0

kill @e[tag=fake1]
kill @e[tag=fake2]

summon zedafox:character_sit2-1 407 29.7 470
tag @e[type=zedafox:character_sit2-1,x=407,y=29.7,z=470,c=1] add fake2
summon zedafox:character_sit2-2 403 29.7 470
tag @e[type=zedafox:character_sit2-2,x=403,y=29.7,z=470,c=1] add fake1
summon zedafox:character_sit2-1 409 28.7 483
tag @e[type=zedafox:character_sit2-1,x=409,y=28.7,z=483,c=1] add fake3
summon zedafox:character_sit2-1 409 28.7 479
tag @e[type=zedafox:character_sit2-1,x=409,y=28.7,z=479,c=1] add fake4

event entity @e[tag=fake4] skin8
event entity @e[tag=fake3] skin2
event entity @e[tag=fake2] skin6
event entity @e[tag=fake1] skin7

execute @e[tag=fake3] ~ ~ ~ tp @s ~ ~ ~ 180 
execute @e[tag=fake2] ~ ~ ~ tp @s ~ ~ ~ 90 
execute @e[tag=fake1] ~ ~ ~ tp @s ~ ~ ~ -90 