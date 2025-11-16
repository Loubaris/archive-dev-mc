scoreboard players random @p luck 1 3

scoreboard players add @e[type=sw:tnt_shoot] tnttime 1
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ particle minecraft:large_explosion ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ effect @e[r=5,type=!player] instant_damage 1 1 true
execute @e[type=sw:tnt_shoot,scores={tnttime=19}] ~ ~ ~ kill @s


execute @a[tag=shield] ~ ~ ~ particle sw:shield ~ ~ ~
execute @a[tag=shield] ~ ~ ~ execute @e[type=!player,type=!sw:catapult,type=!sw:wizard,r=5] ~ ~ ~ tp @s ^ ^0.02 ^-0.1 facing @p[tag=shield]
tag @a[tag=shield] remove shield

execute @a[tag=shield] ~ ~ ~ particle sw:shield ~ ~ ~
tag @a[tag=shield] remove shield

execute @e[type=sw:catatnt] ~ ~ ~ clear @p tnt 0 1
execute @e[type=sw:catatnt] ~ ~ ~ scoreboard players set @e[type=sw:catapult,r=5,c=1] catatime 0
execute @e[type=sw:catatnt] ~ ~ ~ tag @e[type=sw:catapult,r=5,c=1] add cataboom
execute @e[type=sw:catatnt] ~ ~ ~ playanimation @e[type=sw:catapult,tag=cataboom] animation.catapult.wave
execute @e[type=sw:catatnt] ~ ~ ~ tp @s ~ ~-200 ~
execute @e[type=sw:catatnt] ~ ~ ~ kill @s

scoreboard players add @e[type=sw:catapult,tag=cataboom] catatime 1
execute @e[tag=cataboom,scores={catatime=1}] ~ ~ ~ playsound record.ward @a[r=15]
execute @e[tag=cataboom,scores={catatime=50}] ~ ~ ~ gamerule mobgriefing false
execute @e[tag=cataboom,scores={catatime=51}] ~ ~ ~ effect @a[r=20] resistance 5 255 true
execute @e[tag=cataboom,scores={catatime=51}] ~ ~ ~ summon tnt ~ ~5 ~ 
execute @e[tag=cataboom,scores={catatime=52}] ~ ~ ~ summon sw:projecttnt ^ ^3 ^2
execute @e[tag=cataboom,scores={catatime=52}] ~ ~ ~ summon sw:projecttnt ^ ^3 ^2
execute @e[tag=cataboom,scores={catatime=110}] ~ ~ ~ gamerule mobgriefing true
execute @e[tag=cataboom,scores={catatime=120}] ~ ~ ~ tag @s remove cataboom


scoreboard players add @e[tag=infernosword] infernotime 1
execute @a[tag=infernosword,scores={infernotime=1}] ~ ~ ~ particle sw:inferno_ring ~ ~ ~
execute @a[tag=infernosword] ~ ~ ~ execute @e[type=!player,type=!sw:wizard,type=!item,r=5] ~ ~ ~ setblock ~ ~ ~ fire
tag @a[tag=infernosword,scores={infernotime=300}] add removetimefour
tag @a[tag=infernosword,scores={infernotime=300}] remove infernosword
scoreboard players set @p[tag=removetimefour,scores={infernotime=300}] infernotime 0
tag @p remove removetimefour


