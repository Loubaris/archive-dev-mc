effect @e[family=character] invisibility 120 1 true
effect @a slowness 999999 5 true
effect @a invisibility 999999 4 true

tp @e[type=zedafox:camera] 383 109 502
tp @e[type=zedafox:cutscene] 378 112 491
scoreboard players set @e[type=zedafox:cutscene] cutscene 10

playsound love @a

summon zedafox:character_sit2 383 109 502
tag @e[type=zedafox:character_sit2,x=383,y=109,z=502,c=1] add fake1
event entity @e[tag=fake1] skin7
execute @e[tag=fake1] ~ ~ ~ tp @s ~ ~ ~ 180

time set night
