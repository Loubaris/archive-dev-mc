gamerule commandblockoutput false
gamerule sendcommandfeedback false
scoreboard objectives add time dummy
scoreboard objectives add lucky dummy
scoreboard objectives add score dummy §cTNT_Damages
scoreboard objectives setdisplay sidebar score 

scoreboard players add §eScore score 0
scoreboard players add §bKubo Studios score 1000000

scoreboard players add @e[type=kubo:ignite_thunder_tnt] time 1
execute @e[type=kubo:ignite_thunder_tnt,scores={time=99}] ~ ~ ~ summon lightning_bolt

scoreboard players add @e[type=kubo:ignite_freeze_tnt] time 1
execute @e[type=kubo:ignite_freeze_tnt,scores={time=99}] ~ ~ ~ effect @a[r=10] slowness 5 10 true

scoreboard players add @e[type=kubo:ignite_camo_tnt] time 1
execute @e[type=kubo:ignite_camo_tnt,scores={time=99}] ~ ~ ~ effect @a[r=10] invisibility 5 10 true

scoreboard players add @e[type=kubo:ignite_tripleshot_tnt] time 1
execute @e[type=kubo:ignite_tripleshot_tnt,scores={time=99}] ~ ~ ~ summon tnt ~2 ~ ~
execute @e[type=kubo:ignite_tripleshot_tnt,scores={time=99}] ~ ~ ~ summon tnt ~-2 ~ ~
execute @e[type=kubo:ignite_tripleshot_tnt,scores={time=99}] ~ ~ ~ summon tnt ~ ~ ~-2

scoreboard players add @e[type=kubo:ignite_toxic_tnt] time 1
execute @e[type=kubo:ignite_toxic_tnt,scores={time=99}] ~ ~ ~ effect @a[r=15] wither 2 2 true
execute @e[type=kubo:ignite_toxic_tnt,scores={time=99}] ~ ~ ~ effect @a[r=15] nausea 5 255 true
execute @e[type=kubo:ignite_toxic_tnt,scores={time=99}] ~ ~ ~ effect @a[r=15] slowness 5 2 true

scoreboard players add @e[type=kubo:ignite_diamond_tnt] time 1
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ setblock ~ ~10 ~ chest
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 1 diamond 6
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 2 diamond_chestplate
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 3 diamond_leggings
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 4 diamond_boots
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 5 diamond_helmet
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 6 diamond_pickaxe
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ replaceitem block ~ ~10 ~ slot.container 7 diamond_block 3
execute @e[type=kubo:ignite_diamond_tnt,scores={time=99}] ~ ~ ~ setblock ~ ~10 ~ air 0 destroy
kill @e[name="Chest"]

scoreboard players add @e[type=kubo:ignite_creeper_tnt] time 1
execute @e[type=kubo:ignite_creeper_tnt,scores={time=99}] ~ ~ ~ summon creeper ~8 ~ ~
execute @e[type=kubo:ignite_creeper_tnt,scores={time=99}] ~ ~ ~ summon creeper ~-8 ~ ~
execute @e[type=kubo:ignite_creeper_tnt,scores={time=99}] ~ ~ ~ summon creeper ~ ~ ~-8

execute @e[type=kubo:tnt_launcher] ~ ~ ~ execute @p[r=1] ~ ~ ~ playsound random.explode @a[r=15]
execute @e[type=kubo:tnt_launcher] ~ ~ ~ effect @a[r=1] resistance 5 255 true
execute @e[type=kubo:tnt_launcher] ~ ~ ~ effect @a[r=1] levitation 1 20 true
execute @e[type=kubo:tnt_launcher] ~ ~ ~ execute @p[r=1] ~ ~ ~ kill @e[type=kubo:tnt_launcher,r=3]

scoreboard players add @e[type=arrow] time 1
execute @e[type=arrow,scores={time=1}] ~ ~ ~ summon tnt
execute @e[type=arrow] ~ ~ ~ tp @e[type=tnt] ~ ~ ~
execute @e[type=arrow,scores={time=100}] ~ ~ ~ kill @s