scoreboard players add @a[tag=legendary_hammer_a] lhammertime 1
execute @a[tag=legendary_hammer_a,scores={lhammertime=1}] ~ ~ ~ effect @s resistance 2 255 true
execute @a[tag=legendary_hammer_a,scores={lhammertime=1}] ~ ~ ~ effect @s fire_resistance 3 255 true
execute @a[tag=legendary_hammer_a,scores={lhammertime=1}] ~ ~ ~ summon sw:legendary_hammer_a ^ ^0.2 ^5
execute @a[tag=legendary_hammer_a,scores={lhammertime=10}] ~ ~ ~ playsound record.chirp @a[r=10]
execute @a[tag=legendary_hammer_a,scores={lhammertime=12}] ~ ~ ~ execute @e[type=sw:legendary_hammer_a] ~ ~ ~ effect @e[r=15,type=!player,type=!sw:wizard] instant_damage 1 2 true
execute @a[tag=legendary_hammer_a,scores={lhammertime=12}] ~ ~ ~ execute @e[type=sw:legendary_hammer_a] ~ ~ ~ kill @e[r=15,type=zombie]
execute @a[tag=legendary_hammer_a,scores={lhammertime=12}] ~ ~ ~ execute @e[type=sw:legendary_hammer_a] ~ ~ ~ kill @e[r=15,type=skeleton]
execute @a[tag=legendary_hammer_a,scores={lhammertime=12}] ~ ~ ~ execute @e[type=sw:legendary_hammer_a] ~ ~ ~ particle sw:explosionfire ~ ~1 ~
execute @a[tag=legendary_hammer_a,scores={lhammertime=58}] ~ ~ ~ execute @e[type=sw:legendary_hammer_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=legendary_hammer_a,scores={lhammertime=61}] ~ ~ ~ execute @e[type=sw:legendary_hammer_a] ~ ~ ~ kill @s
tag @a[tag=legendary_hammer_a,scores={lhammertime=61}] add removetimehammer
tag @a[tag=legendary_hammer_a,scores={lhammertime=61}] remove legendary_hammer_a
scoreboard players set @p[tag=removetimehammer,scores={lhammertime=61}] lhammertime 0
tag @p remove removetimehammer

scoreboard players add @a[tag=legendary_sword_a] lswordtime 1
execute @a[tag=legendary_sword_a,scores={lswordtime=1}] ~ ~ ~ particle sw:snow ~ ~-3 ~
execute @a[tag=legendary_sword_a,scores={lswordtime=1}] ~ ~ ~ particle sw:snow ~ ~-2 ~
execute @a[tag=legendary_sword_a,scores={lswordtime=1}] ~ ~ ~ particle sw:snow ~ ~-1 ~
execute @a[tag=legendary_sword_a,scores={lswordtime=1}] ~ ~ ~ particle sw:snow ~ ~ ~
execute @a[tag=legendary_sword_a,scores={lswordtime=3}] ~ ~ ~ summon sw:ice_block ^ ^2 ^6
execute @a[tag=legendary_sword_a,scores={lswordtime=5}] ~ ~ ~ execute @e[type=sw:ice_block] ~ ~ ~ particle sw:ice_beam ~ ~-2 ~
execute @e[type=sw:ice_block] ~ ~ ~ execute @e[type=!sw:ice_block,type=!player,type=!sw:wizard,type=!item] ~ ~ ~ tp @s ^ ^ ^0.2 facing @e[type=sw:ice_block]
execute @a[tag=legendary_sword_a,scores={lswordtime=3}] ~ ~ ~ playsound record.mall @a[r=10]
execute @a[tag=legendary_sword_a,scores={lswordtime=100}] ~ ~ ~ playsound record.wait @a[r=10]
execute @a[tag=legendary_sword_a,scores={lswordtime=108}] ~ ~ ~ playsound cauldron.explode @a[r=15]
execute @a[tag=legendary_sword_a,scores={lswordtime=108}] ~ ~ ~ execute @e[type=sw:ice_block] ~ ~ ~ effect @e[r=10,type=!player,type=!sw:wizard,type=!item,type=!sw:legendary_hammer_a] slowness 15 2 true
execute @a[tag=legendary_sword_a,scores={lswordtime=108}] ~ ~ ~ execute @e[type=sw:ice_block] ~ ~ ~ effect @e[r=10,type=!player,type=!sw:wizard,type=!item,type=!sw:legendary_hammer_a] instant_damage 1 1 true
execute @a[tag=legendary_sword_a,scores={lswordtime=108}] ~ ~ ~ execute @e[type=sw:ice_block] ~ ~ ~ kill @e[type=zombie]
execute @a[tag=legendary_sword_a,scores={lswordtime=108}] ~ ~ ~ execute @e[type=sw:ice_block] ~ ~ ~ kill @e[type=skeleton]
execute @a[tag=legendary_sword_a,scores={lswordtime=109}] ~ ~ ~ kill @e[type=sw:ice_block]
tag @a[tag=legendary_sword_a,scores={lswordtime=121}] add removetimesword
tag @a[tag=legendary_sword_a,scores={lswordtime=121}] remove legendary_sword_a
scoreboard players set @p[tag=removetimesword,scores={lswordtime=121}] lswordtime 0
tag @p remove removetimesword

