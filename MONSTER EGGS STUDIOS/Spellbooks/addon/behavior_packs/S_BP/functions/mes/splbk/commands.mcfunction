scoreboard players add @a[scores={mes_splbk_mana=..14}] mes_splbk_manat 1
scoreboard players add @a[scores={mes_splbk_manat=110}] mes_splbk_mana 1
scoreboard players set @a[scores={mes_splbk_manat=110}] mes_splbk_manat 0
scoreboard players set @a[scores={mes_splbk_mana=..-1}] mes_splbk_mana 0

scoreboard players add @p[r=1,tag=mes_sb_fireswrd] mes_splbk_ft 1
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=1}] at @s run tag @s add mes_sb_td
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=1}] at @s run tag @s add mes_sb_fb
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=1}] at @s run effect @p fire_resistance 5 255 true
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=1}] at @s run playsound mes.splbk.fire_ability @a[r=20]
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=6},tag=mes_sb_small] at @s run playanimation @e[type=mes_splbk:boulder_toss] animation.mes_splbk.boulder.small f 1000
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=6},tag=mes_sb_small] at @s run tag @e[type=mes_splbk:boulder_toss] add mes_sb_smallfire
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=6},tag=mes_sb_medium] at @s run playanimation @e[type=mes_splbk:boulder_toss] animation.mes_splbk.boulder.medium f 1000
execute as @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=6},tag=mes_sb_big] at @s run playanimation @e[type=mes_splbk:boulder_toss] animation.mes_splbk.boulder.big f 1000
tag @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=24}] remove mes_sb_td
tag @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=24}] remove mes_sb_small
tag @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=24}] remove mes_sb_medium
tag @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=24}] remove mes_sb_big
tag @p[tag=mes_sb_fireswrd,scores={mes_splbk_ft=25}] remove mes_sb_fireswrd
scoreboard players set @p[r=1,scores={mes_splbk_ft=25}] mes_splbk_ft 0

scoreboard players add @e[type=mes_splbk:boulder_toss] mes_splbk_ft 1
execute as @e[type=mes_splbk:boulder_toss,tag=mes_sb_smallfire] at @s run particle minecraft:mobflame_single ~ ~0.5 ~
execute as @e[type=mes_splbk:boulder_toss,tag=!mes_sb_smallfire] at @s run particle minecraft:mobflame_single ~ ~ ~0.5
execute as @e[type=mes_splbk:boulder_toss,tag=!mes_sb_smallfire] at @s run particle minecraft:mobflame_single ~0.5 ~ ~
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=50}] at @s run playsound random.explode @a[r=30]
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=50}] at @s run gamerule mobgriefing false
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=50}] at @s run summon mes_splbk:instanttnt
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=51}] at @s run gamerule mobgriefing true
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=50},tag=!mes_sb_smallfire] at @s run summon mes_splbk:instanttnt
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=50}] at @s run particle mes_splbk:boulder ~ ~ ~
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=47}] at @s run effect @a resistance 2 255 true
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=50}] at @s run effect @e[r=8,family=mob,family=!inac] instant_damage 1 1 true
execute as @e[type=mes_splbk:boulder_toss,scores={mes_splbk_ft=51}] at @s run kill @s


scoreboard players add @p[r=1,tag=mes_sb_inferno] mes_splbk_ift 1
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=16..80,mes_splbk_book=3}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=1}] at @s run playsound mes.splbk.inferno_ability @a[r=10]
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=1..40}] at @s run particle mes_splbk:inferno_ring ~ ~ ~
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=1}] at @s run effect @s fire_resistance 10 255 true
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=1..40}] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=1}] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 2 255 true
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=81}] at @s run tag @s remove mes_sb_cldown
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=81}] at @s run fill ~-10 ~-1 ~-10 ~10 ~2 ~10 air replace fire
tag @a[tag=mes_sb_inferno,scores={mes_splbk_ift=81}] remove mes_sb_inferno
scoreboard players set @p[r=1,scores={mes_splbk_ift=81}] mes_splbk_ift 0


scoreboard players add @p[r=1,tag=mes_sb_geyser] mes_splbk_gsrt 1
execute as @a[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1..90,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run effect @p fire_resistance 5 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run playsound mes.splbk.fire_ability @a[r=20]
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run summon mes_splbk:geyser ~ ~-100 ~
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run summon mes_splbk:geyser ~ ~-100 ~
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run summon mes_splbk:geyser ~ ~-100 ~
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run tp @e[type=mes_splbk:geyser,c=1,rm=5] ^ ^1 ^2 facing @p[tag=mes_sb_geyser]
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run tp @e[type=mes_splbk:geyser,c=1,rm=5] ^1.5 ^1 ^2 facing @p[tag=mes_sb_geyser]
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run tp @e[type=mes_splbk:geyser,c=1,rm=5] ^-1.5 ^1 ^2 facing @p[tag=mes_sb_geyser]
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=1}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=15}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=15}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=15}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=15}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=15}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=15}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=30}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=30}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=30}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=30}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=30}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=30}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=45}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=45}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=45}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=45}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=45}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=45}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=60}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=60}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=60}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=60}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=60}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=60}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=75}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=75}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=75}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=75}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=75}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=75}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=90}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ^ ^ ^-1
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=90}] at @s run execute as @e[type=mes_splbk:geyser] at @s run effect @e[family=mob,family=!inac,r=2] fatal_poison 4 255 true
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=90}] at @s run execute as @e[type=mes_splbk:geyser] at @s run execute as @e[family=mob,family=!inac,r=2] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=90}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^1 ^ ^ ^2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=90}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ^-1 ^ ^ ^-2 ^ ^ fire replace air
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=90}] at @s run execute as @e[type=mes_splbk:geyser] at @s run playanimation @e[type=mes_splbk:geyser] animation.mes_splbk.geyser.monte
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=107}] at @s run particle mes_splbk:volcano_explode ~ ~1 ~
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=107}] at @s run execute as @e[type=mes_splbk:geyser] at @s run fill ~-10 ~-1 ~-10 ~10 ~2 ~10 air replace fire
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=107}] at @s run playsound cauldron.explode @a[r=10]
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=108}] at @s run execute as @e[type=mes_splbk:geyser] at @s run tp @s ~ ~-100 ~
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=110}] at @s run execute as @e[type=mes_splbk:geyser] at @s run kill @s
execute as @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=110}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_geyser,scores={mes_splbk_gsrt=110}] remove mes_sb_geyser
scoreboard players set @p[r=1,scores={mes_splbk_gsrt=110}] mes_splbk_gsrt 0



scoreboard players add @p[r=1,tag=mes_sb_lava] mes_splbk_lvt 1
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1}] at @s run playsound mes.splbk.fire_ability_2 @a[r=10]
execute as @a[tag=mes_sb_inferno,scores={mes_splbk_ift=2..239,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1}] at @s run summon mes_splbk:lava ~ ~-100 ~
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1}] at @s run execute as @e[family=mob,family=!inac,r=10] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1}] at @s run effect @e[family=mob,r=4] slowness 2 255 true
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1}] at @s run effect @e[type=mes_splbk:lava] invisibility 100 255 true
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1}] at @s run tp @e[type=mes_splbk:lava] ^ ^1 ^2.8 facing @p[tag=mes_sb_lava]
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=4}] at @s run effect @e[type=mes_splbk:lava] clear
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=5}] at @s run playanimation @e[type=mes_splbk:lava] animation.mes_splbk.lava.spawn
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=80}] at @s run playanimation @e[type=mes_splbk:lava] animation.mes_splbk.lava.break1 f 1000
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=87}] at @s run execute as @e[family=mob,family=!inac,r=10] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=87}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:large_explosion ~ ~2 ~
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=87}] at @s run playsound cauldron.explode @a[r=10]
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=160}] at @s run playanimation @e[type=mes_splbk:lava] animation.mes_splbk.lava.break2 f 1000
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=167}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:large_explosion ~ ~1 ~
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=167}] at @s run playsound cauldron.explode @a[r=10]
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=167}] at @s run execute as @e[family=mob,family=!inac,r=10] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=229}] at @s run playanimation @e[type=mes_splbk:lava] animation.mes_splbk.lava.break3 f 1000
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=238}] at @s run particle mes_splbk:volcano_explode ~ ~1 ~
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=238}] at @s run playsound cauldron.explode @a[r=10]
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=238}] at @s run execute as @e[family=mob,family=!inac,r=10] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=240}] at @s run tp @e[type=mes_splbk:lava] ~ ~-100 ~
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=241}] at @s run kill @e[type=mes_splbk:lava]
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=239}] at @s run execute as @e[type=mes_splbk:lava] at @s run fill ~-10 ~-1 ~-10 ~10 ~2 ~10 air replace fire
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=241}] at @s run tag @s remove mes_sb_cldown
tag @a[tag=mes_sb_lava,scores={mes_splbk_lvt=241}] remove mes_sb_lava
scoreboard players set @p[r=1,scores={mes_splbk_lvt=241}] mes_splbk_lvt 0

execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1..87}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^1.3 ^3.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1..87}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^ ^3.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=1..87}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^-1.3 ^3.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=87..167}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^1.3 ^2.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=87..167}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^ ^2.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=87..167}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^-1.3 ^2.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=167..229}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^1.3 ^1.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=167..229}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^ ^1.3 ^
execute as @a[tag=mes_sb_lava,scores={mes_splbk_lvt=167..229}] at @s run execute as @e[type=mes_splbk:lava] at @s run particle minecraft:basic_flame_particle ^-1.3 ^1.3 ^



