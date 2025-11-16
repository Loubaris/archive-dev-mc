scoreboard players add @p[r=1,tag=4ks_ring_f] 4ks_ring_fire 1
execute as @p[tag=4ks_ring_f,scores={4ks_ring_fire=1}] at @s run playsound fire.ignite @a[r=10]
execute as @p[tag=4ks_ring_f,scores={4ks_ring_fire=1..60}] at @s run function 4ks/ring/fire
tag @a[scores={4ks_ring_fire=71}] remove 4ks_ring_f
scoreboard players set @p[r=1,scores={4ks_ring_fire=71}] 4ks_ring_fire 0

scoreboard players add @p[r=1,tag=4ks_ring_r] 4ks_ring_rock 1
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=1}] at @s run playsound mob.breeze.idle_ground @a[r=10]
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=1}] at @s run particle 4ks_ring:shockwave ~ ~ ~
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=1..18}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=12,family=mob] at @s if block ^ ^0.1 ^-0.55 air run tp @s ^ ^0.1 ^-0.45 facing @p[tag=4ks_ring_r] 
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=1}] at @s run effect @e[type=!player,family=!minion,family=!npc,type=!item,r=8,family=mob] slowness 2 255 true
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=1}] at @s run effect @e[type=!player,family=!minion,family=!npc,type=!item,r=8,family=mob] fatal_poison 3 255 true
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=1}] at @s run effect @e[type=!player,family=!minion,family=!npc,type=!item,r=8,family=mob] instant_damage 1 5 true
execute as @p[tag=4ks_ring_r,scores={4ks_ring_rock=30}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=8,family=mob] at @s run kill @e[type=item,r=2]
tag @a[scores={4ks_ring_rock=31}] remove 4ks_ring_r
scoreboard players set @p[r=1,scores={4ks_ring_rock=31}] 4ks_ring_rock 0

scoreboard players add @p[r=1,tag=4ks_ring_li] 4ks_ring_elec 1
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=1}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run tag @p add 4ks_ring_yes
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=1}] at @s run title @p[r=1,tag=!4ks_ring_yes] actionbar §cThere aren't any mobs around you!
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=1}] at @s run scoreboard players set @p[r=1,tag=!4ks_ring_yes] 4ks_ring_elec 98
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=1..}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run particle 4ks_ring:lightning_indicator
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=1}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run summon lightning_bolt
execute as @p[tag=4ks_ring_li,scores={4ks_ring_light=5}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run particle 4ks_ring:electricity ~ ~1.5 ~
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=30}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run summon lightning_bolt
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=35}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run particle 4ks_ring:electricity ~ ~1.5 ~
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=60}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run summon lightning_bolt
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=65}] at @s run execute as @e[type=!player,family=!minion,family=!npc,type=!item,r=10,family=mob] at @s run particle 4ks_ring:electricity ~ ~1.5 ~
execute as @p[tag=4ks_ring_li,scores={4ks_ring_elec=98}] at @s run tag @s remove 4ks_ring_yes
tag @a[scores={4ks_ring_elec=100}] remove 4ks_ring_li
scoreboard players set @p[r=1,scores={4ks_ring_elec=100}] 4ks_ring_elec 0

scoreboard players add @p[r=1,tag=4ks_ring_t] 4ks_ring_tnt 1
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=1}] at @s run playsound random.fizz @a[r=10]
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=1}] at @s run tag @s add 4ks_ring_ts
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=1}] at @s run particle 4ks_ring:poof ^ ^1.2 ^3
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=30..60}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run tp @s ^0.1 ^0.1 ^ facing ^0.25 ^ ^
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=30..60}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run particle 4ks_ring:tnt_particle
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run playsound cauldron.explode @a[r=15]
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run particle minecraft:huge_explosion_emitter ~ ~ ~
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run execute as @e[family=mob,family=!minion,r=10] at @s run particle minecraft:large_explosion ~ ~1.5 ~
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run effect @e[family=mob,family=!minion,r=10] levitation 1 25 true
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run effect @e[family=mob,family=!minion,r=10] instant_damage 1 5 true
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run summon 4ks_ring:instanttnt
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=61}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run tp @s ~ ~-100 ~
execute as @p[tag=4ks_ring_t,scores={4ks_ring_tnt=69}] at @s run execute as @e[type=4ks_ring:tnt_shoot] at @s run kill @s
tag @a[scores={4ks_ring_tnt=70}] remove 4ks_ring_t
scoreboard players set @p[r=1,scores={4ks_ring_tnt=70}] 4ks_ring_tnt 0

