scoreboard objectives add timejoin dummy
scoreboard objectives add timeintro dummy
gamerule sendcommandfeedback false

execute @p[r=2,tag=join] ~ ~ ~ function fixbugs
execute @p[r=2,tag=join] ~ ~ ~ function mecanics
execute @e[tag=talker] ~ ~ ~ function tutorial/level1
execute @e[tag=level2] ~ ~ ~ function tutorial/level2

execute @a[tag=trainingroom] ~ ~ ~ function mecanics/trainingroom

scoreboard players add @p[tag=!join,tag=introstarted] timejoin 1
scoreboard players add @p[tag=!join,tag=!introsummon] timeintro 1

execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove asteroidsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove chickensword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove tntsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove shulkersword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove slimesword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove mountainsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove firesword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove opsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove creepersword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove thor
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove tnt
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove swiftsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove vortexsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @p remove portalsword
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ scoreboard players set @p time 0
execute @p[tag=!join] ~ ~ ~ execute @e[type=ninja:intro] ~ ~ ~ particle ninja:intro ~ ~1.80 ~ 
execute @p[tag=!join] ~ ~ ~ execute @e[type=ninja:intro] ~ ~ ~ title @a[r=10] actionbar Punch to start
execute @p[tag=!join] ~ ~ ~ fill 314 170 -74 319 167 -79 barrier 0 hollow