scoreboard players add @a[tag=safe] safe 1
execute @a[tag=safe] ~ ~ ~ particle sw:spiral ^ ^2 ^4
execute @a[tag=safe] ~ ~ ~ particle sw:spiral ^-1 ^2 ^4
execute @a[tag=safe] ~ ~ ~ particle sw:spiral ^1 ^2 ^4
execute @p[tag=safe] ~ ~ ~ execute @e[type=!player,type=!sw:wizard,r=5] ^ ^ ^4 effect @s slowness 2 255 true
execute @p[tag=safe] ~ ~ ~ execute @e[type=!player,type=!sw:wizard,r=5] ^ ^ ^4 effect @s levitation 2 2 true
effect @a[tag=safe] resistance 2 3 true
tag @a[tag=safe,scores={safe=100}] remove safe


scoreboard players add @a[tag=wand] wandtime 1
execute @p[tag=wand,scores={wandluck=1}] ~ ~ ~ function wand
execute @p[tag=wand,scores={wandtime=1,wandluck=1}] ~ ~ ~ playsound record.stal @a[r=5]
execute @p[tag=wand,scores={wandluck=2}] ~ ~ ~ function waterwand
execute @p[tag=wand,scores={wandtime=1,wandluck=2}] ~ ~ ~ playsound bubble.upinside @a[r=5]
execute @p[tag=wand,scores={wandluck=3}] ~ ~ ~ function portal
execute @p[tag=wand,scores={wandtime=1,wandluck=3}] ~ ~ ~ playsound record.strad @a[r=5]
tag @p[tag=wand,scores={wandtime=40}] add removetimenature
tag @p[tag=wand,scores={wandtime=40}] remove wand
scoreboard players set @p[tag=removetimenature,scores={wandtime=40}] wandtime 0
tag @p remove removetimenature

scoreboard players add @e[tag=waterlocked] watertime 1
execute @e[tag=waterlocked] ~ ~ ~ particle sw:bubble_color ~ ~1.5 ~
execute @e[tag=waterlocked] ~ ~ ~ effect @s levitation 2 2 true
effect @e[tag=waterlocked] slowness 2 255 true
tag @e[tag=waterlocked,scores={watertime=100}] remove waterlocked

scoreboard players add @e[tag=soullocked] soultime 1
execute @e[tag=soullocked] ~ ~ ~ particle sw:spiral ~ ~1 ~
execute @e[tag=soullocked] ~ ~ ~ execute @s ~ ~ ~ tp @s ~ ~-0.05 ~
execute @e[tag=soullocked] ~ ~ ~ effect @s wither 5 1 true
effect @e[tag=soullocked] slowness 2 255 true
execute @e[tag=soullocked,scores={soultime=99}] ~ ~ ~ tp @s ~ ~5.3 ~
tag @e[tag=soullocked,scores={soultime=100}] remove soullocked

scoreboard players add @e[tag=magiclocked] lockedtime 1
execute @e[tag=magiclocked] ~ ~ ~ particle sw:loading_3 ~ ~ ~
execute @e[tag=magiclocked] ~ ~ ~ effect @s poison 2 2 true
effect @e[tag=magiclocked] slowness 2 255 true
tag @e[tag=magiclocked,scores={lockedtime=100}] remove magiclocked



