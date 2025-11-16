tp @e[type=zedafox:cutscene] 379 109 494
tp @e[type=zedafox:camera] 387 109 494

scoreboard players set @e[type=zedafox:cutscene] cutscene 3
scoreboard players set @e[type=zedafox:camera] cutscene 0

tp @e[tag=fake1] 389 110 494

// FILL

fill 390 109 493 388 108 495 stone 0
fill 390 108 492 389 108 492 stone 0
fill 391 110 495 390 108 496 stone 0 replace air

// SUMMON

summon zedafox:character_inanimate 382 108 492
summon zedafox:character_inanimate 384 108 490
summon zedafox:character_inanimate2 382 108 496
summon zedafox:character_inanimate 384 108 498

execute @e[type=zedafox:character_inanimate,tag=!fake1] ~ ~ ~ tp @s ~ ~ ~ facing @e[tag=fake1]
execute @e[type=zedafox:character_inanimate2] ~ ~ ~ tp @s ~ ~ ~ facing @e[tag=fake1]

// SKIN

event entity @e[type=zedafox:character_inanimate,x=382,y=108,z=492,r=1] skin9
event entity @e[type=zedafox:character_inanimate,x=384,y=108,z=490,r=1] skin6
event entity @e[type=zedafox:character_inanimate2,x=382,y=108,z=496,r=1] skin7


