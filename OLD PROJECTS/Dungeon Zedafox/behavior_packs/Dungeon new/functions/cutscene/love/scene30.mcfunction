// KILL

event entity @e[tag=fake1] to_death
event entity @e[tag=fake2] to_death
event entity @e[tag=fake3] to_death
event entity @e[tag=fake4] to_death



// PREPARATION DE LA SCENE 31

summon zedafox:character_sit2 401.50 117 489 skin7
summon zedafox:character_sit 402.50 117 490.50 skin6

tag @e[type=zedafox:character_sit2,x=401.50,y=117,z=489,r=1] add fake1
tag @e[type=zedafox:character_sit,x=402.50,y=117,z=490.50,r=1] add fake2

execute @e[tag=fake1] ~ ~ ~ tp @s ~ ~ ~ 55
execute @e[tag=fake2] ~ ~ ~ tp @s ~ ~ ~ 55