tp @p[tag=!join,tag=!tpintro] -11 4 0 facing -1 4 0
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ tickingarea add circle 194 12 961 2 tutorialroom
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ tickingarea add circle 398 -54 4 3 dojo
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ tickingarea add circle 317 168 -75 2 spaceview
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ summon ninja:settings
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ setblock -1 6 0 air
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ tp @e[type=ninja:settings] -0.10 6 0.62 facing @p
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ tp @e[type=ninja:settings] -0.10 6 0.62 facing @p
execute @p[tag=!join,tag=!tpintro] ~ ~ ~ tp @e[type=ninja:settings] -0.10 6 0.62 facing @p
tag @p[tag=!join,tag=!tpintro] add tpintro
gamemode adventure @p[tag=!join,scores={timejoin=5}]
execute @p[tag=!join,tag=!introsummon,scores={timeintro=209}] ~ ~ ~ kill @e[type=ninja:intro,x=317,y=168,z=-75,r=3,c=1]
execute @p[tag=!join,tag=!introsummon,scores={timeintro=210}] ~ ~ ~ summon ninja:intro 317 168 -75
execute @p[tag=!join,tag=!introsummon,scores={timeintro=210}] ~ ~ ~ execute @e[type=ninja:intro] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @p[tag=!join,tag=!introsummon,scores={timeintro=210}] ~ ~ ~ gamemode adventure @p
execute @p[tag=!join,tag=!introsummon,scores={timeintro=210}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cWe recommend turning off the setting §eFOV Can Be Altered By Gameplay§c in Video Settings."}]}
execute @p[tag=!join,tag=!introsummon,scores={timeintro=210}] ~ ~ ~ clear @p
execute @p[tag=!join,tag=!introsummon,scores={timeintro=212}] ~ ~ ~ tag @p add introsummon
execute @p[tag=!join,scores={timeintro=212}] ~ ~ ~ scoreboard objectives remove timeintro

execute @p[x=316,y=169,z=-76,r=10,tag=!join,tag=!introstarted] ~ ~ ~ execute @e[type=item,name="Diamond",r=10] ~ ~ ~ stopsound @a
execute @p[x=316,y=169,z=-76,r=10,tag=!join,tag=!introstarted] ~ ~ ~ execute @e[type=item,name="Diamond",r=10] ~ ~ ~ scoreboard players set @a[r=10] timejoin 250
execute @p[x=316,y=169,z=-76,r=10,tag=!join,tag=!introstarted] ~ ~ ~ execute @e[type=item,name="Diamond",r=10] ~ ~ ~ tag @a[r=10] add introstarted
execute @p[x=316,y=169,z=-76,r=10,tag=!join,tag=introstarted] ~ ~ ~ execute @e[type=item,name="Diamond",r=10] ~ ~ ~ kill @s

execute @p[tag=!join,scores={timejoin=280}] ~ ~ ~ playsound 4ks.music.intro @p[tag=!join,scores={timejoin=280}] 317 168 -75 100
execute @p[tag=!join,scores={timejoin=300}] ~ ~ ~ function mecanics/barrierclose
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ function setup
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tp @p 375 156 -53
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @a add firsttask
execute @p[tag=!join,scores={timejoin=349}] ~ ~ ~ summon ninja:masterbalancing 390 153 -54
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ execute @e[type=ninja:masterbalancing] ~ ~ ~ tp @s ~ ~ ~ facing 375 156 -53
execute @p[tag=!join,scores={timejoin=350}] ~ ~ ~ tag @e[type=ninja:masterbalancing,tag=!firsttalk,x=393,y=153,z=-54,r=8] add firsttalk
tag @p[tag=!join,scores={timejoin=350}] add join 



scoreboard players add @p[tag=thor,tag=join] timethor 1
execute @p[tag=thor,scores={timethor=1}] ~ ~ ~ particle minecraft:totem_particle ~ ~ ~
execute @p[tag=thor,scores={timethor=1}] ~ ~ ~ effect @p resistance 15 255 true
execute @p[tag=thor,scores={timethor=10}] ~ ~ ~ execute @e[r=15,type=!player,type=!painting,type=!item,type=!ninja:ln_star,type=!ninja:masterportal] ~ ~ ~ summon lightning_bolt ~ ~ ~
execute @p[tag=thor] ~ ~ ~ function thor
execute @p[tag=thor,scores={timethor=20}] ~ ~ ~ execute @e[type=ninja:ln_star] ~ ~ ~ summon lightning_bolt
execute @e[type=ninja:ln_star] ~ ~ ~ kill @e[type=ninja:ln_star,rm=0.0001]
tag @p[tag=thor,scores={timethor=40}] add removetime
tag @p[tag=thor,scores={timethor=40}] remove thor
scoreboard players add @p[tag=removetime,scores={timethor=40}] swordused 1
scoreboard players set @p[tag=removetime,scores={timethor=40}] timethor 0
tag @p remove removetime

scoreboard players add @p[tag=swiftsword,tag=join] timeswift 1
execute @p[tag=swiftsword,scores={timeswift=1}] ~ ~ ~ particle minecraft:basic_portal_particle ^ ^ ^3
execute @p[tag=swiftsword,scores={timeswift=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^ ^-3
execute @p[tag=swiftsword,scores={timeswift=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^ ^-3
execute @p[tag=swiftsword,scores={timeswift=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^ ^-2.5
execute @p[tag=swiftsword,scores={timeswift=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^ ^-2.5
execute @p[tag=swiftsword,scores={timeswift=4}] ~ ~ ~ effect @p speed 3 2 true
execute @p[tag=swiftsword,scores={timeswift=1}] ~ ~ ~ playsound record.cat @p
tag @p[tag=swiftsword,scores={timeswift=20}] add removetimeonze
tag @p[tag=swiftsword,scores={timeswift=20}] remove swiftsword
scoreboard players add @p[tag=removetimeonze,scores={timeswift=20}] swordused 1
scoreboard players set @p[tag=removetimeonze,scores={timeswift=20}] timeswift 0
tag @p remove removetimeonze

scoreboard players add @p[tag=tnt,tag=join] timetnt 1
execute @p[tag=tnt] ~ ~ ~ effect @s resistance 15 255 true
execute @p[tag=tnt,scores={timetnt=1}] ~ ~ ~ particle minecraft:lava_particle ^ ^1 ^3
execute @p[tag=tnt,scores={timetnt=2}] ~ ~ ~ playsound mob.creeper.say @p
execute @p[tag=tnt,scores={timetnt=2}] ~ ~ ~ summon ninja:instanttntmedium ^ ^ ^1
execute @p[tag=tnt,scores={timetnt=2}] ~ ~ ~ kill @e[type=!player,type=!ninja:masteridle,type=!ninja:masterdance,type=!ninja:masterbalancing,type=!ninja:masterportal,type=!ninja:vortex,type=!ninja:instanttntmedium,r=10]
execute @p[tag=tnt,scores={timetnt=3}] ~ ~ ~ effect @p[r=8] levitation 1 40 true
execute @p[tag=tnt,scores={timetnt=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^2 ^-3
execute @p[tag=tnt,scores={timetnt=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^2 ^-2.5
execute @p[tag=tnt,scores={timetnt=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^2 ^-2
execute @p[tag=tnt,scores={timetnt=5}] ~ ~ ~ summon ninja:instanttntmedium ^ ^2 ^-2
execute @p[tag=tnt,scores={timetnt=6}] ~ ~ ~ effect @p[r=8] clear
tag @p[tag=tnt,scores={timetnt=50}] add removetimetwo
tag @p[tag=tnt,scores={timetnt=50}] remove tnt
scoreboard players add @p[tag=removetimetwo,scores={timetnt=50}] swordused 1
scoreboard players set @p[tag=removetimetwo,scores={timetnt=50}] timetnt 0
tag @p remove removetimetwo

scoreboard players add @p[tag=opsword,tag=join] timeop 1
execute @p[tag=opsword] ~ ~ ~ effect @s resistance 6 255 true
execute @p[tag=opsword] ~ ~ ~ function opsword
execute @p[tag=opsword,scores={timeop=4}] ~ ~ ~ playsound respawn_anchor.charge @p
execute @p[tag=opsword,scores={timeop=4}] ~ ~ ~ effect @p slow_falling 1 255 true
execute @p[tag=opsword,scores={timeop=20}] ~ ~ ~ playsound random.explode @p
execute @p[tag=opsword,scores={timeop=20}] ~ ~ ~ execute @e[type=ninja:op_star] ~ ~ ~ particle ninja:rainbow_explosion ~ ~ ~
execute @p[tag=opsword,scores={timeop=20}] ~ ~ ~ execute @e[type=ninja:op_star] ~ ~ ~ summon ninja:instanttntmedium
execute @e[type=ninja:op_star] ~ ~ ~ kill @e[type=ninja:op_star,rm=0.0001]

execute @p[tag=opsword,scores={timeop=20}] ~ ~ ~ tag @s add removetimethree
execute @p[tag=opsword,scores={timeop=20}] ~ ~ ~ tag @s remove opsword
scoreboard players add @p[tag=removetimethree,scores={timeop=20}] swordused 1
scoreboard players set @p[tag=removetimethree,scores={timeop=20}] timeop 0
tag @p remove removetimethree


scoreboard players add @p[tag=creepersword,tag=join] timecreeper 1
execute @p[tag=creepersword,scores={timecreeper=1}] ~ ~ ~ summon ninja:creeper ^ ^5 ^10
scoreboard players add @e[type=ninja:creeper] timecreeper 1
execute @e[type=ninja:creeper,scores={timecreeper=1}] ~ ~ ~ summon lightning_bolt ~ ~1 ~
execute @e[type=ninja:creeper,scores={timecreeper=10}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~2 ~
execute @e[type=ninja:creeper,scores={timecreeper=14}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~2.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=18}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~3 ~
execute @e[type=ninja:creeper,scores={timecreeper=22}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~3.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=26}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~4 ~
execute @e[type=ninja:creeper,scores={timecreeper=30}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~4.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=34}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~5 ~
execute @e[type=ninja:creeper,scores={timecreeper=38}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~5.5 ~

execute @e[type=ninja:creeper,scores={timecreeper=42}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~5 ~0.5
execute @e[type=ninja:creeper,scores={timecreeper=42}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~5 ~-0.5
execute @e[type=ninja:creeper,scores={timecreeper=42}] ~ ~ ~ particle minecraft:blue_flame_particle ~0.5 ~5 ~
execute @e[type=ninja:creeper,scores={timecreeper=42}] ~ ~ ~ particle minecraft:blue_flame_particle ~-0.5 ~5 ~

execute @e[type=ninja:creeper,scores={timecreeper=46}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~4.5 ~1
execute @e[type=ninja:creeper,scores={timecreeper=46}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~4.5 ~-1
execute @e[type=ninja:creeper,scores={timecreeper=46}] ~ ~ ~ particle minecraft:blue_flame_particle ~1 ~4.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=46}] ~ ~ ~ particle minecraft:blue_flame_particle ~-1 ~4.5 ~

execute @e[type=ninja:creeper,scores={timecreeper=50}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~4 ~1.5
execute @e[type=ninja:creeper,scores={timecreeper=50}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~4 ~-1.5
execute @e[type=ninja:creeper,scores={timecreeper=50}] ~ ~ ~ particle minecraft:blue_flame_particle ~1.5 ~4 ~
execute @e[type=ninja:creeper,scores={timecreeper=50}] ~ ~ ~ particle minecraft:blue_flame_particle ~-1.5 ~4 ~

execute @e[type=ninja:creeper,scores={timecreeper=54}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~3.5 ~2
execute @e[type=ninja:creeper,scores={timecreeper=54}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~3.5 ~-2
execute @e[type=ninja:creeper,scores={timecreeper=54}] ~ ~ ~ particle minecraft:blue_flame_particle ~2 ~3.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=54}] ~ ~ ~ particle minecraft:blue_flame_particle ~-2 ~3.5 ~

execute @e[type=ninja:creeper,scores={timecreeper=58}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~3 ~2.5
execute @e[type=ninja:creeper,scores={timecreeper=58}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~3 ~-2.5
execute @e[type=ninja:creeper,scores={timecreeper=58}] ~ ~ ~ particle minecraft:blue_flame_particle ~2.5 ~3 ~
execute @e[type=ninja:creeper,scores={timecreeper=58}] ~ ~ ~ particle minecraft:blue_flame_particle ~-2.5 ~3 ~

execute @e[type=ninja:creeper,scores={timecreeper=62}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~2.5 ~3
execute @e[type=ninja:creeper,scores={timecreeper=62}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~2.5 ~-3
execute @e[type=ninja:creeper,scores={timecreeper=62}] ~ ~ ~ particle minecraft:blue_flame_particle ~3 ~2.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=62}] ~ ~ ~ particle minecraft:blue_flame_particle ~-3 ~2.5 ~

execute @e[type=ninja:creeper,scores={timecreeper=66}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~2 ~3
execute @e[type=ninja:creeper,scores={timecreeper=66}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~2 ~-3
execute @e[type=ninja:creeper,scores={timecreeper=66}] ~ ~ ~ particle minecraft:blue_flame_particle ~3 ~2 ~
execute @e[type=ninja:creeper,scores={timecreeper=66}] ~ ~ ~ particle minecraft:blue_flame_particle ~-3 ~2 ~

execute @e[type=ninja:creeper,scores={timecreeper=70}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~1.5 ~3
execute @e[type=ninja:creeper,scores={timecreeper=70}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~1.5 ~-3
execute @e[type=ninja:creeper,scores={timecreeper=70}] ~ ~ ~ particle minecraft:blue_flame_particle ~3 ~1.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=70}] ~ ~ ~ particle minecraft:blue_flame_particle ~-3 ~1.5 ~

execute @e[type=ninja:creeper,scores={timecreeper=74}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~1 ~3
execute @e[type=ninja:creeper,scores={timecreeper=74}] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~1 ~-3
execute @e[type=ninja:creeper,scores={timecreeper=74}] ~ ~ ~ particle minecraft:blue_flame_particle ~3 ~1 ~
execute @e[type=ninja:creeper,scores={timecreeper=74}] ~ ~ ~ particle minecraft:blue_flame_particle ~-3 ~1 ~

execute @e[type=ninja:creeper,scores={timecreeper=75}] ~ ~ ~ effect @p[r=100] resistance 10 255 true

execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon ninja:instanttntmedium ~ ~1 ~3
execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon ninja:instanttntmedium ~ ~1.5 ~-3
execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon ninja:instanttntmedium ~3 ~1.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon ninja:instanttntmedium ~-3 ~1.5 ~

execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon lightning_bolt ~ ~1 ~3
execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon lightning_bolt ~ ~1.5 ~-3
execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon lightning_bolt ~3 ~1.5 ~
execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ summon lightning_bolt ~-3 ~1.5 ~


execute @e[type=ninja:creeper,scores={timecreeper=78}] ~ ~ ~ kill @s
tag @p[tag=creepersword,scores={timecreeper=78}] add removetimefour
tag @p[tag=creepersword,scores={timecreeper=78}] remove creepersword
scoreboard players add @p[tag=removetimefour,scores={timecreeper=78}] swordused 1
scoreboard players set @p[tag=removetimefour,scores={timecreeper=78}] timecreeper 0
tag @p remove removetimefour


execute @e[type=ninja:fire_n_star] ~ ~ ~ execute @e[type=!player,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,r=3] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ fire 0 replace air
execute @e[type=ninja:fire_n_star] ~ ~ ~ particle minecraft:basic_flame_particle ~ ~ ~ 


execute @e[type=ninja:fire_n_star,tag=!sound] ~ ~ ~ scoreboard players random @s sound 1 5
execute @e[type=ninja:fire_n_star,tag=!sound,scores={sound=1}] ~ ~ ~ playsound record.11 @p
execute @e[type=ninja:fire_n_star,tag=!sound,scores={sound=2}] ~ ~ ~ playsound record.13 @p
execute @e[type=ninja:fire_n_star,tag=!sound,scores={sound=3}] ~ ~ ~ playsound record.ward @p
execute @e[type=ninja:fire_n_star,tag=!sound,scores={sound=4}] ~ ~ ~ playsound record.far @p
execute @e[type=ninja:fire_n_star,tag=!sound,scores={sound=5}] ~ ~ ~ playsound record.mall @p
execute @e[type=ninja:fire_n_star,tag=!sound] ~ ~ ~ tag @s add sound
execute @e[type=ninja:fire_n_star,tag=!used] ~ ~ ~ scoreboard players add @p swordused 1
execute @e[type=ninja:fire_n_star,tag=!used] ~ ~ ~ tag @s add used


execute @e[type=ninja:lightning_n_star,tag=!sound] ~ ~ ~ scoreboard players random @s sound 1 5
execute @e[type=ninja:lightning_n_star,tag=!sound,scores={sound=1}] ~ ~ ~ playsound record.11 @p
execute @e[type=ninja:lightning_n_star,tag=!sound,scores={sound=2}] ~ ~ ~ playsound record.13 @p
execute @e[type=ninja:lightning_n_star,tag=!sound,scores={sound=3}] ~ ~ ~ playsound record.ward @p
execute @e[type=ninja:lightning_n_star,tag=!sound,scores={sound=4}] ~ ~ ~ playsound record.far @p
execute @e[type=ninja:lightning_n_star,tag=!sound,scores={sound=5}] ~ ~ ~ playsound record.mall @p
execute @e[type=ninja:lightning_n_star,tag=!sound] ~ ~ ~ tag @s add sound
execute @e[type=ninja:lightning_n_star,tag=!used] ~ ~ ~ scoreboard players add @p swordused 1
execute @e[type=ninja:lightning_n_star,tag=!used] ~ ~ ~ tag @s add used

execute @e[type=ninja:explosion_n_star,tag=!sound] ~ ~ ~ scoreboard players random @s sound 1 5
execute @e[type=ninja:explosion_n_star,tag=!sound,scores={sound=1}] ~ ~ ~ playsound record.11 @p
execute @e[type=ninja:explosion_n_star,tag=!sound,scores={sound=2}] ~ ~ ~ playsound record.13 @p
execute @e[type=ninja:explosion_n_star,tag=!sound,scores={sound=3}] ~ ~ ~ playsound record.ward @p
execute @e[type=ninja:explosion_n_star,tag=!sound,scores={sound=4}] ~ ~ ~ playsound record.far @p
execute @e[type=ninja:explosion_n_star,tag=!sound,scores={sound=5}] ~ ~ ~ playsound record.mall @p
execute @e[type=ninja:explosion_n_star,tag=!sound] ~ ~ ~ tag @s add sound
execute @e[type=ninja:explosion_n_star,tag=!used] ~ ~ ~ scoreboard players add @p swordused 1
execute @e[type=ninja:explosion_n_star,tag=!used] ~ ~ ~ tag @s add used

execute @e[type=ninja:explosion_n_startwo,tag=!sound] ~ ~ ~ scoreboard players random @s sound 1 5
execute @e[type=ninja:explosion_n_startwo,tag=!sound,scores={sound=1}] ~ ~ ~ playsound record.11 @p
execute @e[type=ninja:explosion_n_startwo,tag=!sound,scores={sound=2}] ~ ~ ~ playsound record.13 @p
execute @e[type=ninja:explosion_n_startwo,tag=!sound,scores={sound=3}] ~ ~ ~ playsound record.ward @p
execute @e[type=ninja:explosion_n_startwo,tag=!sound,scores={sound=4}] ~ ~ ~ playsound record.far @p
execute @e[type=ninja:explosion_n_startwo,tag=!sound,scores={sound=5}] ~ ~ ~ playsound record.mall @p
execute @e[type=ninja:explosion_n_startwo,tag=!sound] ~ ~ ~ tag @s add sound
execute @e[type=ninja:explosion_n_startwo,tag=!used] ~ ~ ~ scoreboard players add @p swordused 1
execute @e[type=ninja:explosion_n_startwo,tag=!used] ~ ~ ~ tag @s add used

execute @e[type=ninja:explosion_n_starthree,tag=!sound] ~ ~ ~ scoreboard players random @s sound 1 5
execute @e[type=ninja:explosion_n_starthree,tag=!sound,scores={sound=1}] ~ ~ ~ playsound record.11 @p
execute @e[type=ninja:explosion_n_starthree,tag=!sound,scores={sound=2}] ~ ~ ~ playsound record.13 @p
execute @e[type=ninja:explosion_n_starthree,tag=!sound,scores={sound=3}] ~ ~ ~ playsound record.ward @p
execute @e[type=ninja:explosion_n_starthree,tag=!sound,scores={sound=4}] ~ ~ ~ playsound record.far @p
execute @e[type=ninja:explosion_n_starthree,tag=!sound,scores={sound=5}] ~ ~ ~ playsound record.mall @p
execute @e[type=ninja:explosion_n_starthree,tag=!sound] ~ ~ ~ tag @s add sound
execute @e[type=ninja:explosion_n_starthree,tag=!used] ~ ~ ~ scoreboard players add @p swordused 1
execute @e[type=ninja:explosion_n_starthree,tag=!used] ~ ~ ~ tag @s add used

scoreboard players add @e[type=ninja:n_star] time 1
execute @e[type=ninja:n_star,tag=!sound] ~ ~ ~ scoreboard players random @s sound 1 5
execute @e[type=ninja:n_star,tag=!sound,scores={sound=1}] ~ ~ ~ playsound record.11 @p
execute @e[type=ninja:n_star,tag=!sound,scores={sound=2}] ~ ~ ~ playsound record.13 @p
execute @e[type=ninja:n_star,tag=!sound,scores={sound=3}] ~ ~ ~ playsound record.ward @p
execute @e[type=ninja:n_star,tag=!sound,scores={sound=4}] ~ ~ ~ playsound record.far @p
execute @e[type=ninja:n_star,tag=!sound,scores={sound=5}] ~ ~ ~ playsound record.mall @p
execute @e[type=ninja:n_star,tag=!sound] ~ ~ ~ tag @s add sound
execute @e[type=ninja:n_star,tag=!used] ~ ~ ~ scoreboard players add @p swordused 1
execute @e[type=ninja:n_star,tag=!used] ~ ~ ~ tag @s add used

execute @e[type=ninja:n_star,scores={time=35}] ~ ~ ~ kill @s

scoreboard players add @e[type=ninja:lightning_n_star] time 1
execute @e[type=ninja:lightning_n_star,scores={time=2}] ~ ~ ~ effect @p resistance 6 255 true
execute @e[type=ninja:lightning_n_star,scores={time=35}] ~ ~ ~ execute @e[type=ninja:lightning_n_star] ~ ~ ~ summon lightning_bolt
execute @e[type=ninja:lightning_n_star,scores={time=35}] ~ ~ ~ kill @s
execute @e[type=ninja:lightning_n_star] ~ ~ ~ execute @e[type=!player,type=!ninja:lightning_n_star,type=!painting,type=!item,type=!ninja:ln_star,r=2] ~ ~ ~ summon lightning_bolt
execute @e[type=ninja:lightning_n_star] ~ ~ ~ execute @e[type=!player,type=!ninja:lightning_n_star,type=!painting,type=!item,type=!ninja:ln_star,r=2] ~ ~ ~ kill @e[type=ninja:lightning_n_star,r=5]


scoreboard players add @e[type=ninja:explosion_n_star] time 1
execute @e[type=ninja:explosion_n_star,scores={time=2}] ~ ~ ~ effect @p resistance 8 255 true
execute @e[type=ninja:explosion_n_star] ~ ~ ~ particle minecraft:lava_particle ~ ~ ~ 
execute @e[type=ninja:explosion_n_star,scores={time=35}] ~ ~ ~ summon ninja:instanttnt
execute @e[type=ninja:explosion_n_star,scores={time=35}] ~ ~ ~ kill @s
execute @e[type=!player,type=!ninja:explosion_n_star,type=!painting,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,type=!item] ~ ~ ~ execute @e[type=ninja:explosion_n_star,r=5] ~ ~ ~ summon ninja:instanttnt
execute @e[type=!player,type=!ninja:explosion_n_star,type=!painting,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,type=!item] ~ ~ ~ execute @e[type=ninja:explosion_n_star,r=5] ~ ~ ~ kill @s


scoreboard players add @e[type=ninja:explosion_n_startwo] time 1
execute @e[type=ninja:explosion_n_startwo,scores={time=2}] ~ ~ ~ effect @p resistance 8 255 true
execute @e[type=ninja:explosion_n_startwo] ~ ~ ~ particle minecraft:lava_particle ~ ~ ~ 
execute @e[type=ninja:explosion_n_startwo,scores={time=35}] ~ ~ ~ summon ninja:instanttnttwo
execute @e[type=ninja:explosion_n_startwo,scores={time=35}] ~ ~ ~ kill @s
execute @e[type=!player,type=!ninja:explosion_n_startwo,type=!painting,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,type=!item] ~ ~ ~ execute @e[type=ninja:explosion_n_startwo,r=5] ~ ~ ~ summon ninja:instanttnttwo
execute @e[type=!player,type=!ninja:explosion_n_startwo,type=!painting,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,type=!item] ~ ~ ~ execute @e[type=ninja:explosion_n_startwo,r=5] ~ ~ ~ kill @s

scoreboard players add @e[type=ninja:explosion_n_starthree] time 1
execute @e[type=ninja:explosion_n_starthree,scores={time=2}] ~ ~ ~ effect @p resistance 8 255 true
execute @e[type=ninja:explosion_n_starthree] ~ ~ ~ particle minecraft:lava_particle ~ ~ ~ 
execute @e[type=ninja:explosion_n_starthree,scores={time=35}] ~ ~ ~ summon ninja:instanttntthree
execute @e[type=ninja:explosion_n_starthree,scores={time=35}] ~ ~ ~ kill @s

execute @e[type=!player,type=!ninja:explosion_n_starthree,type=!painting,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,type=!item] ~ ~ ~ execute @e[type=ninja:explosion_n_starthree,r=5] ~ ~ ~ summon ninja:instanttntthree
execute @e[type=!player,type=!ninja:explosion_n_starthree,type=!painting,type=!item,type=!ninja:masterbalancing,type=!ninja:masteridle,type=!ninja:masterdance,type=!item] ~ ~ ~ execute @e[type=ninja:explosion_n_starthree,r=5] ~ ~ ~ kill @s

scoreboard players add @e[type=ninja:fire_n_star] time 1
execute @e[type=ninja:fire_n_star,scores={time=100}] ~ ~ ~ kill @s

scoreboard players add @e[type=ninja:n_star] time 1
execute @e[type=ninja:n_star,scores={time=100}] ~ ~ ~ kill @s


scoreboard players add @p[tag=firesword,tag=join] timefire 1
execute @p[tag=firesword,scores={timefire=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=firesword,scores={timefire=2}] ~ ~ ~ playsound record.mellohi @p
execute @p[tag=firesword] ~ ~ ~ function firesword
execute @p[tag=firesword,scores={timefire=6}] ~ ~ ~ execute @e[type=!player,type=!item,type=!painting,r=15] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ fire 0 replace air
execute @p[tag=firesword,scores={timefire=9}] ~ ~ ~ execute @e[type=!player,type=!item,type=!painting,r=15] ~ ~ ~ effect @s instant_damage 1 2
tag @p[tag=firesword,scores={timefire=25}] add removetimesix
tag @p[tag=firesword,scores={timefire=25}] remove firesword
scoreboard players add @p[tag=removetimesix,scores={timefire=25}] swordused 1
scoreboard players set @p[tag=removetimesix,scores={timefire=25}] timefire 0
tag @p remove removetimesix


scoreboard players add @p[tag=mountainsword,tag=join] timemountain 1
execute @p[tag=mountainsword,scores={timemountain=3}] ~ ~ ~ playsound block.turtle_egg.crack @p
execute @p[tag=mountainsword,scores={timemountain=3}] ~ ~ ~ effect @p resistance 15 255 true
execute @p[tag=mountainsword,scores={timemountain=3}] ~ ~ ~ effect @p levitation 1 33 true
execute @p[tag=mountainsword,scores={timemountain=3}] ~ ~ ~ fill ~5 ~-2 ~5 ~-5 ~-4 ~-5 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=4}] ~ ~ ~ fill ~5 ~-2 ~5 ~-5 ~-4 ~-5 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=5}] ~ ~ ~ fill ~5 ~-2 ~5 ~-2 ~-4 ~-5 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=6}] ~ ~ ~ fill ~4 ~-2 ~4 ~-4 ~-4 ~-4 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=7}] ~ ~ ~ fill ~4 ~-2 ~2 ~-2 ~-4 ~-2 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=8}] ~ ~ ~ fill ~4 ~-2 ~4 ~-4 ~-4 ~-4 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=9}] ~ ~ ~ fill ~4 ~-2 ~4 ~-4 ~-4 ~-4 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=10}] ~ ~ ~ fill ~4 ~-2 ~4 ~-4 ~-4 ~-4 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=11}] ~ ~ ~ fill ~4 ~-2 ~4 ~-4 ~-4 ~-4 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=12}] ~ ~ ~ fill ~3 ~-2 ~3 ~-3 ~-4 ~-3 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=13}] ~ ~ ~ fill ~3 ~-2 ~3 ~-3 ~-4 ~-3 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=14}] ~ ~ ~ fill ~3 ~-2 ~3 ~-3 ~-4 ~-3 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=15}] ~ ~ ~ fill ~3 ~-2 ~3 ~-3 ~-4 ~-3 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=16}] ~ ~ ~ fill ~3 ~-2 ~3 ~-3 ~-4 ~-3 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=17}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=18}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=19}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=20}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=21}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=22}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 0 replace air
execute @p[tag=mountainsword,scores={timemountain=23}] ~ ~ ~ fill ~2 ~-2 ~2 ~-2 ~-4 ~-2 stone 5 replace air
execute @p[tag=mountainsword,scores={timemountain=24}] ~ ~ ~ fill ~1 ~-2 ~1 ~-1 ~-4 ~-1 grass 5 replace air
execute @p[tag=mountainsword,scores={timemountain=25}] ~ ~ ~ fill ~1 ~-2 ~1 ~-1 ~-4 ~-1 grass 0 replace air
execute @p[tag=mountainsword,scores={timemountain=26}] ~ ~ ~ fill ~1 ~-2 ~1 ~-1 ~-4 ~-1 grass 0 replace air
execute @p[tag=mountainsword,scores={timemountain=8}] ~ ~ ~ playsound record.chirp @p
tag @p[tag=mountainsword,scores={timemountain=100}] add removetimesept
tag @p[tag=mountainsword,scores={timemountain=100}] remove mountainsword
scoreboard players set @p[tag=removetimesept,scores={timemountain=100}] timemountain 0
tag @p remove removetimesept