scoreboard players add @a[tag=axe_a] axetime 1
execute @a[tag=axe_a,scores={axetime=1}] ~ ~ ~ summon sw:axe_swing_a ^ ^1 ^2
execute @a[tag=axe_a,scores={axetime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=axe_a,scores={axetime=1}] ~ ~ ~ execute @e[r=4,type=sw:axe_swing_a] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @a[tag=axe_a,scores={axetime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=axe_a,scores={axetime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=axe_a,scores={axetime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=axe_a,scores={axetime=10}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=axe_a,scores={axetime=12}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ kill @s
tag @a[tag=axe_a,scores={axetime=12}] add removetime
tag @a[tag=axe_a,scores={axetime=12}] remove axe_a
scoreboard players set @p[tag=removetime,scores={axetime=12}] axetime 0
tag @p remove removetime


scoreboard players add @a[tag=gold_axe_a] axetime 1
execute @a[tag=gold_axe_a,scores={axetime=1}] ~ ~ ~ summon sw:axe_swing_a ^ ^1 ^1
execute @a[tag=gold_axe_a,scores={axetime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=gold_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=gold_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=gold_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=gold_axe_a,scores={axetime=5}] ~ ~ ~ summon sw:axe_swing_a ^ ^1 ^1
execute @a[tag=gold_axe_a,scores={axetime=10}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=gold_axe_a,scores={axetime=12}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ kill @s
tag @a[tag=gold_axe_a,scores={axetime=12}] add removetimed
tag @a[tag=gold_axe_a,scores={axetime=12}] remove gold_axe_a
scoreboard players set @p[tag=removetimed,scores={axetime=12}] axetime 0
tag @p remove removetimed

scoreboard players add @a[tag=stone_axe_a] axetime 1
execute @a[tag=stone_axe_a,scores={axetime=1}] ~ ~ ~ summon sw:axe_swing_a ^ ^1 ^1
execute @a[tag=stone_axe_a,scores={axetime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=stone_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=stone_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=stone_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=stone_axe_a,scores={axetime=10}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=stone_axe_a,scores={axetime=12}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ kill @s
tag @a[tag=stone_axe_a,scores={axetime=12}] add removetimet
tag @a[tag=stone_axe_a,scores={axetime=12}] remove stone_axe_a
scoreboard players set @p[tag=removetimet,scores={axetime=12}] axetime 0
tag @p remove removetimet

scoreboard players add @a[tag=obsidian_axe_a] axetime 1
execute @a[tag=obsidian_axe_a,scores={axetime=1}] ~ ~ ~ summon sw:axe_swing_a ^ ^1 ^1
execute @a[tag=obsidian_axe_a,scores={axetime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=obsidian_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=obsidian_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=obsidian_axe_a,scores={axetime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=obsidian_axe_a,scores={axetime=10}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=obsidian_axe_a,scores={axetime=12}] ~ ~ ~ execute @e[type=sw:axe_swing_a] ~ ~ ~ kill @s
tag @a[tag=obsidian_axe_a,scores={axetime=12}] add removetimeq
tag @a[tag=obsidian_axe_a,scores={axetime=12}] remove obsidian_axe_a
scoreboard players set @p[tag=removetimeq,scores={axetime=12}] axetime 0
tag @p remove removetimeq

scoreboard players add @a[tag=spear_a] speartime 1
execute @a[tag=spear_a,scores={speartime=1}] ~ ~ ~ summon sw:spear_swing_a ^ ^1 ^2.3
execute @a[tag=spear_a,scores={speartime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=spear_a,scores={speartime=1}] ~ ~ ~ execute @e[r=4,type=sw:spear_swing_a] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @a[tag=spear_a,scores={speartime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=spear_a,scores={speartime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=spear_a,scores={speartime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=spear_a,scores={speartime=9}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=spear_a,scores={speartime=12}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ kill @s
tag @a[tag=spear_a,scores={speartime=12}] add removetimec
tag @a[tag=spear_a,scores={speartime=12}] remove spear_a
scoreboard players set @p[tag=removetimec,scores={speartime=12}] speartime 0
tag @p remove removetimec


scoreboard players add @a[tag=gold_spear_a] speartime 1
execute @a[tag=gold_spear_a,scores={speartime=1}] ~ ~ ~ summon sw:spear_swing_a ^ ^1 ^2.3
execute @a[tag=gold_spear_a,scores={speartime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=gold_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=gold_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=gold_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=gold_spear_a,scores={speartime=10}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=gold_spear_a,scores={speartime=12}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ kill @s
tag @a[tag=gold_spear_a,scores={speartime=12}] add removetimes
tag @a[tag=gold_spear_a,scores={speartime=12}] remove gold_spear_a
scoreboard players set @p[tag=removetimes,scores={speartime=12}] speartime 0
tag @p remove removetimes


scoreboard players add @a[tag=stone_spear_a] speartime 1
execute @a[tag=stone_spear_a,scores={speartime=1}] ~ ~ ~ summon sw:spear_swing_a ^ ^1 ^2.3
execute @a[tag=stone_spear_a,scores={speartime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=stone_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=stone_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=stone_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=stone_spear_a,scores={speartime=10}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=stone_spear_a,scores={speartime=12}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ kill @s
tag @a[tag=stone_spear_a,scores={speartime=12}] add removetimesept
tag @a[tag=stone_spear_a,scores={speartime=12}] remove stone_spear_a
scoreboard players set @p[tag=removetimes,scores={speartime=12}] speartime 0
tag @p remove removetimesept


scoreboard players add @a[tag=obsidian_spear_a] speartime 1
execute @a[tag=obsidian_spear_a,scores={speartime=1}] ~ ~ ~ summon sw:spear_swing_a ^ ^1 ^2.3
execute @a[tag=obsidian_spear_a,scores={speartime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=obsidian_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=obsidian_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=obsidian_spear_a,scores={speartime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=obsidian_spear_a,scores={speartime=10}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=obsidian_spear_a,scores={speartime=12}] ~ ~ ~ execute @e[type=sw:spear_swing_a] ~ ~ ~ kill @s
tag @a[tag=obsidian_spear_a,scores={speartime=12}] add removetimeh
tag @a[tag=obsidian_spear_a,scores={speartime=12}] remove obsidian_spear_a
scoreboard players set @p[tag=removetimeh,scores={speartime=12}] speartime 0
tag @p remove removetimeh


scoreboard players add @a[tag=hammer_a] hammertime 1
execute @a[tag=hammer_a,scores={hammertime=1}] ~ ~ ~ summon sw:hammer_swing_a ^ ^1 ^3
execute @a[tag=hammer_a,scores={hammertime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=hammer_a,scores={hammertime=5}] ~ ~ ~ playsound random.anvil_land @p
execute @a[tag=hammer_a,scores={hammertime=8}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=hammer_a,scores={hammertime=10}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ kill @s
tag @a[tag=hammer_a,scores={hammertime=10}] add removetimeha
tag @a[tag=hammer_a,scores={hammertime=10}] remove hammer_a
scoreboard players set @p[tag=removetimeha,scores={hammertime=10}] hammertime 0
tag @p remove removetimeha


scoreboard players add @a[tag=stone_hammer_a] hammertime 1
execute @a[tag=stone_hammer_a,scores={hammertime=1}] ~ ~ ~ summon sw:hammer_swing_a ^ ^1 ^3
execute @a[tag=stone_hammer_a,scores={hammertime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=stone_hammer_a,scores={hammertime=5}] ~ ~ ~ playsound random.anvil_land @p
execute @a[tag=stone_hammer_a,scores={hammertime=8}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=stone_hammer_a,scores={hammertime=10}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ kill @s
tag @a[tag=stone_hammer_a,scores={hammertime=10}] add removetimehc
tag @a[tag=stone_hammer_a,scores={hammertime=10}] remove stone_hammer_a
scoreboard players set @p[tag=removetimehc,scores={hammertime=10}] hammertime 0
tag @p remove removetimehc


scoreboard players add @a[tag=gold_hammer_a] hammertime 1
execute @a[tag=gold_hammer_a,scores={hammertime=1}] ~ ~ ~ summon sw:hammer_swing_a ^ ^1 ^3
execute @a[tag=gold_hammer_a,scores={hammertime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=gold_hammer_a,scores={hammertime=5}] ~ ~ ~ playsound random.anvil_land @p
execute @a[tag=gold_hammer_a,scores={hammertime=8}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=gold_hammer_a,scores={hammertime=10}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ kill @s
tag @a[tag=gold_hammer_a,scores={hammertime=10}] add removetimehd
tag @a[tag=gold_hammer_a,scores={hammertime=10}] remove gold_hammer_a
scoreboard players set @p[tag=removetimehd,scores={hammertime=10}] hammertime 0
tag @p remove removetimehd


scoreboard players add @a[tag=obsidian_hammer_a] hammertime 1
execute @a[tag=obsidian_hammer_a,scores={hammertime=1}] ~ ~ ~ summon sw:hammer_swing_a ^ ^1 ^3
execute @a[tag=obsidian_hammer_a,scores={hammertime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=obsidian_hammer_a,scores={hammertime=5}] ~ ~ ~ playsound random.anvil_land @p
execute @a[tag=obsidian_hammer_a,scores={hammertime=8}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=obsidian_hammer_a,scores={hammertime=10}] ~ ~ ~ execute @e[type=sw:hammer_swing_a] ~ ~ ~ kill @s
tag @a[tag=obsidian_hammer_a,scores={hammertime=10}] add removetimehb
tag @a[tag=obsidian_hammer_a,scores={hammertime=10}] remove obsidian_hammer_a
scoreboard players set @p[tag=removetimehb,scores={hammertime=10}] hammertime 0
tag @p remove removetimehb


scoreboard players add @a[tag=sword_a] swordtime 1
execute @a[tag=sword_a,scores={swordtime=1}] ~ ~ ~ summon sw:sword_swing_a ^ ^1 ^1.6
execute @a[tag=sword_a,scores={swordtime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=sword_a,scores={swordtime=1}] ~ ~ ~ execute @e[r=4,type=sw:sword_swing_a] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @a[tag=sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=sword_a,scores={swordtime=9}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=sword_a,scores={swordtime=12}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ kill @s
tag @a[tag=sword_a,scores={swordtime=12}] add removetimen
tag @a[tag=sword_a,scores={swordtime=12}] remove sword_a
scoreboard players set @p[tag=removetimen,scores={swordtime=12}] swordtime 0
tag @p remove removetimen


scoreboard players add @a[tag=stone_sword_a] swordtime 1
execute @a[tag=stone_sword_a,scores={swordtime=1}] ~ ~ ~ summon sw:sword_swing_a ^ ^1 ^1.6
execute @a[tag=stone_sword_a,scores={swordtime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=stone_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=stone_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=stone_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=stone_sword_a,scores={swordtime=9}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=stone_sword_a,scores={swordtime=12}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ kill @s
tag @a[tag=stone_sword_a,scores={swordtime=12}] add removetimedix
tag @a[tag=stone_sword_a,scores={swordtime=12}] remove stone_sword_a
scoreboard players set @p[tag=removetimedix,scores={swordtime=12}] swordtime 0
tag @p remove removetimedix


scoreboard players add @a[tag=gold_sword_a] swordtime 1
execute @a[tag=gold_sword_a,scores={swordtime=1}] ~ ~ ~ summon sw:sword_swing_a ^ ^1 ^1.6
execute @a[tag=gold_sword_a,scores={swordtime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=gold_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=gold_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=gold_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=gold_sword_a,scores={swordtime=9}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=gold_sword_a,scores={swordtime=12}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ kill @s
tag @a[tag=gold_sword_a,scores={swordtime=12}] add removetimedixt
tag @a[tag=gold_sword_a,scores={swordtime=12}] remove gold_sword_a
scoreboard players set @p[tag=removetimedixt,scores={swordtime=12}] swordtime 0
tag @p remove removetimedixt


		
scoreboard players add @a[tag=obsidian_sword_a] swordtime 1
execute @a[tag=obsidian_sword_a,scores={swordtime=1}] ~ ~ ~ summon sw:sword_swing_a ^ ^1 ^1.6
execute @a[tag=obsidian_sword_a,scores={swordtime=1}] ^ ^1 ^2 effect @e[type=!player,type=!sw:wizard,r=3.5] poison 1 6 true
execute @a[tag=obsidian_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.11 @p[scores={luck=1}]
execute @a[tag=obsidian_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.far @p[scores={luck=2}]
execute @a[tag=obsidian_sword_a,scores={swordtime=5}] ~ ~ ~ playsound record.blocks @p[scores={luck=3}]
execute @a[tag=obsidian_sword_a,scores={swordtime=9}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[tag=obsidian_sword_a,scores={swordtime=12}] ~ ~ ~ execute @e[type=sw:sword_swing_a] ~ ~ ~ kill @s
tag @a[tag=obsidian_sword_a,scores={swordtime=12}] add removetimedouze
tag @a[tag=obsidian_sword_a,scores={swordtime=12}] remove obsidian_sword_a
scoreboard players set @p[tag=removetimedouze,scores={swordtime=12}] swordtime 0
tag @p remove removetimedouze




