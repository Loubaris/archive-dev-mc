

scoreboard players add @p[tag=big_cannon] big_cannon 1
execute @p[tag=big_cannon,scores={big_cannon=1}] ~ ~ ~ event entity @p[tag=big_cannon] sp:n_boulder_shoot
execute @p[tag=big_cannon,scores={big_cannon=1}] ~ ~ ~ playsound nitric.music.big_cannon @a[r=20]
execute @p[tag=big_cannon,scores={big_cannon=1}] ~ ~ ~ particle nitric:big_shoot ^ ^0.5 ^1
tag @p[tag=big_cannon,scores={big_cannon=50}] add removetimebld
tag @p[tag=big_cannon,scores={big_cannon=50}] remove big_cannon
scoreboard players set @p[tag=removetimebld,scores={big_cannon=50}] big_cannon 0
tag @p remove removetimebld

scoreboard players add @e[type=nitric:boulder_toss] bouldertime 1
execute @e[type=nitric:boulder_toss,scores={bouldertime=1}] ~ ~ ~ tag @p[r=5] add boulder
execute @e[type=nitric:boulder_toss,scores={bouldertime=50}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=nitric:boulder_toss,scores={bouldertime=50}] ~ ~ ~ particle nitric:boulder ~ ~2 ~
execute @e[type=nitric:boulder_toss,scores={bouldertime=50}] ~ ~ ~ effect @e[r=8] instant_damage 3 1 true
execute @e[type=nitric:boulder_toss,scores={bouldertime=50}] ~ ~ ~ tag @a remove boulder
execute @e[type=nitric:boulder_toss,scores={bouldertime=51}] ~ ~ ~ kill @s

scoreboard players add @p[tag=sword_blaster] sword_blaster 1
execute @p[tag=sword_blaster,scores={sword_blaster=5}] ~ ~ ~ event entity @p[tag=sword_blaster] sp:n_sword_shoot
execute @p[tag=sword_blaster,scores={sword_blaster=5}] ~ ~ ~ playsound nitric.music.sword_blaster @a[r=20]
tag @p[tag=sword_blaster,scores={sword_blaster=40}] add removetimeblde
tag @p[tag=sword_blaster,scores={sword_blaster=40}] remove sword_blaster
scoreboard players set @p[tag=removetimeblde,scores={sword_blaster=40}] sword_blaster 0
tag @p remove removetimeblde

scoreboard players add @e[type=nitric:sword_shoot] swordtime 1
execute @e[type=nitric:sword_shoot,scores={swordtime=51}] ~ ~ ~ function sword_blaster
execute @e[type=nitric:sword_shoot,scores={swordtime=51}] ~ ~ ~ kill @s
execute @e[type=nitric:sword_shoot] ~ ~ ~ particle nitric:sword_particle ~ ~ ~

scoreboard players add @p[tag=laser_gun] laser_gun 1
execute @p[tag=laser_gun,scores={laser_gun=2}] ~ ~ ~ playsound nitric.music.laser @a[r=15]
execute @p[tag=laser_gun] ~ ~ ~ function laser
tag @p[tag=laser_gun,scores={laser_gun=19}] add removetimetrois
tag @p[tag=laser_gun,scores={laser_gun=19}] remove laser_gun
scoreboard players set @p[tag=removetimetrois,scores={laser_gun=19}] laser_gun 0
tag @p remove removetimetrois

scoreboard players add @p[tag=great_sword] great_sword 1
execute @p[tag=great_sword,scores={great_sword=1}] ~ ~ ~ playsound nitric.music.great_sword @a[r=15]
execute @p[tag=great_sword,scores={great_sword=1}] ~ ~ ~ summon nitric:great_sword_shoot ~ ~ ~
execute @p[tag=great_sword,scores={great_sword=21}] ~ ~ ~ execute @e[type=nitric:great_sword_shoot] ~ ~ ~ tp @s ~ ~-100 ~
execute @p[tag=great_sword,scores={great_sword=27}] ~ ~ ~ execute @e[type=nitric:great_sword_shoot] ~ ~ ~ kill @s
tag @p[tag=great_sword,scores={great_sword=30}] add removetimeqqq
tag @p[tag=great_sword,scores={great_sword=30}] remove great_sword
scoreboard players set @p[tag=removetimeqqq,scores={great_sword=30}] great_sword 0
tag @p remove removetimeqqq

scoreboard players add @p[tag=mini_gun_cannon] mini_gun_cannon 1
execute @p[tag=mini_gun_cannon,scores={mini_gun_cannon=1}] ~ ~ ~ event entity @p[tag=mini_gun_cannon] sp:n_mini_gun_shoot
execute @p[tag=mini_gun_cannon,scores={mini_gun_cannon=1}] ~ ~ ~ playsound nitric.music.mini_gun_cannon @a[r=10]
tag @p[tag=mini_gun_cannon,scores={mini_gun_cannon=2}] add removetimebldf
tag @p[tag=mini_gun_cannon,scores={mini_gun_cannon=2}] remove mini_gun_cannon
scoreboard players set @p[tag=removetimebldf,scores={mini_gun_cannon=2}] mini_gun_cannon 0
tag @p remove removetimebldf

scoreboard players add @e[type=nitric:mini_gun_shoot] mini_gun_shoot 1
execute @e[type=nitric:mini_gun_shoot,scores={mini_gun_shoot=31}] ~ ~ ~ kill @s
execute @e[type=nitric:mini_gun_shoot] ~ ~ ~ particle minecraft:basic_flame_particle ~ ~ ~
execute @e[type=nitric:mini_gun_shoot] ~ ~ ~ particle minecraft:basic_flame_particle ~ ~ ~
execute @e[type=nitric:mini_gun_shoot] ~ ~ ~ particle minecraft:basic_flame_particle ~ ~ ~
execute @e[type=nitric:mini_gun_shoot] ~ ~ ~ particle minecraft:basic_flame_particle ~ ~ ~


scoreboard players add @p[tag=dagger] dagger 1
execute @p[tag=dagger,scores={dagger=5}] ~ ~ ~ event entity @p[tag=dagger] sp:n_dagger_shoot
execute @p[tag=dagger,scores={dagger=5}] ~ ~ ~ playsound nitric.music.dagger_shoot @a[r=10]
execute @p[tag=dagger,scores={dagger=5}] ~ ~ ~ summon nitric:dagger_shoot
execute @p[tag=dagger,scores={dagger=5}] ~ ~ ~ particle nitric:dagg_shoot
execute @p[tag=dagger,scores={dagger=5}] ~ ~ ~ clear @p[tag=dagger] nitric:dagger 0 1
tag @p[tag=dagger,scores={dagger=30}] add removetimespc
tag @p[tag=dagger,scores={dagger=30}] remove dagger
scoreboard players set @p[tag=removetimespc,scores={dagger=30}] dagger 0
tag @p remove removetimespc

execute @e[type=nitric:dagger_launch] ~ ~ ~ tp @e[type=nitric:dagger_shoot,c=1] ~ ~ ~ facing @p
execute @e[type=nitric:dagger_shoot] ~ ~ ~ execute @p[r=1,scores={dagger=0}] ~ ~ ~ give @s nitric:dagger 1
execute @e[type=nitric:dagger_shoot] ~ ~ ~ execute @p[r=1,scores={dagger=0}] ~ ~ ~ playsound armor.equip_iron @p
execute @e[type=nitric:dagger_shoot] ~ ~ ~ execute @p[r=1,scores={dagger=0}] ~ ~ ~ execute @e[type=nitric:dagger_shoot,r=1] ~ ~ ~ tp @s ~ ~-10000 ~