scoreboard players add @p[r=1,tag=4ks_ring_i] 4ks_ring_ice 1
execute as @p[tag=4ks_ring_i,scores={4ks_ring_ice=1}] at @s run tag @s add 4ks_ring_ss
execute as @e[type=snowball,tag=4ks_ring_sst] at @s run particle 4ks_ring:frost_poof
execute as @e[type=snowball,tag=4ks_ring_sst] at @s run effect @e[type=!player,family=!minion,r=3] fatal_poison 5 255 true
execute as @e[type=snowball,tag=4ks_ring_sst] at @s run damage @e[type=!player,family=!minion,r=3] 8 override
execute as @p[tag=4ks_ring_i,scores={4ks_ring_ice=1}] at @s run playsound mob.breeze.idle_air @a[r=10]
tag @a[scores={4ks_ring_ice=10}] remove 4ks_ring_i
scoreboard players set @p[r=1,scores={4ks_ring_ice=10}] 4ks_ring_ice 0

scoreboard players add @p[r=1,tag=4ks_ring_m] 4ks_ring_metal 1
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=1}] at @s run tag @s add 4ks_ring_ms
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=1..60}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run particle 4ks_ring:metal_idle
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=1}] at @s run playsound tile.piston.out @a[r=10]
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=60}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run particle 4ks_ring:metal_explosion
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=60}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run particle minecraft:huge_explosion_emitter ~ ~ ~
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=62}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run summon 4ks_ring:knockback
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=62}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run summon 4ks_ring:knockback
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=62}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run summon 4ks_ring:knockback
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=61}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run effect @e[family=mob,family=!minion,r=10] instant_damage 1 5 true
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=64}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run kill @s
execute as @p[tag=4ks_ring_m,scores={4ks_ring_metal=60}] at @s run execute as @e[type=4ks_ring:metal_burst] at @s run playsound cauldron.explode @a[r=30]
tag @a[scores={4ks_ring_metal=65}] remove 4ks_ring_m
scoreboard players set @p[r=1,scores={4ks_ring_metal=65}] 4ks_ring_metal 0

scoreboard players add @p[r=1,tag=4ks_ring_w] 4ks_ring_water 1
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1}] at @s run playsound bucket.fill_water @a[r=10]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1}] at @s run summon 4ks_ring:nothing ~ ~ ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1}] at @s run summon 4ks_ring:wave ~ ~-100 ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=2}] at @s run particle 4ks_ring:wave_launch ^ ^1 ^1
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1}] at @s run effect @e[family=mob,r=5] slowness 2 255 true
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1}] at @s run effect @e[type=4ks_ring:wave] invisibility 100 255 true
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1}] at @s run tp @e[type=4ks_ring:wave] ^ ^1 ^2 facing @p[tag=4ks_ring_w]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=1..7}] at @s run execute as @e[type=4ks_ring:wave] at @s if block ~ ~-0.3 ~ air run tp @s ~ ~-0.3 ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=8..}] at @s run execute as @e[type=4ks_ring:wave] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=6}] at @s run effect @e[type=4ks_ring:wave] clear
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=6}] at @s run playanimation @e[type=4ks_ring:wave] animation.4ks_ring.wave.start
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=8}] at @s run playsound liquid.water @a[r=10]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=30}] at @s run playsound liquid.water @a[r=10]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=70}] at @s run playsound liquid.water @a[r=10]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=8..107}] at @s run execute as @e[type=4ks_ring:wave] at @s if block ^ ^ ^-1.42 air run tp @s ^ ^ ^-0.42 facing @e[type=4ks_ring:nothing]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=8..107}] at @s run execute as @e[type=4ks_ring:wave] at @s run tp @e[family=mob,family=!inac,family=!npc,r=4.5] ^ ^ ^-0.80
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=8..107}] at @s run execute as @e[type=4ks_ring:wave] at @s run effect @e[family=mob,family=!inac,family=!npc,r=4.5] fatal_poison 1 255 true
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=107}] at @s run execute as @e[type=4ks_ring:wave] at @s run effect @e[family=mob,family=!inac,family=!npc,r=4.5] instant_damage 1 5 true
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=108}] at @s run tp @e[type=4ks_ring:nothing] ~ ~-100 ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=108}] at @s run execute as @e[type=4ks_ring:wave] at @s run playsound cauldron.explode @a ~ ~ ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=..108}] at @s run execute as @e[type=4ks_ring:wave] at @s run particle 4ks_ring:bubble ~ ~2 ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=108}] at @s run execute as @e[type=4ks_ring:wave] at @s run tp @s ~ ~-100 ~
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=112}] at @s run kill @e[type=4ks_ring:wave]
execute as @a[tag=4ks_ring_w,scores={4ks_ring_water=112}] at @s run kill @e[type=4ks_ring:nothing]
tag @a[scores={4ks_ring_water=114}] remove 4ks_ring_w
scoreboard players set @p[r=1,scores={4ks_ring_water=114}] 4ks_ring_water 0