scoreboard players add @p[tag=chickensword] timechicken 1
execute @p[tag=thor,scores={timechicken=5}] ~ ~ ~ effect @p resistance 15 255 true
execute @p[tag=chickensword] ~ ~ ~ function chicken
tag @p[tag=chickensword,scores={timechicken=40}] add removetimetrente
tag @p[tag=chickensword,scores={timechicken=40}] remove chickensword
scoreboard players add @p[tag=removetimetrente,scores={timechicken=40}] swordused 1
scoreboard players set @p[tag=removetimetrente,scores={timechicken=40}] timechicken 0
tag @p remove removetimetrente


scoreboard players add @e[tag=chickenexplode] time 1
execute @e[tag=chickenexplode,scores={time=60}] ~ ~ ~ effect @a[r=50] resistance 10 255 true
execute @e[tag=chickenexplode,scores={time=61}] ~ ~ ~ summon ninja:instanttnt
execute @e[tag=chickenexplode,scores={time=1}] ~ ~ ~ kill @e[type=ninja:chicken_bullet]
execute @e[tag=chickenexplode,scores={time=61}] ~ ~ ~ kill @s


scoreboard players add @p[tag=asteroidsword,tag=join] timeasteroid 1
execute @p[tag=asteroidsword,scores={timeasteroid=2}] ~ ~ ~ playsound record.stal @p
execute @p[tag=asteroidsword,scores={timeasteroid=5}] ~ ~ ~ execute @e[type=!player,type=!item,type=!painting,type=!minecart,r=5] ~ ~ ~ effect @s slowness 100 255 true
execute @p[tag=asteroidsword,scores={timeasteroid=5}] ~ ~ ~ summon minecraft:fireball ~-3 ~25 ~8
execute @p[tag=asteroidsword,scores={timeasteroid=10}] ~ ~ ~ summon minecraft:fireball ~-9 ~25 ~4
execute @p[tag=asteroidsword,scores={timeasteroid=13}] ~ ~ ~ summon minecraft:fireball ~ ~25 ~8
execute @p[tag=asteroidsword,scores={timeasteroid=15}] ~ ~ ~ summon minecraft:fireball ~ ~25 ~4
execute @p[tag=asteroidsword,scores={timeasteroid=17}] ~ ~ ~ summon minecraft:fireball ~2 ~25 ~-4
execute @p[tag=asteroidsword,scores={timeasteroid=17}] ~ ~ ~ summon minecraft:fireball ~6 ~25 ~-3
execute @p[tag=asteroidsword,scores={timeasteroid=11}] ~ ~ ~ summon minecraft:fireball ~3 ~25 ~5
execute @p[tag=asteroidsword,scores={timeasteroid=16}] ~ ~ ~ summon minecraft:fireball ~6 ~25 ~
execute @p[tag=asteroidsword,scores={timeasteroid=20}] ~ ~ ~ summon minecraft:fireball ~7 ~25 ~4
execute @p[tag=asteroidsword,scores={timeasteroid=7}] ~ ~ ~ summon minecraft:fireball ~-6 ~25 ~8
scoreboard players add @e[type=fireball] timeasteroid 1
execute @e[type=fireball] ~ ~ ~ tp @s ~ ~-0.5 ~
execute @e[type=fireball] ~ ~ ~ particle minecraft:basic_flame_particle ~ ~1 ~
execute @e[type=fireball,scores={timeasteroid=44}] ~ ~ ~ particle ninja:explosionfire_1 ~ ~ ~
execute @e[type=fireball,scores={timeasteroid=44}] ~ ~ ~ playsound random.explode @p
execute @e[type=fireball,scores={timeasteroid=44}] ~ ~ ~ kill @e[r=30,type=!player,type=!item,type=!fireball,type=!ninja:masteridle,type=!ninja:masterdance,type=!ninja:masterbalancing,type=!ninja:masterportal,type=!ninja:vortex]
execute @e[type=fireball,scores={timeasteroid=44}] ~ ~ ~ summon ninja:instanttnt
execute @e[type=fireball,scores={timeasteroid=44}] ~ ~ ~ camerashake add @a[r=30] 0.1 0.1
execute @e[type=fireball,scores={timeasteroid=44}] ~ ~ ~ kill @s
tag @p[tag=asteroidsword,scores={timeasteroid=44}] add removetimeneuf
tag @p[tag=asteroidsword,scores={timeasteroid=44}] remove asteroidsword
scoreboard players add @p[tag=removetimeneuf,scores={timeasteroid=44}] swordused 1
scoreboard players set @p[tag=removetimeneuf,scores={timeasteroid=44}] timeasteroid 0
tag @p remove removetimeneuf


