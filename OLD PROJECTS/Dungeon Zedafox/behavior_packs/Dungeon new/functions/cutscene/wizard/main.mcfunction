scoreboard players add @e[type=zedafox:help] cutscene6 1

//

execute @s[scores={cutscene6=2}] ~ ~ ~ function cutscene/wizard/scene1
execute @s[scores={cutscene6=10}] ~ ~ ~ summon zedafox:wizard2 452 65 542
execute @s[scores={cutscene6=10}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard2] is_walking3 40
execute @s[scores={cutscene6=11}] ~ ~ ~ playanimation @e[type=zedafox:wizard2] animation.wave.wizard_walk
execute @s[scores={cutscene6=120}] ~ ~ ~ scoreboard players set @e[type=zedafox:camera] cutscene 0


execute @s[scores={cutscene6=80}] ~ ~ ~ function cutscene/wizard/scene2

// ELEVATOR

execute @s[scores={cutscene6=110}] ~ ~ ~ fill 451 64 541 449 64 543 air
execute @s[scores={cutscene6=111}] ~ ~ ~ summon zedafox:elevator_wizard 450 64 542

// ELEVATOR DOWN

execute @s[scores={cutscene6=103}] ~ ~ ~ playanimation @e[type=zedafox:wizard2] animation.wave.angry
execute @s[scores={cutscene6=112}] ~ ~ ~ execute @e[type=zedafox:wizard2] ~ ~ ~ particle zedafox:disc_white ~ ~0.1 ~
execute @s[scores={cutscene6=112..230}] ~ ~ ~ execute @e[type=zedafox:elevator_wizard] ~ ~ ~ tp @s ~ ~-0.025 ~
execute @s[scores={cutscene6=112..230}] ~ ~ ~ execute @e[type=zedafox:wizard2] ~ ~ ~ tp @s ~ ~-0.025 ~
execute @s[scores={cutscene6=112}] ~ ~ ~ playsound intro @a

// ELEVATOR SCENE

execute @s[scores={cutscene6=150}] ~ ~ ~ function transition/size1
execute @s[scores={cutscene6=160}] ~ ~ ~ function cutscene/wizard/scene3
execute @s[scores={cutscene6=190}] ~ ~ ~ playanimation @e[type=zedafox:wizard2] animation.wave.shy

// DOOR

execute @s[scores={cutscene6=230}] ~ ~ ~ function cutscene/wizard/scene4
execute @s[scores={cutscene6=250}] ~ ~ ~ execute @a ~ ~ ~ playsound closedoor @a ~ ~ ~ 0.5
execute @s[scores={cutscene6=250}] ~ ~ ~ playanimation @e[type=zedafox:3x3door] animation.wave.opendoor
execute @s[scores={cutscene6=250}] ~ ~ ~ summon zedafox:wizard2 456 38 517
execute @s[scores={cutscene6=275}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard2] is_walking3 120
execute @s[scores={cutscene6=275}] ~ ~ ~ playanimation @e[type=zedafox:wizard2] animation.wave.wizard_walk2

// 

execute @s[scores={cutscene6=340}] ~ ~ ~ function cutscene/wizard/scene5

// REMOVE MASK

execute @s[scores={cutscene6=390}] ~ ~ ~ function cutscene/wizard/scene6
execute @s[scores={cutscene6=420}] ~ ~ ~ playanimation @e[type=zedafox:wizard2] animation.wave.wizard_removemask
execute @s[scores={cutscene6=430}] ~ ~ ~ event entity @e[type=zedafox:wizard2] skin2
execute @s[scores={cutscene6=450}] ~ ~ ~ effect @a slowness 999999 7 true
execute @s[scores={cutscene6=479}] ~ ~ ~ effect @a slowness 0 0
execute @s[scores={cutscene6=480}] ~ ~ ~ effect @a slowness 999999 3 true

// 

execute @s[scores={cutscene6=470}] ~ ~ ~ function transition/size1
execute @s[scores={cutscene6=480}] ~ ~ ~ function cutscene/wizard/scene7
execute @s[scores={cutscene6=510}] ~ ~ ~ playanimation @e[type=zedafox:wizard2] animation.wave.wizard_magie
execute @s[scores={cutscene6=510}] ~ ~ ~ tp @e[type=zedafox:crystals] 436 38 517
execute @s[scores={cutscene6=511}] ~ ~ ~ playanimation @e[type=zedafox:crystals] animation.wave.crystals
execute @s[scores={cutscene6=550}] ~ ~ ~ function cutscene/wizard/scene8
execute @s[scores={cutscene6=580}] ~ ~ ~ playanimation @e[type=zedafox:crystals] animation.wave.crystals_merge
execute @s[scores={cutscene6=640}] ~ ~ ~ playanimation @e[type=zedafox:crystals] animation.wave.crystals_boom
execute @s[scores={cutscene6=680}] ~ ~ ~ summon zedafox:big_energy 428 36 517
execute @s[scores={cutscene6=680}] ~ ~ ~ execute @a ~ ~ ~ playsound impact2 @s ~ ~ ~ 0.15 1
execute @s[scores={cutscene6=680}] ~ ~ ~ camerashake add @a 0.15 3

// TO BE CONTINUED...

execute @s[scores={cutscene6=740}] ~ ~ ~ function cutscene/wizard/scene9

// TRANSITION DE FIN

execute @s[scores={cutscene6=840}] ~ ~ ~ function transition/size5

execute @s[scores={cutscene6=900}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] cutscene8 0
execute @s[scores={cutscene6=900}] ~ ~ ~ kill @e[type=zedafox:cutscene]
execute @s[scores={cutscene6=900}] ~ ~ ~ kill @e[type=zedafox:camera]
execute @s[scores={cutscene6=901}] ~ ~ ~ tp @a 304 45 535 0 0
execute @s[scores={cutscene6=905}] ~ ~ ~ event entity @e[type=zedafox:screen] skin0
execute @s[scores={cutscene6=901}] ~ ~ ~ effect @a slowness 0 0
execute @s[scores={cutscene6=901}] ~ ~ ~ effect @a night_vision 999999 1 true



execute @s[scores={cutscene6=962}] ~ ~ ~ function cutscene/wizard/stop