scoreboard players add @p[r=1,tag=mes_sb_volcano] mes_splbk_vcnt 1
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=1}] at @s run playsound mes.splbk.fire_ability @a[r=20]
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=16..90,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=1}] at @s run summon mes_splbk:volcano ^ ^1.8 ^5 
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=1..5}] at @s run execute as @e[type=mes_splbk:volcano] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=1}] at @s run effect @e[type=mes_splbk:volcano] invisibility 1 255 true
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=3}] at @s run effect @e[type=mes_splbk:volcano] invisibility 0
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=3}] at @s run playanimation @e[type=mes_splbk:volcano] animation.mes_splbk.volcano.start f 100
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=1..94}] at @s run execute as @e[type=mes_splbk:volcano] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=15,family=mob,type=!mes_splbk:volcano] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=1..85}] at @s run execute as @e[type=mes_splbk:volcano] at @s run particle mes_splbk:volcano ~ ~2 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=24}] at @s run execute as @e[type=mes_splbk:volcano] at @s run particle mes_splbk:volcano_explode ~ ~2 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=44}] at @s run execute as @e[type=mes_splbk:volcano] at @s run particle mes_splbk:volcano_explode ~ ~2 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=64}] at @s run execute as @e[type=mes_splbk:volcano] at @s run particle mes_splbk:volcano_explode ~ ~2 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=94}] at @s run execute as @e[type=mes_splbk:volcano] at @s run particle mes_splbk:volcano_explode ~ ~2 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=24}] at @s run execute as @e[type=mes_splbk:volcano] at @s run playsound cauldron.explode @a[r=15]
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=44}] at @s run execute as @e[type=mes_splbk:volcano] at @s run playsound cauldron.explode @a[r=15]
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=64}] at @s run execute as @e[type=mes_splbk:volcano] at @s run playsound cauldron.explode @a[r=15]
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=94}] at @s run execute as @e[type=mes_splbk:volcano] at @s run playsound cauldron.explode @a[r=15]
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=24}] at @s run gamerule mobgriefing false
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=24}] at @s run execute as @e[type=mes_splbk:volcano] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=15,family=mob,type=!mes_splbk:volcano] at @s run summon mes_splbk:miniinstanttnt
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=44}] at @s run execute as @e[type=mes_splbk:volcano] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=15,family=mob,type=!mes_splbk:volcano] at @s run summon mes_splbk:miniinstanttnt
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=64}] at @s run execute as @e[type=mes_splbk:volcano] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=15,family=mob,type=!mes_splbk:volcano] at @s run summon mes_splbk:miniinstanttnt
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=94}] at @s run execute as @e[type=mes_splbk:volcano] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=15,family=mob,type=!mes_splbk:volcano] at @s run summon mes_splbk:miniinstanttnt
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=94}] at @s run execute as @e[type=mes_splbk:volcano] at @s run tp @s ~ ~-100 ~
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=93}] at @s run execute as @e[type=mes_splbk:volcano] at @s run fill ~-12 ~-3 ~-12 ~12 ~2 ~12 air replace fire
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=100}] at @s run gamerule mobgriefing true
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=100}] at @s run kill @e[type=mes_splbk:volcano]
execute as @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=101}] at @s run tag @s remove mes_sb_cldown
tag @a[tag=mes_sb_volcano,scores={mes_splbk_vcnt=101}] remove mes_sb_volcano
scoreboard players set @p[r=1,scores={mes_splbk_vcnt=101}] mes_splbk_vcnt 0

execute as @e[type=mes_splbk:volcano,tag=!playanim] at @s run playanimation @s animation.mes_splbk.volcano.spawn
execute as @e[type=mes_splbk:volcano,tag=!playanim] at @s run tag @s add playanim


scoreboard players add @p[r=1,tag=mes_sb_snow] mes_splbk_mlt 1
execute as @a[tag=mes_sb_snow,scores={mes_splbk_mlt=16..140,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=1}] at @s run summon mes_splbk:snow_golem
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=1..}] at @s run execute as @e[type=mes_splbk:snow_golem,r=10] at @s run particle mes_splbk:snowman ~ ~ ~
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=1}] at @s run spreadplayers ~ ~ 7 10 @p
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=2}] at @s run tp @s ~ ~ ~ facing @e[type=mes_splbk:snow_golem]
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=2}] at @s run particle mes_splbk:frost_poof ~ ~ ~
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=2}] at @s run effect @e[type=mes_splbk:snow_golem] slowness 7 255 true
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=2}] at @s run effect @e[type=mes_splbk:snow_golem] resistance 7 5 true
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=1}] at @s run playsound mob.snowgolem.death @a[r=20]
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=150}] at @s run tp @e[type=mes_splbk:snow_golem] ~ ~-100 ~
execute as @p[tag=mes_sb_snow,scores={mes_splbk_mlt=150}] at @s run playsound mob.snowgolem.death @a[r=20]
execute as @a[tag=mes_sb_snow,scores={mes_splbk_mlt=150}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_snow,scores={mes_splbk_mlt=150}] add mes_revmsnow
tag @p[tag=mes_sb_snow,scores={mes_splbk_mlt=150}] remove mes_sb_snow
scoreboard players set @p[tag=mes_revmsnow,scores={mes_splbk_mlt=150}] mes_splbk_mlt 0
tag @p remove mes_revmsnow


scoreboard players add @p[r=1,tag=mes_sb_hdblt] mes_splbk_mlt 1
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run execute as @e[r=10,type=!mes_splbk:maelstrom,type=!item,type=!player,family=!inac,family=!npc,family=mob] at @s run tag @p[tag=mes_sb_hdblt] add mes_sb_yes
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run titleraw @p[tag=mes_sb_hdblt,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run scoreboard players add @p[tag=mes_sb_hdblt,tag=!mes_sb_yes] mes_splbk_mana 3
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run scoreboard players set @p[tag=mes_sb_hdblt,tag=!mes_sb_yes] mes_splbk_mlt 49
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run execute as @e[r=10,type=!mes_splbk:maelstrom,type=!item,type=!player,family=!inac,family=!npc,family=mob] at @s run particle mes_splbk:hydroblast
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run execute as @e[r=10,type=!mes_splbk:maelstrom,type=!item,type=!player,family=!inac,family=!npc,family=mob] at @s run particle mes_splbk:hydroblast_bubble
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run execute as @e[r=10,type=!mes_splbk:maelstrom,type=!item,type=!player,family=!inac,family=!npc,family=mob] at @s run effect @s levitation 1 16 true
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=1}] at @s run playsound mob.breeze.charge @a[r=20]
execute as @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=5}] at @s run tag @a[tag=mes_sb_hdblt] remove mes_sb_yes
tag @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=50}] add removetimeblde
tag @p[tag=mes_sb_hdblt,scores={mes_splbk_mlt=50}] remove mes_sb_hdblt
scoreboard players set @p[tag=removetimeblde,scores={mes_splbk_mlt=50}] mes_splbk_mlt 0
tag @p remove removetimeblde

scoreboard players add @p[r=1,tag=mes_sb_mlstrm] mes_splbk_mlt 1
execute as @p[r=1,scores={mes_splbk_mlt=16..99,mes_splbk_book=1},tag=mes_sb_mlstrm] at @s run tag @s add mes_sb_cldown
execute as @p[r=1,scores={mes_splbk_mlt=1},tag=mes_sb_mlstrm] at @s run summon mes_splbk:maelstrom ^ ^2 ^5
execute as @p[r=1,scores={mes_splbk_mlt=1},tag=mes_sb_mlstrm] at @s run playsound firework.shoot @p[r=10]
execute as @p[r=1,scores={mes_splbk_mlt=13},tag=mes_sb_mlstrm] at @s run playsound mob.breeze.idle_ground @a[r=10]
execute as @p[r=1,scores={mes_splbk_mlt=80},tag=mes_sb_mlstrm] at @s run playsound mob.breeze.inhale @a[r=10]
execute as @e[type=mes_splbk:maelstrom] at @s run particle mes_splbk:maelstrom ~ ~ ~
execute as @e[type=mes_splbk:maelstrom] at @s run execute as @e[r=16,family=mob,type=!mes_splbk:maelstrom,type=!item,tag=!maelstrom,type=!player,family=!inac,family=!npc,type=!armor_stand] at @s run tp @s ^ ^0.15 ^0.35 facing @e[type=mes_splbk:maelstrom]
execute as @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] at @s run execute as @e[type=mes_splbk:maelstrom] at @s run effect @e[r=16,type=!mes_splbk:maelstrom,family=mob,type=!item,tag=!maelstrom] instant_damage 2 255 true
execute as @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] at @s run execute as @e[type=mes_splbk:maelstrom] at @s run particle mes_splbk:bubble_air ~ ~2 ~
execute as @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] at @s run execute as @e[type=mes_splbk:maelstrom] at @s run particle mes_splbk:bubble_air ~ ~3 ~
execute as @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] at @s run playsound cauldron.explode @a[r=20]
execute as @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] at @s run execute as @e[type=mes_splbk:maelstrom] at @s run kill @s
execute as @p[r=1,scores={mes_splbk_mlt=100},tag=mes_sb_mlstrm] at @s run tag @s remove mes_sb_cldown
tag @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] add removetimec
tag @p[r=1,scores={mes_splbk_mlt=100..},tag=mes_sb_mlstrm] remove mes_sb_mlstrm
scoreboard players set @p[r=1,tag=removetimec,scores={mes_splbk_mlt=100..}] mes_splbk_mlt 0
tag @p remove removetimec


scoreboard players add @p[r=1,tag=mes_sb_bble] mes_splbk_bt 1
execute as @a[tag=mes_sb_bble,scores={mes_splbk_bt=16..29,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_bble,scores={mes_splbk_bt=1}] at @s run particle mes_splbk:bubble_launch ^ ^1 ^1.2
execute as @p[tag=mes_sb_bble,scores={mes_splbk_bt=1}] at @s run playsound mob.breeze.slide @a[r=5]
execute as @p[tag=mes_sb_bble,scores={mes_splbk_bt=1}] at @s run tag @s add mes_sb_bbll
execute as @p[tag=mes_sb_bble,scores={mes_splbk_bt=35}] at @s run particle mes_splbk:bubble ~ ~1.5 ~
execute as @p[tag=mes_sb_bble,scores={mes_splbk_bt=35}] at @s run kill @e[type=mes_splbk:bubble_shoot]
execute as @p[tag=mes_sb_bble,scores={mes_splbk_bt=35}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_bble,scores={mes_splbk_bt=35}] remove mes_sb_bble
scoreboard players set @p[r=1,scores={mes_splbk_bt=35}] mes_splbk_bt 0

execute as @e[type=mes_splbk:bubble_shoot] at @s run particle mes_splbk:bubble_launch ~ ~ ~
execute as @e[type=mes_splbk:bubble_shoot] at @s run tp @e[family=mob,type=!player,r=4] ~ ~ ~
execute as @e[type=mes_splbk:bubble_shoot] at @s run effect @e[family=mob,type=!player,r=4] fatal_poison 3 255 true

scoreboard players add @p[r=1,tag=mes_sb_water] mes_splbk_mlt 1
execute as @a[tag=mes_sb_water,scores={mes_splbk_mlt=16..90,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=1}] at @s run effect @p fire_resistance 5 255 true
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=1}] at @s run playsound cauldron.takewater @a[r=10]
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=75}] at @s run playsound mob.breeze.idle_air @a[r=10]
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=1}] at @s run summon mes_splbk:water ~ ~ ~
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=1..}] at @s run execute as @e[type=mes_splbk:water] at @s run particle mes_splbk:water ~ ~ ~
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=1..}] at @s run execute as @e[type=mes_splbk:water] at @s run execute as @e[family=mob,type=!mes_splbk:water,r=10] at @s run tp @s ^ ^0.5 ^-0.4 facing @e[type=mes_splbk:water]
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=97}] at @s run execute as @e[type=mes_splbk:water] at @s run particle mes_splbk:bubble ~ ~3 ~
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=97}] at @s run execute as @e[type=mes_splbk:water] at @s run playsound cauldron.explode @a[r=15]
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=98}] at @s run tp @e[type=mes_splbk:water] ~ ~-100 ~
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=100}] at @s run kill @e[type=mes_splbk:water]
execute as @p[tag=mes_sb_water,scores={mes_splbk_mlt=100}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_water,scores={mes_splbk_mlt=100}] add mes_revww
tag @p[tag=mes_sb_water,scores={mes_splbk_mlt=100}] remove mes_sb_water
scoreboard players set @p[tag=mes_revww,scores={mes_splbk_mlt=100}] mes_splbk_mlt 0
tag @p[r=1] remove mes_revww


