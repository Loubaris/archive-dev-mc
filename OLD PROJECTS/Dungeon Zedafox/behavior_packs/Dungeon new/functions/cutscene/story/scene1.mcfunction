tp @e[type=zedafox:cutscene] 393 108 499
tp @e[type=zedafox:camera] 403 110.5 494

scoreboard players set @e[type=zedafox:cutscene] cutscene 16
scoreboard players set @e[type=zedafox:camera] cutscene 0

time set midnight
effect @e[family=character] invisibility 99999 255 true

summon zedafox:text1 399 109 498

summon zedafox:character_inanimate 396 109 496
tag @e[type=zedafox:character_inanimate,x=396,y=109,z=496,r=1] add fake1
event entity @e[tag=fake1] skin13
playanimation @e[tag=fake1] animation.wave.walk_slow