scoreboard players add @e[type=snowball] time 1
execute @e[type=snowball,scores={time=10}] ~ ~ ~ summon kubo:instant_tnt
execute @e[type=snowball,scores={time=10}] ~ ~ ~ kill @s

scoreboard players add @e[type=kubo:ignite_smoke_tnt] time 1
execute @e[type=kubo:ignite_smoke_tnt,scores={time=100}] ~ ~ ~ particle minecraft:campfire_smoke_particle ~ ~ ~
execute @e[type=kubo:ignite_smoke_tnt,scores={time=100}] ~ ~ ~ effect @a[r=10] blindness 5 255 true


scoreboard players add @e[type=kubo:firework_tnt] time 1
execute @e[type=kubo:firework_tnt,scores={time=1}] ~ ~ ~ summon fireworks_rocket
tp @e[type=kubo:firework_tnt] @e[type=fireworks_rocket]

scoreboard players add @e[type=kubo:cantnt] time 1
execute @e[type=kubo:cantnt,scores={time=1}] ~ ~ ~ tp @s ~ ~ ~ facing @e[type=kubo:canon_tnt]
execute @e[type=kubo:cantnt] ~ ~ ~ tp @s ^ ^0.15 ^-0.7 facing @p
execute @e[type=kubo:cantnt] ~ ~ ~ particle minecraft:shulker_bullet ~ ~ ~

scoreboard players add @e[type=kubo:missile] time 1
tag @e[type=kubo:missile,scores={time=100}] add fly
execute @e[type=kubo:missile,tag=fly] ~ ~ ~ tp @s ~ ~-0.3 ~
execute @e[type=kubo:missile,scores={time=125}] ~ ~ ~ summon kubo:instant_tnt
execute @e[type=kubo:missile,scores={time=125}] ~ ~ ~ summon kubo:instant_tnt
execute @e[type=kubo:missile,scores={time=125}] ~ ~ ~ kill @s
execute @e[type=kubo:missile,tag=!placed] ~ ~ ~ tp @s ~ ~ ~ facing @e[type=missile_launcher,r=2]
execute @e[type=kubo:missile,tag=!placed] ~ ~ ~ tag @s add placed
execute @e[type=kubo:missile,tag=!fly] ~ ~ ~ tp @s ^ ^0.2 ^-0.3

execute @e[type=kubo:jetpack] ~ ~ ~ particle minecraft:lava_particle ~ ~-0.2 ~
execute @e[type=kubo:extreme_tnt] ~ ~ ~ particle minecraft:lava_particle ~ ~2 ~
execute @e[type=kubo:missile] ~ ~ ~ particle minecraft:lava_particle ~ ~ ~

scoreboard players add @e[type=kubo:ignite_lucky_tnt] time 1
scoreboard players random @e[type=kubo:lucky_tnt,scores={time=99}] 1 5
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=1}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 diamond_block
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=2}] ~ ~ ~ effect @p levitation 1 8 true
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=3}] ~ ~ ~ summon kubo:tiny_tnt
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=4}] ~ ~ ~ summon tnt ~2 ~ ~
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=4}] ~ ~ ~ summon tnt ~-2 ~ ~
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=4}] ~ ~ ~ summon tnt ~ ~ ~2
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=4}] ~ ~ ~ summon tnt ~ ~ ~-2
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=5}] ~ ~ ~ summon zombie
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=5}] ~ ~ ~ summon zombie ~1 ~ ~
execute @e[type=kubo:ignite_lucky_tnt,scores={lucky=5}] ~ ~ ~ summon zombie ~-1 ~ ~
scoreboard players set @e lucky 0

execute @e[type=kubo:robot_tnt] ~ ~ ~ tp @s ^ ^ ^0.2 facing @p

execute @a ~ ~ ~ execute @e[type=item,r=!3] ~ ~ ~ scoreboard players add §eScore score 1
execute @a ~ ~ ~ execute @e[type=item,r=!3] ~ ~ ~ kill @s