scoreboard players add @p[r=1,tag=mes_sb_iclce] mes_splbk_iclt 1
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=1}] at @s run tag @s add mes_sb_td
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=1}] at @s run particle mes_splbk:icelance_launch ^ ^1 ^1.2
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=2}] at @s run effect @a[r=5,tag=mes_sb_small] speed 5 1 true
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=2}] at @s run effect @a[r=5,tag=mes_sb_medium] speed 5 2 true
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=2}] at @s run effect @a[r=5,tag=mes_sb_big] speed 5 4 true
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=1}] at @s run playsound mes.splbk.banished_ability @a[r=5] 
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=1}] at @s run tag @s add mes_sb_icel
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=6},tag=mes_sb_small] at @s run playanimation @e[type=mes_splbk:icelance_shoot] animation.mes_splbk.icelance.small
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=6},tag=mes_sb_medium] at @s run playanimation @e[type=mes_splbk:icelance_shoot] animation.mes_splbk.icelance.medium
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=6},tag=mes_sb_big] at @s run playanimation @e[type=mes_splbk:icelance_shoot] animation.mes_splbk.icelance.big
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=1..}] at @s run effect @e[family=mob,type=!player,r=6] slowness 5 255 true
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] at @s run execute as @e[type=mes_splbk:icelance_shoot] at @s run particle mes_splbk:icelance_explode
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=34}] at @s run gamerule mobgriefing false
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] at @s run execute as @e[type=mes_splbk:icelance_shoot] at @s run particle mes_splbk:icelance_explode
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] at @s run execute as @e[type=mes_splbk:icelance_shoot] at @s run summon mes_splbk:miniinstanttnt
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] at @s run gamerule mobgriefing true
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35},tag=mes_sb_big] at @s run execute as @e[type=mes_splbk:icelance_shoot] at @s run summon mes_splbk:instanttnt
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] at @s run playsound block.glass.break @a[r=20]
execute as @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] at @s run kill @e[type=mes_splbk:icelance_shoot]
tag @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] remove mes_sb_td
tag @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] remove mes_sb_small
tag @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] remove mes_sb_medium
tag @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] remove mes_sb_big
tag @p[tag=mes_sb_iclce,scores={mes_splbk_iclt=35}] remove mes_sb_iclce
scoreboard players set @p[r=1,scores={mes_splbk_iclt=35}] mes_splbk_iclt 0

execute as @e[type=mes_splbk:icelance_shoot] at @s run particle minecraft:falling_dust_top_snow_particle ~ ~ ~

scoreboard players add @p[r=1,tag=mes_sb_wave] mes_splbk_mlt 1
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=16..100,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1}] at @s run playsound bucket.fill_water @a[r=10]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1}] at @s run summon mes_splbk:nothing ~ ~ ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1}] at @s run summon mes_splbk:wave ~ ~-100 ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=2}] at @s run particle mes_splbk:wave_launch ^ ^1 ^1
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1}] at @s run effect @e[family=mob,r=4] slowness 2 255 true
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1}] at @s run effect @e[type=mes_splbk:wave] invisibility 100 255 true
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1}] at @s run tp @e[type=mes_splbk:wave] ^ ^1 ^2 facing @p[tag=mes_sb_wave]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1..7}] at @s run execute as @e[type=mes_splbk:wave] at @s if block ~ ~-0.3 ~ air run tp @s ~ ~-0.3 ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=8..}] at @s run execute as @e[type=mes_splbk:wave] at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=6}] at @s run effect @e[type=mes_splbk:wave] clear
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=6}] at @s run playanimation @e[type=mes_splbk:wave] animation.mes_splbk.wave.start
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=8}] at @s run playsound liquid.water @a[r=10]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=30}] at @s run playsound liquid.water @a[r=10]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=70}] at @s run playsound liquid.water @a[r=10]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=8..107}] at @s run execute as @e[type=mes_splbk:wave] at @s if block ^ ^ ^-1.42 air run tp @s ^ ^ ^-0.42 facing @e[type=mes_splbk:nothing]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=8..107}] at @s run execute as @e[type=mes_splbk:wave] at @s run tp @e[family=mob,family=!inac,family=!npc,r=3] ^ ^ ^-0.80
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=108}] at @s run tp @e[type=mes_splbk:nothing] ~ ~-100 ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=108}] at @s run execute as @e[type=mes_splbk:wave] at @s run playsound cauldron.explode @a ~ ~ ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=108}] at @s run execute as @e[type=mes_splbk:wave] at @s run particle mes_splbk:bubble ~ ~2 ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=108}] at @s run execute as @e[type=mes_splbk:wave] at @s run tp @s ~ ~-100 ~
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=112}] at @s run kill @e[type=mes_splbk:wave]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=112}] at @s run kill @e[type=mes_splbk:nothing]
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=112}] at @s run tag @s remove mes_sb_cldown
tag @a[tag=mes_sb_wave,scores={mes_splbk_mlt=112}] add mes_revww
tag @a[tag=mes_sb_wave,scores={mes_splbk_mlt=112}] remove mes_sb_wave
scoreboard players set @p[tag=mes_revww,scores={mes_splbk_mlt=112}] mes_splbk_mlt 0
tag @p remove mes_revww

execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=1..111}] at @s run execute as @e[type=mes_splbk:wave] at @s run particle mes_splbk:wave
execute as @a[tag=mes_sb_wave,scores={mes_splbk_mlt=8..111}] at @s run execute as @e[type=mes_splbk:wave] at @s run particle mes_splbk:wave_launch ^ ^ ^1






scoreboard players add @p[r=1,tag=mes_sb_stnfsts] mes_splbk_stnt 1
execute as @p[tag=mes_sb_stnfsts,scores={mes_splbk_stnt=16..110,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_stnfsts,scores={mes_splbk_stnt=1}] at @s run playsound mes.splbk.fire_ability @a[r=20]
execute as @p[tag=mes_sb_stnfsts,scores={mes_splbk_stnt=1}] at @s run tag @s add mes_sb_stnl
execute as @p[tag=mes_sb_stnfsts,scores={mes_splbk_stnt=120}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_stnfsts,scores={mes_splbk_stnt=120}] remove mes_sb_stnfsts
scoreboard players set @p[r=1,scores={mes_splbk_stnt=120}] mes_splbk_stnt 0

scoreboard players add @e[type=mes_splbk:stone_boulder] mes_splbk_stnt 1
execute as @e[type=mes_splbk:stone_boulder] at @s run particle mes_splbk:stone_boulder_ambient ~ ~ ~
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=116}] at @s run effect @a resistance 2 255 true
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=120}] at @s run playsound random.explode @a[r=30]
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=120}] at @s run gamerule mobgriefing false
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=121}] at @s run gamerule mobgriefing true
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=120}] at @s run summon mes_splbk:instanttnt
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=120}] at @s run summon mes_splbk:instanttnt
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=120}] at @s run particle mes_splbk:stone_boulder_explode ~ ~ ~
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=120}] at @s run effect @e[r=8] instant_damage 3 1 true
execute as @e[type=mes_splbk:stone_boulder,scores={mes_splbk_stnt=121}] at @s run kill @s

scoreboard players add @p[r=1,tag=mes_sb_stnbdy] mes_splbk_stnbt 1
execute as @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=16..1000,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=1}] at @s run effect @p health_boost 30 4 true
execute as @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=2}] at @s run effect @p instant_health 1 255 true
execute as @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=2}] at @s run effect @p jump_boost 30 2 true
execute as @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=1}] at @s run playsound mes.splbk.heart_ability @a[r=20]
execute as @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=1001}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=1001}] add mes_revstb
tag @p[tag=mes_sb_stnbdy,scores={mes_splbk_stnbt=1001}] remove mes_sb_stnbdy
scoreboard players set @p[tag=mes_revstb,scores={mes_splbk_stnbt=1001}] mes_splbk_stnbt 0
tag @p remove mes_revstb

scoreboard players add @p[r=1,tag=mes_sb_aval] mes_splbk_avlt 1
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=16..85,mes_splbk_book=3}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run playsound mes.splbk.boulder_ability @a[r=20] 
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run execute as @e[r=15,family=mob,type=!mes_splbk:avalanche] at @s run summon mes_splbk:avalanche ~ ~20 ~
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run execute as @e[r=15,family=mob,type=!mes_splbk:avalanche] at @s run tag @p[tag=mes_sb_aval] add mes_sb_yes
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run titleraw @p[tag=mes_sb_aval,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run scoreboard players add @p[tag=mes_sb_aval,tag=!mes_sb_yes] mes_splbk_mana 3
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run scoreboard players set @p[tag=mes_sb_aval,tag=!mes_sb_yes] mes_splbk_avlt 80
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1}] at @s run effect @e[r=18,family=mob,type=!mes_splbk:avalanche] slowness 5 255 true
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=2}] at @s run playanimation @e[type=mes_splbk:avalanche] animation.mes_splbk.avalanche.start
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1..}] at @s run execute as @e[r=15,family=mob,type=!mes_splbk:avalanche] at @s run execute as @e[type=mes_splbk:avalanche,r=1.8] at @s run summon mes_splbk:miniinstanttnt ~ ~-1.5 ~
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1..}] at @s run execute as @e[r=15,family=mob,type=!mes_splbk:avalanche] at @s run execute as @e[type=mes_splbk:avalanche,r=1.8] at @s run particle mes_splbk:avalanche_explode
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1..}] at @s run execute as @e[r=15,family=mob,type=!mes_splbk:avalanche] at @s run execute as @e[type=mes_splbk:avalanche,r=1.8] at @s run effect @e[r=2,family=mob,type=!mes_splbk:avalanche] instant_damage 1 1 true
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=1..}] at @s run execute as @e[r=15,family=mob,type=!mes_splbk:avalanche] at @s run tp @e[type=mes_splbk:avalanche,r=1.5] ~ ~-100 ~
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=80}] at @s run tp @e[type=mes_splbk:avalanche] ~ ~-100 ~
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=82}] at @s run kill @e[type=mes_splbk:avalanche]
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=5}] at @s run tag @p[tag=mes_sb_aval] remove mes_sb_yes
execute as @p[tag=mes_sb_aval,scores={mes_splbk_avlt=99}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_aval,scores={mes_splbk_avlt=100}] remove mes_sb_aval
scoreboard players set @p[r=1,scores={mes_splbk_avlt=100}] mes_splbk_avlt 0