scoreboard players add @p[tag=slimesword,tag=join] timeslime 1
execute @p[tag=slimesword,scores={timeslime=15}] ~ ~ ~ effect @p resistance 15 255 true
execute @p[tag=slimesword,scores={timeslime=15}] ~ ~ ~ execute @e[type=ninja:slimeball,tag=!slimefill] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 slime 0 replace air
execute @p[tag=slimesword,scores={timeslime=15}] ~ ~ ~ execute @e[type=ninja:slimeball,tag=!slimefill] ~ ~ ~ tag @s add slimefill
execute @p[tag=slimesword,scores={timeslime=1}] ~ ~ ~ playsound record.strad @p
execute @p[tag=slimesword,scores={timeslime=160}] ~ ~ ~ execute @e[type=ninja:slimeball,tag=slimefill] ~ ~ ~ fill ~10 ~10 ~10 ~-10 ~-2 ~-10 air 0 replace slime
execute @p[tag=slimesword,scores={timeslime=160}] ~ ~ ~ execute @e[type=ninja:slimeball,tag=slimefill] ~ ~ ~ kill @s
tag @p[tag=slimesword,scores={timeslime=162}] add removetimedouze
tag @p[tag=slimesword,scores={timeslime=162}] remove slimesword
scoreboard players set @p[tag=removetimedouze,scores={timeslime=162}] timeslime 0
tag @p remove removetimedouze
execute @e[type=ninja:slimeball] ~ ~ ~ execute @e[type=ninja:slimeball,rm=0.00001] ~ ~ ~ fill ~10 ~10 ~10 ~-10 ~-2 ~-10 air 0 replace slime
execute @e[type=ninja:slimeball] ~ ~ ~ kill @e[type=ninja:slimeball,rm=0.00001]

