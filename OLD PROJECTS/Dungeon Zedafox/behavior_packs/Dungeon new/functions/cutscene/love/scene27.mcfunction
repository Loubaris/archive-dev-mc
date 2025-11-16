event entity @e[tag=fake1] to_death
event entity @e[tag=fake2] to_death

tp @e[type=zedafox:cutscene] 374 115 479
tp @e[type=zedafox:camera] 387.54 119.43 461.26
scoreboard players set @e[type=zedafox:cutscene] cutscene 9
scoreboard players set @e[type=zedafox:camera] cutscene 0

summon zedafox:character_inanimate 380 117.35 471 skin6
summon zedafox:character_sit2-2 378 118 470 skin7

tag @e[type=zedafox:character_sit2-2,x=378,y=118,z=470,r=1] add fake1 
tag @e[type=zedafox:character_inanimate,x=380,y=117.35,z=471,r=1] add fake2


execute @e[tag=fake1] ~ ~ ~ tp @s ~ ~ ~ 0 0
execute @e[tag=fake2] ~ ~ ~ tp @s ~ ~ ~ 25 0




// PREPARATION DE LA SCENE 28

summon zedafox:character_inanimate 389 109 482 skin6
summon zedafox:character_inanimate2 391 109 485 skin7

tag @e[type=zedafox:character_inanimate2,x=391,y=109,z=485,r=1] add fake3 
tag @e[type=zedafox:character_inanimate,x=389,y=109,z=482,r=1] add fake4

execute @e[tag=fake4] ~ ~ ~ tp @s ~ ~ ~ facing @e[tag=fake3]
execute @e[tag=fake3] ~ ~ ~ tp @s ~ ~ ~ facing @e[tag=fake4]





// PREPARATION DE LA SCENE 29

summon zedafox:character_inanimate 311 98 467 skin6
summon zedafox:character_inanimate2 311 98 463 skin7

tag @e[type=zedafox:character_inanimate2,x=311,y=98,z=463,r=1] add fake5 
tag @e[type=zedafox:character_inanimate,x=311,y=98,z=467,r=1] add fake6