scoreboard players add @p[r=1,tag=mes_sb_entomb] mes_splbk_etbt 1
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=16..85,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run playsound mes.splbk.boulder_ability @a[r=20]
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run execute as @e[r=12,family=mob,rm=1] at @s run summon mes_splbk:entomb
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run execute as @e[r=12,family=mob,rm=1] at @s run tag @p[tag=mes_sb_entomb] add mes_sb_yes
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run titleraw @p[tag=mes_sb_entomb,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run scoreboard players add @p[tag=mes_sb_entomb,tag=!mes_sb_yes] mes_splbk_mana 3
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run scoreboard players set @p[tag=mes_sb_entomb,tag=!mes_sb_yes] mes_splbk_etbt 80
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=1}] at @s run effect @e[r=12,family=mob] slowness 6 255 true
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=3}] at @s run playanimation @e[type=mes_splbk:entomb] animation.mes_splbk.entomb.start
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=79}] at @s run gamerule mobgriefing false
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=80}] at @s run execute as @e[r=12,family=mob] at @s run summon mes_splbk:miniinstanttnt
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=82}] at @s run gamerule mobgriefing true
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=80}] at @s run execute as @e[r=12,family=mob] at @s run particle mes_splbk:stone_boulder_explode
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=81}] at @s run tp @e[type=mes_splbk:entomb] ~ ~-100 ~
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=82}] at @s run kill @e[type=mes_splbk:entomb]
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=5}] at @s run tag @p[tag=mes_sb_entomb] remove mes_sb_yes
execute as @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=99}] at @s run tag @s remove mes_sb_cldown 
tag @p[tag=mes_sb_entomb,scores={mes_splbk_etbt=100}] remove mes_sb_entomb
scoreboard players set @p[r=1,scores={mes_splbk_etbt=100}] mes_splbk_etbt 0

scoreboard players add @p[r=1,tag=mes_sb_earqke] mes_splbk_erqt 1
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=16..90,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=1}] at @s run effect @p resistance 5 255 true
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=1}] at @s run playsound mes.splbk.inferno_ability @a[r=20]
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=1}] at @s run particle mes_splbk:earthquake_launch ~ ~ ~
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=9..40}] at @s run particle mes_splbk:earthquake ~ ~ ~
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=10}] at @s run camerashake add @a[r=15] 1 1 positional
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=10}] at @s run effect @e[family=mob,family=!npc,type=!player,r=15] fatal_poison 4 255 true
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=10}] at @s run effect @e[family=mob,family=!npc,type=!player,r=15] slowness 4 255 true
execute as @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=99}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_earqke,scores={mes_splbk_erqt=100}] remove mes_sb_earqke
scoreboard players set @p[r=1,scores={mes_splbk_erqt=100}] mes_splbk_erqt 0

scoreboard players add @p[r=1,tag=mes_sb_skltn] mes_splbk_ncrt 1
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=16..250,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=5}] at @s run playsound mob.skeleton.say @a[r=15]
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=1}] at @s run playsound dig.grass @a[r=15]
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=1}] at @s run tag @s add mes_sb_td
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=1}] at @s run playsound mes.splbk.mes_sb_inferno_ability @a[r=15]
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nskeleton ~ ~-2.1 ~2
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nskeleton ~ ~-2.1 ~-2
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nskeleton ~2 ~-2.1 ~
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=2},tag=mes_sb_medium] at @s run summon mes_splbk:nskeleton ~2 ~-2.1 ~2
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=2},tag=mes_sb_big] at @s run summon mes_splbk:nskeleton ~2 ~-2.1 ~2
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=2},tag=mes_sb_big] at @s run summon mes_splbk:nskeleton ~-2 ~-2.1 ~-2
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=3}] at @s run playanimation @e[type=mes_splbk:nskeleton] animation.evoker.casting f 3
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=3..26}] at @s run execute as @e[type=mes_splbk:nskeleton,r=10] at @s run tp @s ~ ~0.1 ~ 
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=3..26}] at @s run execute as @e[type=mes_splbk:nskeleton,r=10] at @s if block ~ ~-0.2 ~ air run tp @s ~ ~-0.1 ~ 
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=2..5}] at @s run execute as @e[type=mes_splbk:nskeleton] at @s run particle mes_splbk:ground ~ ~2.0 ~
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=258}] at @s run execute as @e[type=mes_splbk:nskeleton] at @s run particle mes_splbk:poof ~ ~ ~
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=259}] at @s run execute as @e[type=mes_splbk:nskeleton] at @s run tp @s ~ ~-100 ~
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=262}] at @s run kill @e[type=mes_splbk:nskeleton] 
execute as @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=262}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=263}] remove mes_sb_td
tag @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=263}] remove mes_sb_small
tag @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=263}] remove mes_sb_medium
tag @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=263}] remove mes_sb_big
tag @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=263}] add mes_revns
tag @p[tag=mes_sb_skltn,scores={mes_splbk_ncrt=263}] remove mes_sb_skltn
scoreboard players set @p[tag=mes_revns,scores={mes_splbk_ncrt=263}] mes_splbk_ncrt 0
tag @p remove mes_revns

scoreboard players add @p[r=1,tag=mes_sb_zmbie] mes_splbk_ncrt 1
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=16..250,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=5}] at @s run playsound mob.zombie.say @a[r=15]
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=1}] at @s run playsound dig.grass @a[r=15]
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=1}] at @s run playsound mes.splbk.mes_sb_inferno_ability @a[r=15]
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=1}] at @s run tag @s add mes_sb_td
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nzombie ~ ~-2.1 ~2
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nzombie ~ ~-2.1 ~-2
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nzombie ~2 ~-2.1 ~
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=2},tag=mes_sb_medium] at @s run summon mes_splbk:nzombie ~-2 ~-2.1 ~
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=2},tag=mes_sb_big] at @s run summon mes_splbk:nzombie ~-2 ~-2.1 ~
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=2},tag=mes_sb_big] at @s run summon mes_splbk:nzombie ~2 ~-2.1 ~2
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=3}] at @s run playanimation @e[type=mes_splbk:nzombie] animation.evoker.casting f 3
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=3..26}] at @s run execute as @e[type=mes_splbk:nzombie,r=10] at @s run tp @s ~ ~0.1 ~ 
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=3..26}] at @s run execute as @e[type=mes_splbk:nzombie,r=10] at @s if block ~ ~-0.2 ~ air run tp @s ~ ~0.1 ~ 
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=2..5}] at @s run execute as @e[type=mes_splbk:nzombie] at @s run particle mes_splbk:ground ~ ~2.0 ~
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=258}] at @s run execute as @e[type=mes_splbk:nzombie] at @s run particle mes_splbk:poof ~ ~ ~
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=259}] at @s run execute as @e[type=mes_splbk:nzombie] at @s run tp @s ~ ~-1000 ~
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=262}] at @s run kill @e[type=mes_splbk:nzombie] 
execute as @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=262}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=263}] remove mes_sb_td
tag @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=263}] remove mes_sb_small
tag @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=263}] remove mes_sb_medium
tag @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=263}] remove mes_sb_big
tag @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=263}] add mes_revnz
tag @p[tag=mes_sb_zmbie,scores={mes_splbk_ncrt=263}] remove mes_sb_zmbie
scoreboard players set @p[tag=mes_revnz,scores={mes_splbk_ncrt=263}] mes_splbk_ncrt 0
tag @p remove mes_revnz

scoreboard players add @p[r=1,tag=mes_sb_mnion] mes_splbk_mnt 1
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=16..40,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown 
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run playsound mes.splbk.fire_ability @a[r=20]
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run tag @e[type=mes_splbk:nskeleton,c=1,r=10] add minionanim
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run tag @e[type=mes_splbk:nzombie,c=1,r=15] add minionanim
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run execute as @e[type=mes_splbk:nzombie,c=1,r=15] at @s run tag @p[tag=mes_sb_mnion] add mes_sb_yes
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run execute as @e[type=mes_splbk:nskeleton,c=1,r=15] at @s run tag @p[tag=mes_sb_mnion] add mes_sb_yes
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run titleraw @p[tag=mes_sb_mnion,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.nominion.text" } ] }
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run scoreboard players add @p[tag=mes_sb_mnion,tag=!mes_sb_yes] mes_splbk_mana 2
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run scoreboard players set @p[tag=mes_sb_mnion,tag=!mes_sb_yes] mes_splbk_mnt 50
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1..}] at @s run execute as @e[tag=minionanim] at @s run particle mes_splbk:necro_poof ~ ~1.8 ~
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=1}] at @s run playanimation @e[tag=minionanim] animation.mes_splbk.necro.boom f 100
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=49}] at @s run execute as @e[tag=minionanim] at @s run effect @e[r=15,family=mob] fatal_poison 5 255 true
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=49}] at @s run execute as @e[tag=minionanim] at @s run gamerule mobgriefing false
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=49}] at @s run execute as @e[tag=minionanim] at @s run summon mes_splbk:instanttnt ~ ~2.1 ~
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=50}] at @s run execute as @e[tag=minionanim] at @s run gamerule mobgriefing true
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=50}] at @s run execute as @e[tag=minionanim] at @s run kill @s
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=50}] at @s run tag @s remove mes_sb_cldown
execute as @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=5}] at @s run tag @a[tag=mes_sb_mnion] remove mes_sb_yes
tag @p[tag=mes_sb_mnion,scores={mes_splbk_mnt=50}] remove mes_sb_mnion
scoreboard players set @p[r=1,scores={mes_splbk_mnt=50}] mes_splbk_mnt 0

