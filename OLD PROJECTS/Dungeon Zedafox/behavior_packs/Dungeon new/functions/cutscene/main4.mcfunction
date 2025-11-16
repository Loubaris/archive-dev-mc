scoreboard players add @e[type=zedafox:help] cutscene 1
scoreboard players add @e[type=zedafox:help] noanswer 1

// CUTSCENE DU VILLAGE

execute @s[scores={cutscene=980}] ~ ~ ~ effect @e[name=bruno] invisibility 0 0 true
execute @s[scores={cutscene=980}] ~ ~ ~ event entity @e[name=bruno] removename

execute @s[scores={cutscene=980}] ~ ~ ~ time set night
execute @s[scores={cutscene=980}] ~ ~ ~ function cutscene/love/scene17
execute @s[scores={cutscene=1100}] ~ ~ ~ function cutscene/love/scene18

execute @s[scores={cutscene=982}] ~ ~ ~ scoreboard players set @e[tag=fake1] is_walking2 210
execute @s[scores={cutscene=982}] ~ ~ ~ scoreboard players set @e[tag=fake2] is_walking2 210
execute @s[scores={cutscene=982}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.kernel_walkandspeak
execute @s[scores={cutscene=982}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_walkandspeak
execute @s[scores={cutscene=982}] ~ ~ ~ playanimation @e[tag=fake3] animation.wave.pose_radley

// FEUX D'ARTIFICE

execute @s[scores={cutscene=1000}] ~ ~ ~ summon zedafox:fireworks 366 108 490
execute @s[scores={cutscene=1040}] ~ ~ ~ summon zedafox:fireworks 372 108 496
execute @s[scores={cutscene=1080}] ~ ~ ~ summon zedafox:fireworks 375 108 485
execute @s[scores={cutscene=1110}] ~ ~ ~ summon zedafox:fireworks 358 108 496
execute @s[scores={cutscene=1150}] ~ ~ ~ summon zedafox:fireworks 366 108 490
//
execute @s[scores={cutscene=1210}] ~ ~ ~ summon zedafox:fireworks 387 108 489
execute @s[scores={cutscene=1230}] ~ ~ ~ summon zedafox:fireworks 395 109 495
execute @s[scores={cutscene=1240}] ~ ~ ~ summon zedafox:fireworks 387 108 499
execute @s[scores={cutscene=1260}] ~ ~ ~ summon zedafox:fireworks 402 109 495
execute @s[scores={cutscene=1270}] ~ ~ ~ summon zedafox:fireworks 387 108 489
execute @s[scores={cutscene=1290}] ~ ~ ~ summon zedafox:fireworks 387 108 499




// SE REGARDE

execute @s[scores={cutscene=1200}] ~ ~ ~ function cutscene/love/scene20
execute @s[scores={cutscene=1220}] ~ ~ ~ dialogue open @e[type=npc,tag=chat12] @a



scoreboard players set @s[type=zedafox:help,scores={cutscene=1100}] noanswer 1100
scoreboard players set @s[scores={cutscene=1292}] cutscene 1291



// PAS DE REPONSE

execute @s[tag=!verified,scores={noanswer=1370}] ~ ~ ~ scoreboard players set @s cutscene 1293
execute @s[tag=!verified,scores={noanswer=1370}] ~ ~ ~ scoreboard players set @s choice 1
execute @s[tag=!verified,scores={noanswer=1350}] ~ ~ ~ function cutscene/remove_buttons
execute @s[tag=!verified,scores={noanswer=1352}] ~ ~ ~ dialogue open @e[type=npc,tag=remove] @a
execute @s[tag=!verified,scores={noanswer=1352}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"text":"§c§lYOU TOOK TOO LONG TO REACT\n§r§7             React faster!"}]}
execute @s[scores={noanswer=1353}] ~ ~ ~ event entity @e[type=npc,tag=remove] to_death
tag @s[scores={noanswer=1670}] remove verified



// LAUNCH FIREWORK