scoreboard players add @p[tag=vortexsword,tag=join] timevortex 1
scoreboard players add @e[type=ninja:vortex] timevortex 1
execute @p[tag=vortexsword] ~ ~ ~ execute @e[type=ninja:vortexball,tag=!vortexcreation] ~ ~ ~ particle ninja:diesel ~ ~-1 ~
execute @p[tag=vortexsword,scores={timevortex=15}] ~ ~ ~ effect @p resistance 15 255 true
execute @p[tag=vortexsword,scores={timevortex=15}] ~ ~ ~ execute @e[type=ninja:vortexball,tag=!vortexcreation] ~ ~ ~ summon ninja:vortex
execute @p[tag=vortexsword,scores={timevortex=15}] ~ ~ ~ execute @e[type=ninja:vortexball,tag=!vortexcreation] ~ ~ ~ tag @s add vortexcreation
execute @e[type=ninja:vortex] ~ ~ ~ effect @e[r=30,type=!player,type=!item,type=!painting,type=!ninja:shulker_bullet,type=!ninja:masteridle,type=!ninja:masterdance,type=!ninja:masterbalancing,type=!ninja:mastertransition,type=!ninja:masterportal,type=!minecart,type=!ninja:slimeball,type=!ninja:vortex,type=!ninja:n_star,type=!ninja:fire_n_star,type=!ninja:explosion_n_star,type=!ninja:explosion_n_startwo,type=!ninja:explosion_n_starthree,type=!ninja:lightning_n_star,type=!fireball] slowness 3 255 true
execute @e[type=ninja:vortex] ~ ~ ~ execute @e[r=30,rm=2,type=!player,type=!item,type=!ninja:shulker_bullet,type=!painting,type=!minecart,type=!ninja:masteridle,type=!ninja:masterdance,type=!ninja:masterbalancing,type=!ninja:masterportal,type=!ninja:mastertransition,type=!ninja:slimeball,type=!ninja:vortexball,type=!ninja:vortex,type=!ninja:n_star,type=!ninja:fire_n_star,type=!ninja:explosion_n_star,type=!ninja:explosion_n_startwo,type=!ninja:explosion_n_starthree,type=!ninja:lightning_n_star,type=!fireball] ~ ~ ~ tp @s ^ ^0.05 ^0.6 facing @e[type=ninja:vortex]