scoreboard players add @p[r=1,tag=mes_sb_totem] mes_splbk_ttmt 1
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1}] at @s run replaceitem entity @e[r=15,family=mob] slot.weapon.offhand 0 totem_of_undying
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1}] at @s run playsound random.totem @a[r=15]
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1}] at @s run particle minecraft:totem_particle ~ ~ ~
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1}] at @s run replaceitem entity @s slot.weapon.offhand 0 totem_of_undying
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1}] at @s run replaceitem entity @e[r=15,family=necro] slot.weapon.offhand 0 totem_of_undying
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1..20}] at @s run execute as @e[r=15,family=mob,hasitem={location=slot.weapon.offhand,slot=0,item=totem_of_undying},c=1] at @s run particle minecraft:totem_particle
execute as @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=1..20}] at @s run execute as @e[r=15,family=necro,hasitem={location=slot.weapon.offhand,slot=0,item=totem_of_undying},c=1] at @s run particle minecraft:totem_particle
tag @p[tag=mes_sb_totem,scores={mes_splbk_ttmt=40}] remove mes_sb_totem
scoreboard players set @p[r=1,scores={mes_splbk_ttmt=40}] mes_splbk_ttmt 0


scoreboard players add @p[r=1,tag=mes_sb_drk] mes_splbk_drkt 1
execute as @p[tag=mes_sb_drk,scores={mes_splbk_drkt=1}] at @s run tag @s add mes_sb_drksh
execute as @p[tag=mes_sb_drk,scores={mes_splbk_drkt=1}] at @s run effect @e[r=5] darkness 2 255 true
tag @p[tag=mes_sb_drk,scores={mes_splbk_drkt=40}] remove mes_sb_drk
scoreboard players set @p[r=1,scores={mes_splbk_drkt=40}] mes_splbk_drkt 0

scoreboard players add @e[type=mes_splbk:dark_shoot] mes_splbk_drkt 1
execute as @e[type=mes_splbk:dark_shoot] at @s run particle mes_splbk:darkshoot ~ ~ ~
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=50}] at @s run playsound random.explode @a[r=30]
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=40..50}] at @s run particle mes_splbk:dark ~ ~ ~
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=50}] at @s run tag @e[r=8,type=!player,family=mob,family=!inac,type=!mes_splbk:dark_shoot] add darkexplosion
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=50}] at @s run effect @e[r=8,type=!player,family=mob,family=!inac,type=!mes_splbk:dark_shoot] levitation 1 13 true
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=50}] at @s run effect @e[r=8,type=!player,family=mob,family=!inac,type=!mes_splbk:dark_shoot] fatal_poison 1 3 true
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=62}] at @s run gamerule mobgriefing false
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=62}] at @s run execute as @e[tag=darkexplosion] at @s run summon mes_splbk:instanttnt
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=62}] at @s run gamerule mobgriefing true
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=62}] at @s run execute as @e[tag=darkexplosion] at @s run particle mes_splbk:dark_explode ~ ~ ~
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=62}] at @s run tag @e[tag=darkexplosion] remove darkexplosion
execute as @e[type=mes_splbk:dark_shoot,scores={mes_splbk_drkt=63}] at @s run kill @s

scoreboard players add @p[r=1,tag=mes_sb_wolf] mes_splbk_wlft 1
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=16..190,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=1}] at @s run playsound mes.splbk.necro_ability @a[r=15]
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=1}] at @s run summon mes_splbk:wolf ~ ~ ~1
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=1}] at @s run summon mes_splbk:wolf ~ ~ ~-1
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=1}] at @s run effect @e[type=wolf,r=3] strength 10 2 true
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=1}] at @s run effect @e[type=wolf,r=3] resistance 10 10 true
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=198}] at @s run execute as @e[type=wolf] at @s run particle mes_splbk:poof ~ ~ ~
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=199}] at @s run execute as @e[type=wolf] at @s run tp @s ~ ~-1000 ~
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=202}] at @s run kill @e[type=wolf] 
execute as @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=202}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_wolf,scores={mes_splbk_wlft=202}] remove mes_sb_wolf
scoreboard players set @p[r=1,scores={mes_splbk_wlft=202}] mes_splbk_wlft 0


scoreboard players add @p[r=1,tag=mes_sb_spider] mes_splbk_drdt 1
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=16..600,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run titleraw @p[tag=mes_sb_spider] actionbar { "rawtext" : [ { "translate" : "mes_splbk.sneakdruid.text" } ] }
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run effect @s invisibility 30 255 true
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=5..595}] at @s run execute as @e[tag=spiderdruid,rm=1.75] at @s run scoreboard players set @p[tag=mes_sb_spider] mes_splbk_drdt 597
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run playsound mes.splbk.sky_ability @a[r=10]
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run effect @p resistance 30 255 true
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run camera @p set minecraft:third_person
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run playanimation @s animation.mes_splbk.human_masked f 10000
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=2}] at @s run particle mes_splbk:poof
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run summon mes_splbk:nrabbit
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=2}] at @s run ride @p[tag=mes_sb_spider] start_riding @e[tag=spiderdruid]
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run tag @e[type=mes_splbk:nrabbit,r=1,c=1] add spiderdruid
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=1}] at @s run effect @e[type=mes_splbk:nrabbit,r=1] resistance 30 255 true
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=597}] at @s run particle mes_splbk:poof
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=599}] at @s run playanimation @s animation.mes_splbk.human_masked
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=597}] at @s run effect @p invisibility 0
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=597}] at @s run effect @p resistance 0
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=597}] at @s run camera @p clear 
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=597}] at @s run ride @p[tag=mes_sb_spider] stop_riding
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=599}] at @s run tp @e[type=mes_splbk:nrabbit,c=1] ~ ~-10 ~
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=603}] at @s run kill @e[tag=spiderdruid]
execute as @p[tag=mes_sb_spider,scores={mes_splbk_drdt=603}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_spider,scores={mes_splbk_drdt=603}] add mes_revds
tag @p[tag=mes_sb_spider,scores={mes_splbk_drdt=603}] remove mes_sb_spider
scoreboard players set @p[tag=mes_revds,scores={mes_splbk_drdt=603}] mes_splbk_drdt 0
tag @p remove mes_revds

scoreboard players add @p[r=1,tag=mes_sb_bat] mes_splbk_drdt 1
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=16..600,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run titleraw @p[tag=mes_sb_bat] actionbar { "rawtext" : [ { "translate" : "mes_splbk.sneakdruid.text" } ] }
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run effect @s invisibility 30 255 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run effect @p resistance 30 255 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run playsound mes.splbk.sky_ability @a[r=10]
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run camera @p set minecraft:third_person
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run playanimation @s animation.mes_splbk.human_masked f 10000
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=2}] at @s run particle mes_splbk:poof
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run summon bat
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run tag @e[type=bat,r=1,c=1] add batdruid
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1}] at @s run effect @e[type=bat,r=1] resistance 30 255 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=1..596}] at @s run tp @e[tag=batdruid] ~ ~1.3 ~ facing ^ ^ ^10
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=29..596},rx=-35,rxm=-90] at @s run effect @s levitation 1 9 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=29..596},rx=5,rxm=-10] at @s run effect @s levitation 1 2 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=29..596},rx=-10,rxm=-35] at @s run effect @s levitation 1 5 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=29..596},rx=90,rxm=5] at @s run effect @s slow_falling 1 0 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=597}] at @s run particle mes_splbk:poof
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=597}] at @s run effect @s slow_falling 5 1 true
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=599}] at @s run playanimation @s animation.mes_splbk.human_masked
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=597}] at @s run effect @p invisibility 0
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=597}] at @s run effect @p resistance 0
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=597}] at @s run effect @p levitation 0
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=597}] at @s run camera @p clear
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=598}] at @s run tp @e[tag=batdruid] ~ ~-100 ~
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=602}] at @s run kill @e[tag=batdruid]
execute as @p[tag=mes_sb_bat,scores={mes_splbk_drdt=602}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_bat,scores={mes_splbk_drdt=602}] add mes_revdb
tag @p[tag=mes_sb_bat,scores={mes_splbk_drdt=602}] remove mes_sb_bat
scoreboard players set @p[tag=mes_revdb,scores={mes_splbk_drdt=602}] mes_splbk_drdt 0
tag @p remove mes_revdb



scoreboard players add @p[r=1,tag=mes_sb_seed] mes_splbk_seedt 1
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=16..110,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=10}] at @s run playsound dig.azalea_leaves @a[r=15]
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=1}] at @s run summon mes_splbk:seed ^ ^1 ^2
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=2}] at @s run playanimation @e[type=mes_splbk:seed] animation.mes_splbk.seed.start f 100
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=1..}] at @s run execute as @e[type=mes_splbk:seed] at @s run particle mes_splbk:seed ~ ~0.5 ~
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=1..}] at @s run execute as @e[type=mes_splbk:seed] at @s run effect @a[r=5] regeneration 2 10 true
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=1..}] at @s run execute as @e[type=mes_splbk:seed] at @s run effect @e[r=5,family=monster] fatal_poison 2 255 true
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=118}] at @s run execute as @e[type=mes_splbk:seed] at @s run particle mes_splbk:vines_death ~ ~1 ~ 
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=118}] at @s run execute as @e[type=mes_splbk:seed] at @s run particle mes_splbk:vines_death ~ ~2 ~
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=118}] at @s run playsound block.sweet_berry_bush.break @a[r=15]
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=118}] at @s run tp @e[type=mes_splbk:seed] ~ ~-100 ~
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=120}] at @s run kill @e[type=mes_splbk:seed]
execute as @p[tag=mes_sb_seed,scores={mes_splbk_seedt=120}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_seed,scores={mes_splbk_seedt=120}] remove mes_sb_seed
scoreboard players set @p[r=1,scores={mes_splbk_seedt=120}] mes_splbk_seedt 0

scoreboard players add @p[r=1,tag=mes_sb_vines] mes_splbk_vnst 1
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=16..100,mes_splbk_book=3}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run execute as @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] at @s run tag @p[tag=mes_sb_vines] add mes_sb_yes
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run titleraw @p[tag=mes_sb_vines,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run scoreboard players add @p[tag=mes_sb_vines,tag=!mes_sb_yes] mes_splbk_mana 4
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run scoreboard players set @p[tag=mes_sb_vines,tag=!mes_sb_yes] mes_splbk_vnst 109
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run effect @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] slowness 3 255 true
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run playsound dig.azalea_leaves @a[r=15]
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1}] at @s run execute as @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] at @s run summon mes_splbk:vines
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=3}] at @s run playanimation @e[type=mes_splbk:vines] animation.mes_splbk.vines.start f 100
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=1..}] at @s run execute as @e[type=mes_splbk:vines] at @s run particle mes_splbk:vines ~ ~1.2 ~
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=15}] at @s run execute as @e[type=mes_splbk:vines] at @s run effect @e[r=3,family=mob] slowness 5 10 true
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=15}] at @s run execute as @e[type=mes_splbk:vines] at @s run effect @e[r=3,family=mob] fatal_poison 5 255 true
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=108}] at @s run execute as @e[type=mes_splbk:vines] at @s run particle mes_splbk:vines_death ~ ~1 ~
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=108}] at @s run playsound block.sweet_berry_bush.break @a[r=15]
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=108}] at @s run tp @e[type=mes_splbk:vines] ~ ~-100 ~
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=110}] at @s run kill @e[type=mes_splbk:vines]
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=5}] at @s run tag @p remove mes_sb_yes
execute as @p[tag=mes_sb_vines,scores={mes_splbk_vnst=110}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_vines,scores={mes_splbk_vnst=110}] remove mes_sb_vines
scoreboard players set @p[r=1,scores={mes_splbk_vnst=110}] mes_splbk_vnst 0