scoreboard players add @p[r=1,tag=4ks_ring_l] 4ks_ring_light 1
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run tag @e[type=!player,family=!minion,family=!inac,type=!4ks_ring:heat_shoot,family=!npc,type=!item,c=1,family=mob] add 4ks_ring_vctm
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^ ^1 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^1.5 ^1 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^-1.5 ^1 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^ ^3 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^1.5 ^3 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^-1.5 ^3 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^ ^1 ^6
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^2.2 ^1 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run summon 4ks_ring:heat_shoot ^-2.2 ^1 ^3
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=1}] at @s run playsound note.cow_bell @a[r=20]
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=85}] at @s run kill @e[type=4ks_ring:heat_shoot]
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=84}] at @s run effect @e[tag=4ks_ring_vctm] instant_damage 1 5 true
execute as @p[tag=4ks_ring_l,scores={4ks_ring_light=84}] at @s run tag @e[tag=4ks_ring_vctm] remove 4ks_ring_vctm
tag @a[scores={4ks_ring_light=85}] remove 4ks_ring_l
scoreboard players set @p[r=1,scores={4ks_ring_light=85}] 4ks_ring_light 0

execute as @e[type=4ks_ring:heat_shoot] at @s run tp @s ^ ^ ^0.39 facing @e[tag=4ks_ring_vctm] 
execute as @e[type=4ks_ring:heat_shoot] at @s run particle 4ks_ring:rgb ~ ~ ~

scoreboard players add @p[r=1,tag=4ks_ring_n] 4ks_ring_nature 1
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1}] at @s run playsound dig.azalea_leaves @a[r=15]
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1..100}] at @s run particle 4ks_ring:seed
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1..100}] at @s run effect @e[type=!player,family=!minion,family=!npc,type=!item,r=12,family=mob] fatal_poison 1 255 true
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1}] at @s run effect @e[type=!player,family=!minion,family=!npc,type=!item,r=12,family=mob] instant_damage 1 5 true
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1..100}] at @s run effect @a[r=5] regeneration 1 255 true
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1}] at @s if block ~ ~ ~5 air run summon 4ks_ring:seed ~ ~ ~6
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1}] at @s if block ~ ~ ~-5 air run summon 4ks_ring:seed ~ ~ ~-6
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1}] at @s if block ~5 ~ ~ air run summon 4ks_ring:seed ~-6 ~ ~
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=1}] at @s if block ~-5 ~ ~ air run summon 4ks_ring:seed ~6 ~ ~
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=3}] at @s run playanimation @e[type=4ks_ring:seed] animation.4ks_ring.seed.start f 100
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=100}] at @s run execute as @e[type=4ks_ring:seed] at @s run particle 4ks_ring:seed_explosion
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=100}] at @s run tp @e[type=4ks_ring:seed] ~ ~-100 ~
execute as @p[tag=4ks_ring_n,scores={4ks_ring_nature=104}] at @s run kill @e[type=4ks_ring:seed]
tag @a[scores={4ks_ring_nature=105}] remove 4ks_ring_n
scoreboard players set @p[r=1,scores={4ks_ring_nature=105}] 4ks_ring_nature 0

scoreboard players add @p[r=1,tag=4ks_ring_e] 4ks_ring_ender 1
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=1}] at @s run gamerule sendcommandfeedback false
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=1}] at @s run effect @s darkness 1 255 true

execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5}] at @s run playsound mob.endermen.portal @a[r=20]
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=5..20}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.2 ^1 facing ^ ^ ^10
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=20}] at @s run particle 4ks_ring:tp_poof
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=20}] at @s run particle 4ks_ring:ender_snow
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=20}] at @s run effect @e[r=16,family=mob] instant_damage 5 5 true
execute as @p[tag=4ks_ring_e,scores={4ks_ring_ender=20}] at @s run effect @e[r=16,family=mob] wither 5 1 true

tag @a[scores={4ks_ring_ender=25}] remove 4ks_ring_e
scoreboard players set @p[r=1,scores={4ks_ring_ender=25}] 4ks_ring_ender 0


execute as @e[type=4ks_ring:rock_minion] at @s run kill @e[name="Pointed Dripstone",r=4]

execute as @e[family=minion,rm=18] at @s run tp @s ~ ~ ~ facing @p
spreadplayers ~ ~ 1 3 @e[family=minion,rm=18]

execute as @e[type=4ks_ring:water_ball] at @s run particle 4ks_ring:water_ball