execute @e[type=ninja:vortex] ~ ~ ~ tp @e[type=fireball,r=40,tag=!vortexfireball] ~ ~24 ~
execute @e[type=ninja:vortex] ~ ~ ~ tag @e[type=fireball,r=40,tag=!vortexfireball] add vortexfireball
execute @e[type=ninja:vortex] ~ ~ ~ particle ninja:vortex ~ ~0.4 ~
execute @p[tag=vortexsword,scores={timevortex=6}] ~ ~ ~ playsound beacon.power @p
execute @e[type=ninja:vortex] ~ ~ ~ effect @e[r=3,type=player] nausea 6 255 true
execute @e[type=ninja:vortex,scores={timevortex=200}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=ninja:vortex,scores={timevortex=203}] ~ ~ ~ kill @e[type=ninja:vortexball]
execute @e[type=ninja:vortex,scores={timevortex=203}] ~ ~ ~ kill @s
tag @p[tag=vortexsword,scores={timevortex=205}] add removetimedouze
tag @p[tag=vortexsword,scores={timevortex=205}] remove vortexsword
scoreboard players add @p[tag=removetimedouze,scores={timevortex=205}] swordused 1
scoreboard players set @p[tag=removetimedouze,scores={timevortex=205}] timevortex 0
tag @p remove removetimedouze
execute @e[type=ninja:vortexball,rm=2] ~ ~ ~ kill @e[type=ninja:vortexball,rm=0.00001]