scoreboard players add @p[r=1,tag=mes_sb_tballs] mes_splbk_tblst 1
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1}] at @s run tag @s add mes_sb_td
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=16..120,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1}] at @s run summon mes_splbk:tballs_shoot ^ ^3.7 ^2
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1}] at @s run gamerule mobgriefing false
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1},tag=mes_sb_medium] at @s run summon mes_splbk:tballs_shoot ^1.6 ^3 ^3.5
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1},tag=mes_sb_medium] at @s run summon mes_splbk:tballs_shoot ^1.6 ^1 ^1
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1},tag=mes_sb_big] at @s run summon mes_splbk:tballs_shoot ^1.6 ^3 ^3.5
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1},tag=mes_sb_big] at @s run summon mes_splbk:tballs_shoot ^1.6 ^1 ^1
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1},tag=mes_sb_big] at @s run summon mes_splbk:tballs_shoot ^-1.6 ^1 ^3.5
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1},tag=mes_sb_big] at @s run summon mes_splbk:tballs_shoot ^-1.6 ^3 ^1.5
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1}] at @s run playsound mob.wither.shoot @a[r=10]
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=1}] at @s run tag @e[type=!player,type=!mes_splbk:heat_shoot,type=!mes_splbk:tballs_shoot,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!mes_sb_tvctm] add mes_sb_tvctm
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run kill @e[type=mes_splbk:tballs_shoot]
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run gamerule mobgriefing true
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=128}] at @s run tag @e remove mes_sb_tvctm
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run tag @s remove mes_sb_small
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run tag @s remove mes_sb_medium
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run tag @s remove mes_sb_big
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run tag @s remove mes_sb_td
execute as @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_tballs,scores={mes_splbk_tblst=130}] remove mes_sb_tballs
scoreboard players set @p[r=1,scores={mes_splbk_tblst=130}] mes_splbk_tblst 0

execute as @e[type=mes_splbk:tballs_shoot] at @s run tp @s ^ ^0.05 ^0.29 facing @e[tag=mes_sb_tvctm] 
execute as @e[type=mes_splbk:tballs_shoot] at @s run effect @e[tag=mes_sb_tvctm,r=4.5] fatal_poison 3 255 true
execute as @e[type=mes_splbk:tballs_shoot] at @s run execute as @e[tag=mes_sb_tvctm,r=2] at @s run tp @e[type=mes_splbk:tballs_shoot] ~ ~ ~
execute as @e[type=mes_splbk:tballs_shoot] at @s run particle mes_splbk:tballs ~ ~ ~

scoreboard players add @p[r=1,tag=mes_sb_blink] mes_splbk_blkt 1
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=1}] at @s run playsound mes.splbk.tp_ability @a[r=20]
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=1}] at @s run effect @s darkness 2 255 true
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s run particle mes_splbk:necro_poof
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s run gamerule sendcommandfeedback false
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=10}] at @s run gamerule sendcommandfeedback true
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=11}] at @s run particle mes_splbk:necro_poof
execute as @p[tag=mes_sb_blink,scores={mes_splbk_blkt=11}] at @s run effect @s darkness 0
tag @p[tag=mes_sb_blink,scores={mes_splbk_blkt=40}] remove mes_sb_blink
scoreboard players set @p[r=1,scores={mes_splbk_blkt=40}] mes_splbk_blkt 0



scoreboard players add @p[r=1,tag=mes_sb_plmrph] mes_splbk_plmrt 1
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=16..140,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run playsound mob.chicken.say @a[r=15]
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run particle mes_splbk:polymorph_launch ~ ~ ~
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run execute as @e[family=!inac,family=!npc,r=8,type=!wither,type=!ender_dragon,family=mob,type=!chicken] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run execute as @e[family=!inac,family=!npc,r=8,type=!wither,type=!ender_dragon,family=mob,type=!chicken] at @s run tag @p[tag=mes_sb_plmrph] add mes_sb_yes
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run titleraw @p[tag=mes_sb_plmrph,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run scoreboard players add @p[tag=mes_sb_plmrph,tag=!mes_sb_yes] mes_splbk_mana 8
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=1}] at @s run scoreboard players set @p[tag=mes_sb_plmrph,tag=!mes_sb_yes] mes_splbk_plmrt 145
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=4}] at @s run execute as @e[family=!inac,family=!npc,r=8,type=!wither,type=!ender_dragon,family=mob,type=!chicken] at @s run summon chicken
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=4}] at @s run execute as @e[family=!inac,family=!npc,r=8,type=!wither,type=!ender_dragon,family=mob,type=!chicken] at @s run tp @s ~ ~-1000 ~
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=6}] at @s run tag @a[tag=mes_sb_plmrph] remove mes_sb_yes
execute as @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=150}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_plmrph,scores={mes_splbk_plmrt=150}] remove mes_sb_plmrph
scoreboard players set @p[r=1,scores={mes_splbk_plmrt=150}] mes_splbk_plmrt 0


scoreboard players add @p[r=1,tag=mes_sb_arcexpl] mes_splbk_arcext 1
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=16..200,mes_splbk_book=3}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=1}] at @s run playsound liquid.mes_sb_lava @a[r=20]
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=1..60}] at @s run particle mes_splbk:arcaneexpl_launch ~ ~ ~
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=1}] at @s run playanimation @s animation.evoker.casting f 3
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=61}] at @s run particle mes_splbk:arcaneexpl_explode
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=61}] at @s run particle mes_splbk:arcane_fire
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=61}] at @s run playsound cauldron.explode @a[r=15]
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=63}] at @s run effect @e[r=15,family=!inac,family=mob] instant_damage 1 2 true
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=63}] at @s run effect @e[r=15,family=!inac,family=mob] fatal_poison 3 255 true
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=63..120}] at @s run execute as @e[family=!inac,family=mob,r=15] at @s run particle mes_splbk:arcane_fire_ambient ~ ~1 ~
execute as @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=200}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_arcexpl,scores={mes_splbk_arcext=200}] remove mes_sb_arcexpl
scoreboard players set @p[r=1,scores={mes_splbk_arcext=200}] mes_splbk_arcext 0


scoreboard players add @p[r=1,tag=mes_sb_arcward] mes_splbk_wrdt 1
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=16..80,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=1}] at @s run playsound beacon.power @a[r=8] ~ ~ ~ 0.65
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=1}] at @s run tag @s add mes_sb_wardsh
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=9..98}] at @s run execute as @e[type=mes_splbk:ward] at @s run particle mes_splbk:ward ~ ~ ~
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=9..88}] at @s run execute as @e[type=mes_splbk:ward] at @s run effect @e[family=mob,family=!inac,r=3] slowness 1 255 true
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=2..98}] at @s run execute as @e[type=mes_splbk:ward] at @s run particle mes_splbk:ward_explode ~ ~ ~
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=85}] at @s run playsound beacon.activate @a[r=8] ~ ~ ~0.65
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=100}] at @s run kill @e[type=mes_splbk:ward]
execute as @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=100}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_arcward,scores={mes_splbk_wrdt=100}] remove mes_sb_arcward
scoreboard players set @p[r=1,scores={mes_splbk_wrdt=100}] mes_splbk_wrdt 0


scoreboard players add @p[r=1,tag=mes_sb_zephyr] mes_splbk_airt 1
execute as @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=16..240,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=1}] at @s run effect @p resistance 16 255 true
execute as @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=1}] at @s run playsound hit.mes_sb_big_dripleaf @a[r=5]
execute as @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=1}] at @s run titleraw @p[tag=mes_sb_zephyr] actionbar { "rawtext" : [ { "translate" : "mes_splbk.zephyr.jump" } ] }
execute as @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=250}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=250}] add mes_revaz
tag @p[tag=mes_sb_zephyr,scores={mes_splbk_airt=250}] remove mes_sb_zephyr
scoreboard players set @p[tag=mes_revaz,scores={mes_splbk_airt=250}] mes_splbk_airt 0
tag @p remove mes_revaz

scoreboard players add @p[tag=mes_sb_rmvjp] mes_splbk_stnbt 1
effect @a[scores={mes_splbk_stnbt=5..},tag=mes_sb_rmvjp] levitation 0
scoreboard players set @a[tag=mes_sb_rmvjp,scores={mes_splbk_stnbt=5..}] mes_splbk_stnbt 0
tag @a[tag=mes_sb_rmvjp,scores={mes_splbk_stnbt=0}] remove mes_sb_rmvjp



scoreboard players add @p[r=1,tag=mes_sb_lttng] mes_splbk_lightt 1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=16..79,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1}] at @s run playsound mes.splbk.lightning_ability @a[r=20]
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1}] at @s run tag @s add mes_sb_td
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1}] at @s run particle mes_splbk:lightning_launch ^ ^1.2 ^1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1}] at @s run particle mes_splbk:lightning_launch ^1.8 ^1. ^1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1}] at @s run particle mes_splbk:lightning_launch ^0.3 ^1.3 ^1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1},tag=mes_sb_big] at @s run particle mes_splbk:lightning_launch ^ ^1.2 ^1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1},tag=mes_sb_big] at @s run particle mes_splbk:lightning_launch ^1.8 ^1. ^1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1},tag=mes_sb_big] at @s run particle mes_splbk:lightning_launch ^0.3 ^1.3 ^1
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=1}] at @s run tag @s add mes_sb_llsh
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=3},tag=mes_sb_small] at @s run tag @e[type=mes_splbk:lightning_shoot] add mes_sb_small
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=3},tag=mes_sb_medium] at @s run tag @e[type=mes_splbk:lightning_shoot] add mes_sb_medium
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=3},tag=mes_sb_big] at @s run tag @e[type=mes_splbk:lightning_shoot] add mes_sb_big
execute as @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=80}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=80}] remove mes_sb_td
tag @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=80}] remove mes_sb_small
tag @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=80}] remove mes_sb_medium
tag @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=80}] remove mes_sb_big
tag @p[tag=mes_sb_lttng,scores={mes_splbk_lightt=80}] remove mes_sb_lttng
scoreboard players set @p[r=1,scores={mes_splbk_lightt=80}] mes_splbk_lightt 0