execute @s[scores={cutscene=1320,choice=1}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.character
execute @s[scores={cutscene=1320,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_firework
execute @s[scores={cutscene=1320,choice=1}] ~ ~ ~ scoreboard players set @e[tag=fake2] is_running2 35
execute @s[scores={cutscene=1294,choice=1}] ~ ~ ~ function cutscene/love/scene21
execute @s[scores={cutscene=1390,choice=1}] ~ ~ ~ summon zedafox:fireworks 378.5 108 494
execute @s[scores={cutscene=1395,choice=1}] ~ ~ ~ function cutscene/love/scene22
execute @s[scores={cutscene=1480,choice=1}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.clap
execute @s[scores={cutscene=1480,choice=1}] ~ ~ ~ function transition/size3
execute @s[scores={cutscene=1350,choice=1}] ~ ~ ~ playanimation @e[name=bruno] animation.wave.boring2

// DANCE

execute @s[scores={cutscene=1294,choice=2}] ~ ~ ~ function cutscene/love/scene23
execute @s[scores={cutscene=1320,choice=2}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_dance
execute @s[scores={cutscene=1340,choice=2}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.kernel_dance
execute @s[scores={cutscene=1415,choice=2}] ~ ~ ~ function cutscene/love/scene24
execute @s[scores={cutscene=1430,choice=2}] ~ ~ ~ playanimation @e[tag=fake3] animation.wave.radley_pose_what
execute @s[scores={cutscene=1430,choice=2}] ~ ~ ~ playanimation @e[name=bruno] animation.wave.surprised
execute @s[scores={cutscene=1460,choice=2}] ~ ~ ~ playanimation @e[name=bruno] animation.wave.facepalm
execute @s[scores={cutscene=1480,choice=2}] ~ ~ ~ function transition/size3

execute @s[scores={cutscene=1430,choice=2}] ~ ~ ~ execute @e[tag=fake3] ~ ~ ~ particle zedafox:question ~ ~0.5 ~ 
execute @s[scores={cutscene=1450,choice=2}] ~ ~ ~ execute @e[tag=fake3] ~ ~ ~ particle zedafox:question ~ ~0.5 ~ 
execute @s[scores={cutscene=1470,choice=2}] ~ ~ ~ execute @e[tag=fake3] ~ ~ ~ particle zedafox:question ~ ~0.5 ~ 

execute @s[scores={cutscene=1430,choice=2}] ~ ~ ~ execute @e[name=bruno] ~ ~ ~ particle zedafox:question ~ ~1 ~ 
execute @s[scores={cutscene=1450,choice=2}] ~ ~ ~ execute @e[name=bruno] ~ ~ ~ particle zedafox:question ~ ~1 ~ 
execute @s[scores={cutscene=1470,choice=2}] ~ ~ ~ execute @e[name=bruno] ~ ~ ~ particle zedafox:question ~ ~1 ~ 

// SURPRISE

execute @s[scores={cutscene=1320,choice=3}] ~ ~ ~ function transition/size2
execute @s[scores={cutscene=1350,choice=3}] ~ ~ ~ function cutscene/love/scene25
execute @s[scores={cutscene=1350,choice=3}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.character
execute @s[scores={cutscene=1350,choice=3}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.character
execute @s[scores={cutscene=1350,choice=3}] ~ ~ ~ tp @e[tag=fake1] 387 109 503 -120 0
execute @s[scores={cutscene=1350,choice=3}] ~ ~ ~ tp @e[tag=fake1] 387 109 503 -120 0
execute @s[scores={cutscene=1350,choice=3}] ~ ~ ~ tp @e[tag=fake2] 390 109 500 facing @e[tag=fake1,c=1]
execute @s[scores={cutscene=1390,choice=3}] ~ ~ ~ playanimation @e[type=zedafox:flag_checkpoint,x=389,y=109,z=502,r=1] animation.wave.flag_checkpoint
execute @s[scores={cutscene=1405,choice=3}] ~ ~ ~ event entity @e[type=zedafox:flag_checkpoint,x=389,y=109,z=502,r=1] skin3
execute @s[scores={cutscene=1390,choice=3}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.presentation2
execute @s[scores={cutscene=1420,choice=3}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.happy
execute @s[scores={cutscene=1440,choice=3}] ~ ~ ~ function cutscene/love/scene26
execute @s[scores={cutscene=1480,choice=3}] ~ ~ ~ function transition/size3