scoreboard players add @p[tag=shulkersword,tag=join] timeshulker 1
execute @e[type=ninja:shulker_bullet] ~ ~ ~ effect @e[r=4,type=!player,type=!item,type=!ninja:masterdance] levitation 5 5 true
execute @p[tag=shulkersword,scores={timeshulker=1}] ~ ~ ~ playsound mob.shulker.bullet.hit @p
tag @p[tag=shulkersword,scores={timeshulker=40}] add removetimetreize
tag @p[tag=shulkersword,scores={timeshulker=40}] remove shulkersword
scoreboard players set @p[tag=removetimetreize,scores={timeshulker=40}] timeshulker 0
tag @p remove removetimetreize


scoreboard players add @e[type=ninja:masteridle] time 1
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ playsound mob.ghast.fireball @a[r=15]
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1.5 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~2 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1.5 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~2 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~0.2
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~0.2
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~0.2
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~ ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~0.5 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~1 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~-0.2
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~-0.2
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~-0.2
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~ ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~0.5 ~
execute @e[type=ninja:masteridle,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~1 ~

scoreboard players add @e[type=ninja:mastertransition] time 1
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ playsound mob.ghast.fireball @a[r=15]
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1.5 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~2 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~0.2
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~0.2
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~0.2
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~ ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~0.5 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~1 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~-0.2
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~-0.2
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~-0.2
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~ ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~0.5 ~
execute @e[type=ninja:mastertransition,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~1 ~

scoreboard players add @e[type=ninja:masterbalancing] time 1
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ playsound mob.ghast.fireball @a[r=15]
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1.5 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~2 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~0.2
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~0.2
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~0.2
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~ ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~0.5 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~1 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~-0.2
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~-0.2
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~-0.2
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~ ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~0.5 ~
execute @e[type=ninja:masterbalancing,scores={time=1}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~1 ~