scoreboard players add @e[type=mes_splbk:lightning_shoot] mes_splbk_lightt 1
execute as @e[type=mes_splbk:lightning_shoot] at @s run particle mes_splbk:lightning_ball ~ ~ ~
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=50},tag=mes_sb_small] at @s run execute as @e[r=5,type=!mes_splbk:lightning_shoot,c=1] at @s run summon lightning_bolt
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=50},tag=mes_sb_medium] at @s run execute as @e[r=5,type=!mes_splbk:lightning_shoot,c=2] at @s run summon lightning_bolt
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=50},tag=mes_sb_big] at @s run execute as @e[r=5,type=!mes_splbk:lightning_shoot,c=3] at @s run summon lightning_bolt
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=50}] at @s run execute as @e[r=5,type=!mes_splbk:lightning_shoot] at @s run kill @e[type=mes_splbk:lightning_shoot,r=5]
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=51}] at @s run summon lightning_bolt
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=51},tag=mes_sb_medium] at @s run summon lightning_bolt ~3 ~ ~
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=51},tag=mes_sb_big] at @s run summon lightning_bolt ~3 ~ ~
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=51},tag=mes_sb_big] at @s run summon lightning_bolt ~-3 ~ ~
execute as @e[type=mes_splbk:lightning_shoot,scores={mes_splbk_lightt=51}] at @s run kill @s

scoreboard players add @e[r=1,tag=mes_sb_dfsv] mes_splbk_dfsvt 1
execute as @a[tag=mes_sb_dfsv,scores={mes_splbk_dfsvt=1}] at @s run playsound mes.splbk.shoot_ability @a[r=10]
execute as @a[tag=mes_sb_dfsv,scores={mes_splbk_dfsvt=1}] at @s run particle mes_splbk:air_shockwave ~ ~ ~
execute as @a[tag=mes_sb_dfsv,scores={mes_splbk_dfsvt=1}] at @s run particle mes_splbk:air_visual ~ ~ ~
execute as @a[tag=mes_sb_dfsv,scores={mes_splbk_dfsvt=1..16}] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=8,family=mob] at @s if block ^ ^0.1 ^-0.45 air run tp @s ^ ^0.1 ^-0.45 facing @p[tag=mes_sb_dfsv] 
tag @a[tag=mes_sb_dfsv,scores={mes_splbk_dfsvt=34}] remove mes_sb_dfsv
scoreboard players set @p[r=1,scores={mes_splbk_dfsvt=34}] mes_splbk_dfsvt 0



scoreboard players add @p[r=1,tag=mes_sb_blind] mes_splbk_blndt 1
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=16..90,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run playsound mes.splbk.shoot_ability @a[r=10]
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run execute as @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] at @s run tag @p[tag=mes_sb_blind] add mes_sb_yes
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run titleraw @p[tag=mes_sb_blind,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run scoreboard players add @p[tag=mes_sb_blind,tag=!mes_sb_yes] mes_splbk_mana 2
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run scoreboard players set @p[tag=mes_sb_blind,tag=!mes_sb_yes] mes_splbk_blndt 100
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run execute as @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] at @s run particle mes_splbk:dark_ring ^ ^0.1 ^0.1
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run execute as @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run effect @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] darkness 5 255 true
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=1}] at @s run effect @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] slowness 5 255 true
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=100}] at @s run execute as @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=5}] at @s run tag @a[tag=mes_sb_blind] remove mes_sb_yes
execute as @a[tag=mes_sb_blind,scores={mes_splbk_blndt=100}] at @s run tag @s remove mes_sb_cldown
tag @a[tag=mes_sb_blind,scores={mes_splbk_blndt=101}] remove mes_sb_blind
scoreboard players set @p[r=1,scores={mes_splbk_blndt=101}] mes_splbk_blndt 0

scoreboard players add @p[r=1,tag=mes_sb_heat] mes_splbk_ncrt 1
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=16..79,mes_splbk_book=2}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=1}] at @s run tag @e[type=!player,type=!mes_splbk:heat_shoot,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!mes_sb_vctm] add mes_sb_vctm
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:heat_shoot ^ ^2 ^3
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=2}] at @s run tag @e[type=!player,type=!mes_splbk:heat_shoot,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!mes_sb_vctm,tag=!mes_sb_vctmd] add mes_sb_vctmd
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=2}] at @s run summon mes_splbk:heat_shoot ^2 ^1 ^3
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=3}] at @s run tag @e[type=!player,type=!mes_splbk:heat_shoot,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!mes_sb_vctmd,tag=!mes_sb_vctm,tag=!mes_sb_vctmt] add mes_sb_vctmt
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=3}] at @s run summon mes_splbk:heat_shoot ^-2 ^1 ^3
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=1}] at @s run playsound mes.splbk.tp_ability @a[r=20]
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=4}] at @s run tag @e[type=mes_splbk:heat_shoot,tag=!mes_sb_hone,tag=!mes_sb_htwo,tag=!mes_sb_hthree,c=1] add mes_sb_hone
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=4}] at @s run tag @e[type=mes_splbk:heat_shoot,tag=!mes_sb_hone,tag=!mes_sb_htwo,tag=!mes_sb_hthree,c=1] add mes_sb_htwo
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=4}] at @s run tag @e[type=mes_splbk:heat_shoot,tag=!mes_sb_hone,tag=!mes_sb_htwo,tag=!mes_sb_hthree,c=1] add mes_sb_hthree
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=80}] at @s run kill @e[type=mes_splbk:heat_shoot]
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=80}] at @s run tag @e remove mes_sb_vctm
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=80}] at @s run tag @e remove mes_sb_vctmt
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=80}] at @s run tag @e remove mes_sb_vctmd
execute as @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=80}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=81}] add mes_revheat
tag @p[tag=mes_sb_heat,scores={mes_splbk_ncrt=81}] remove mes_sb_heat
scoreboard players set @p[tag=mes_revheat,scores={mes_splbk_ncrt=81}] mes_splbk_ncrt 0
tag @p[r=1] remove mes_revheat


execute as @e[type=mes_splbk:heat_shoot,tag=mes_sb_hone] at @s run tp @s ^ ^0.05 ^0.39 facing @e[tag=mes_sb_vctm] 
execute as @e[type=mes_splbk:heat_shoot,tag=mes_sb_htwo] at @s run tp @s ^ ^0.05 ^0.39 facing @e[tag=mes_sb_vctmd] 
execute as @e[type=mes_splbk:heat_shoot,tag=mes_sb_hthree] at @s run tp @s ^ ^0.05 ^0.39 facing @e[tag=mes_sb_vctmt] 
execute as @e[type=mes_splbk:heat_shoot] at @s run particle mes_splbk:shadow_ball ~ ~ ~


scoreboard players add @p[r=1,tag=mes_sb_ebon] mes_splbk_ncrt 1
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=16..90,mes_splbk_book=3}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run effect @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] slowness 6 255 true
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run execute as @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] at @s run tag @p[tag=mes_sb_ebon] add mes_sb_yes
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run titleraw @p[tag=mes_sb_ebon,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run scoreboard players add @p[tag=mes_sb_ebon,tag=!mes_sb_yes] mes_splbk_mana 4
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run scoreboard players set @p[tag=mes_sb_ebon,tag=!mes_sb_yes] mes_splbk_ncrt 100
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run playsound dig.azalea_leaves @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=15}] at @s run playsound dig.azalea_leaves @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=45}] at @s run playsound dig.azalea_leaves @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=60}] at @s run playsound dig.azalea_leaves @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run playsound dig.azalea_leaves @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run particle mes_splbk:ebon_launch ~ ~ ~
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=10}] at @s run playsound block.chorusflower.death @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=1}] at @s run execute as @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] at @s run summon mes_splbk:ebon
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=2}] at @s run execute as @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] at @s run particle mes_splbk:ebon
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=2}] at @s run execute as @e[r=15,family=mob,tag=!ocelotdruid,tag=!spiderdruid,tag=!batdruid,family=!inac] at @s run particle mes_splbk:ebon_mes_sb_small ~ ~0.11 ~
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=3}] at @s run playanimation @e[type=mes_splbk:ebon] animation.mes_splbk.ebon.start f 100
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=15}] at @s run execute as @e[type=mes_splbk:ebon] at @s run effect @e[r=3,family=mob] fatal_poison 6 255 true
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=96}] at @s run execute as @e[type=mes_splbk:ebon] at @s run particle mes_splbk:ebon_explode ~ ~1 ~
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=96}] at @s run playsound block.chorusflower.grow @a[r=10]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=96}] at @s run tp @e[type=mes_splbk:ebon] ~ ~-100 ~
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=99}] at @s run kill @e[type=mes_splbk:ebon]
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=99}] at @s run tag @a[tag=mes_sb_ebon] remove mes_sb_yes
execute as @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=110}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=110}] add mes_revdebon
tag @p[tag=mes_sb_ebon,scores={mes_splbk_ncrt=110}] remove mes_sb_ebon
scoreboard players set @p[tag=mes_revdebon,scores={mes_splbk_ncrt=110}] mes_splbk_ncrt 0
tag @p remove mes_revdebon

scoreboard players add @p[r=1,tag=mes_sb_dash] mes_splbk_ncrt 1
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=5..90,mes_splbk_book=4}] at @s run tag @s add mes_sb_cldown
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run playsound mes.splbk.necro_ability @a[r=15]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run summon mes_splbk:nwither_skeleton ^ ^ ^1
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run tag @e[type=mes_splbk:nwither_skeleton,r=2.5,c=1] add mes_sb_dashw
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run replaceitem entity @e[tag=mes_sb_dashw] slot.weapon.mainhand 0 stone_sword
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run replaceitem entity @e[tag=mes_sb_dashw] slot.weapon.offhand 0 ender_pearl
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run replaceitem entity @e[tag=mes_sb_dashw] slot.armor.head 0 netherite_helmet
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=1}] at @s run effect @e[tag=mes_sb_dashw] resistance 1000 255 true

execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=20}] at @s run execute as @e[tag=mes_sb_dashw] at @s run playsound mob.endermen.portal @a[r=20]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=20}] at @s run execute as @e[tag=mes_sb_dashw] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=20}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tp @s @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=12]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=21}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] instant_damage 1 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=21}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] wither 5 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=21}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tag @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=1.2] add tempennemy

execute as @p[tag=dash,scores={mes_splbk_ncrt=35}] at @s run execute as @e[tag=mes_sb_dashw] at @s run playsound mob.endermen.portal @a[r=20]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=35}] at @s run execute as @e[tag=mes_sb_dashw] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=35}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tp @s @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=12]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=36}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] instant_damage 1 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=36}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] wither 5 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=36}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tag @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=1.2] add tempennemy

execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=51}] at @s run execute as @e[tag=mes_sb_dashw] at @s run playsound mob.endermen.portal @a[r=20]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=51}] at @s run execute as @e[tag=mes_sb_dashw] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=51}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tp @s @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=12]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=52}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] instant_damage 1 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=52}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] wither 5 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=52}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tag @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=1.2] add tempennemy

execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=67}] at @s run execute as @e[tag=mes_sb_dashw] at @s run playsound mob.endermen.portal @a[r=20]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=67}] at @s run execute as @e[tag=mes_sb_dashw] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=67}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tp @s @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=12]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=68}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] instant_damage 1 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=68}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] wither 5 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=68}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tag @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=1.2] add tempennemy

execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=83}] at @s run execute as @e[tag=mes_sb_dashw] at @s run playsound mob.endermen.portal @a[r=20]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=83}] at @s run execute as @e[tag=mes_sb_dashw] at @s run particle mes_splbk:necro_poof ~ ~ ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=83}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tp @s @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=12]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=84}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] instant_damage 1 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=84}] at @s run execute as @e[tag=mes_sb_dashw] at @s run effect @e[r=1,family=mob] wither 5 1 true
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=84}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tag @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob,tag=!tempennemy,r=1.2] add tempennemy

execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=95}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tag @e[r=30] remove tempennemy
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=95}] at @s run execute as @e[tag=mes_sb_dashw] at @s run particle mes_splbk:poof ~ ~ ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=95}] at @s run execute as @e[tag=mes_sb_dashw] at @s run tp @s ~ ~-20 ~
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=99}] at @s run kill @e[tag=mes_sb_dashw]
execute as @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=100}] at @s run tag @s remove mes_sb_cldown
tag @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=100}] add mes_revsdash
tag @p[tag=mes_sb_dash,scores={mes_splbk_ncrt=100}] remove mes_sb_dash
scoreboard players set @p[tag=mes_revsdash,scores={mes_splbk_ncrt=100}] mes_splbk_ncrt 0
tag @p remove mes_revsdash


scoreboard players add @e[r=1,tag=mes_sb_lightb] mes_splbk_lghtbl 1
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=1..280,mes_splbk_book=0}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=1}] at @s run playsound mes.splbk.shoot_ability @a[r=10]
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=1}] at @s run summon mes_splbk:light_block ^ ^2.5 ^10
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=1..}] at @s run execute as @e[type=mes_splbk:light_block] at @s run particle mes_splbk:light_block ^ ^ ^
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=1..299}] at @s run execute as @e[type=mes_splbk:light_block] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light_block ["block_light_level"=15]
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=300}] at @s run execute as @e[type=mes_splbk:light_block] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace light_block ["block_light_level"=15]
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=1..299}] at @s run execute as @e[type=mes_splbk:light_block] at @s run fill ~ ~ ~ ~ ~ ~ light_block ["block_light_level"=15] replace air
execute as @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=300}] at @s run kill @e[type=mes_splbk:light_block]
tag @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=300}] remove mes_sb_cldown
tag @a[tag=mes_sb_lightb,scores={mes_splbk_lghtbl=300}] remove mes_sb_lightb
scoreboard players set @p[r=1,scores={mes_splbk_lghtbl=300}] mes_splbk_lghtbl 0

scoreboard players add @e[r=1,tag=mes_sb_lsword] mes_splbk_lswrdt 1
execute as @a[tag=mes_sb_lswrdt,scores={mes_splbk_lswrdt=1..90,mes_splbk_book=1}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run playsound mob.breeze.idle_air @a[r=10]
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run execute as @e[rm=1,family=!inac,family=!npc,type=!item,r=10,family=mob] at @s run tag @p[tag=mes_sb_lsword] add mes_sb_yes
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run titleraw @p[tag=mes_sb_lsword,tag=!mes_sb_yes] actionbar { "rawtext" : [ { "translate" : "mes_splbk.noone.text" } ] }
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run scoreboard players add @p[tag=mes_sb_lsword,tag=!mes_sb_yes] mes_splbk_mana 5
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run scoreboard players set @p[tag=mes_sb_lsword,tag=!mes_sb_yes] mes_splbk_lswrdt 99
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run tag @e[rm=1,c=1,family=!inac,family=!npc,type=!item,r=10,family=mob,type=!mes_splbk:light_sword] add mes_sb_lvctm
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run effect @e[tag=mes_sb_lvctm] slowness 1 255 true
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run execute as @e[tag=mes_sb_lvctm] at @s run summon mes_splbk:light_sword ~ ~15 ~ facing @p
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1}] at @s run execute as @e[tag=mes_sb_lvctm] at @s run particle mes_splbk:light_sword_visual
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1..}] at @s run execute as @e[type=mes_splbk:light_sword] at @s run execute as @e[tag=mes_sb_lvctm,r=2] at @s run effect @s instant_damage 1 1 true
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1..}] at @s run execute as @e[type=mes_splbk:light_sword] at @s run execute as @e[tag=mes_sb_lvctm,r=2] at @s run effect @s fatal_poison 3 255 true
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=1..}] at @s run execute as @e[type=mes_splbk:light_sword] at @s run execute as @e[tag=mes_sb_lvctm,r=2] at @s run particle mes_splbk:earthquake_launch ~ ~0.2 ~
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=4}] at @s run playanimation @e[type=mes_splbk:light_sword] animation.mes_splbk.light_sword.fall f 15
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=28}] at @s run playsound random.anvil_land @a[r=10]
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=85}] at @s run tp @e[type=mes_splbk:light_sword] ~ ~-100 ~
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=100}] at @s run kill @e[type=mes_splbk:light_sword]
execute as @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=100}] at @s run tag @e[tag=mes_sb_lvctm] remove mes_sb_lvctm
tag @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=100}] remove mes_sb_cldown
tag @a[tag=mes_sb_lsword,scores={mes_splbk_lswrdt=100}] remove mes_sb_lsword
scoreboard players set @p[r=1,scores={mes_splbk_lswrdt=100}] mes_splbk_lswrdt 0


scoreboard players add @e[r=1,tag=mes_sb_larrow] mes_splbk_larrwt 1
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=1}] at @s run playsound mes.splbk.shoot_ability @a[r=10]
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=1}] at @s run tag @s add mes_sb_lar
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=1..49}] at @s run execute as @e[type=mes_splbk:light_arrow] at @s run tag @e[type=!player,r=2,family=!inac,family=mob,type=!mes_splbk:light_arrow] add mes_sb_lavctm
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=1..}] at @s run effect @e[tag=mes_sb_lavctm] slowness 1 255 true
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=1..}] at @s run execute as @e[tag=mes_sb_lavctm] at @s run particle mes_splbk:light_block ~ ~1.8 ~
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=50}] at @s run kill @e[type=mes_splbk:light_arrow]
execute as @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=50}] at @s run tag @e remove mes_sb_lavctm
tag @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=50}] remove mes_sb_cldown
tag @a[tag=mes_sb_larrow,scores={mes_splbk_larrwt=50}] remove mes_sb_larrow
scoreboard players set @p[r=1,scores={mes_splbk_larrwt=50}] mes_splbk_larrwt 0

scoreboard players add @e[r=1,tag=mes_sb_sburst] mes_splbk_burstt 1
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1}] at @s run playsound mes.splbk.boulder_ability @a[r=10]
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1}] at @s run summon mes_splbk:solar_burst ^ ^0.45 ^1 facing @p[tag=mes_sb_sburst]
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1..70}] at @s run execute as @e[type=mes_splbk:solar_burst] at @s run particle mes_splbk:solar_burst
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1..70}] at @s run execute as @e[type=mes_splbk:solar_burst] at @s run tp @s ^ ^ ^-1
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1..70}] at @s run execute as @e[type=mes_splbk:solar_burst] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=2.5,family=mob] at @s run execute as @e[type=mes_splbk:solar_burst,r=3] at @s run summon mes_splbk:knockback ~ ~-1.8 ~
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1..70}] at @s run execute as @e[type=mes_splbk:solar_burst] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=2.5,family=mob] at @s run execute as @e[type=mes_splbk:solar_burst,r=3] at @s run effect @e[r=3,type=!player] slowness 5 255 true
execute as @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=1..70}] at @s run execute as @e[type=mes_splbk:solar_burst] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=2.5,family=mob] at @s run execute as @e[type=mes_splbk:solar_burst,r=3] at @s run kill @s
tag @a[tag=mes_sb_sburst,scores={mes_splbk_burstt=120}] remove mes_sb_sburst
scoreboard players set @p[r=1,scores={mes_splbk_burstt=120}] mes_splbk_burstt 0

scoreboard players add @e[r=1,tag=mes_sb_cwave] mes_splbk_cwavet 1
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=1..90,book=4}] at @s run tag @s add mes_sb_cldown
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=1}] at @s run playsound mes.splbk.shoot_ability @a[r=10]
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=1}] at @s run tag @s add mes_sb_cw
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=1..40}] at @s run execute as @e[type=mes_splbk:celestial_wave] at @s run particle mes_splbk:cwave_ball ~ ~0.7 ~
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=41}] at @s run execute as @e[type=mes_splbk:celestial_wave] at @s run particle mes_splbk:light_cwave ~ ~2 ~
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=41}] at @s run execute as @e[type=mes_splbk:celestial_wave] at @s run playsound cauldron.explode @a[r=20]
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=41}] at @s run camerashake add @a[r=8] 1 1 positional
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=51}] at @s run execute as @e[type=mes_splbk:celestial_wave] at @s run kill @s
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=41..50}] at @s run execute as @e[type=mes_splbk:celestial_wave] at @s run effect @e[type=!player,family=!inac,family=!npc,type=!item,r=13,family=mob] fatal_poison 2 255 true
execute as @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=41..50}] at @s run execute as @e[type=mes_splbk:celestial_wave] at @s run execute as @e[type=!player,family=!inac,family=!npc,type=!item,r=13,family=mob] at @s if block ^ ^0.25 ^-0.65 air run tp @s ^ ^0.25 ^-0.65 facing @e[type=mes_splbk:celestial_wave]
tag @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=100}] remove mes_sb_cldown
tag @a[tag=mes_sb_cwave,scores={mes_splbk_cwavet=100}] remove mes_sb_cwave
scoreboard players set @p[r=1,scores={mes_splbk_cwavet=100}] mes_splbk_cwavet 0