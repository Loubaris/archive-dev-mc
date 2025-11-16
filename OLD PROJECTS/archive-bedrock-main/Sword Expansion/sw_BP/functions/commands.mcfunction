


scoreboard players add @e[type=sw:tnt_shoot] tnttime 1
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @p ~ ~ ~ playsound cauldron.explode @a[r=20] ^ ^ ^10
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ particle sw:exploding_trail ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ particle sw:explosiontnt ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ effect @e[type=!player,r=12] instant_damage 2 2 true
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @e[type=skeleton,r=12] ~ ~ ~ kill @s
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @e[type=zombie,r=12] ~ ~ ~ kill @s
execute @e[type=sw:tnt_shoot,scores={tnttime=19}] ~ ~ ~ kill @s

execute @e[type=sw:shulker_bullet] ~ ~ ~ effect @e[type=!player,r=2] levitation 2 2 true


scoreboard players add @p[tag=supersonicsword] supersonicsword 1
execute @p[tag=supersonicsword,scores={supersonicsword=1}] ~ ~ ~ event entity @p[tag=supersonicsword] sp:n_supersonic_shoot
execute @p[tag=supersonicsword,scores={supersonicsword=1}] ~ ~ ~ summon sw:supersonic_shoot
execute @p[tag=supersonicsword,scores={supersonicsword=1}] ~ ~ ~ playsound 4ks.music.supersonic_ability @a[r=20]
tag @p[tag=supersonicsword,scores={supersonicsword=55}] add removetimespc
tag @p[tag=supersonicsword,scores={supersonicsword=55}] remove supersonicsword
scoreboard players set @p[tag=removetimespc,scores={supersonicsword=55}] supersonicsword 0
tag @p remove removetimespc

scoreboard players add @e[type=sw:supersonic_shoot] supersonictime 1
execute @e[type=sw:laser_wave] ~ ~ ~ tp @e[type=sw:supersonic_shoot] ~ ~ ~ facing @p[tag=supersonicsword]
execute @p[r=1,tag=supersonicsword] ~ ~ ~ execute @e[type=sw:supersonic_shoot] ~ ~ ~ effect @e[r=5,type=!player] instant_damage 2 4 true
execute @p[r=1,tag=supersonicsword] ~ ~ ~ execute @e[type=sw:supersonic_shoot] ~ ~ ~ execute @e[type=skeleton,r=5] ~ ~ ~ kill @s
execute @p[r=1,tag=supersonicsword] ~ ~ ~ execute @e[type=sw:supersonic_shoot] ~ ~ ~ execute @e[type=zombie,r=5] ~ ~ ~ kill @s
execute @e[type=sw:supersonic_shoot,scores={supersonictime=52}] ~ ~ ~ tp @e[type=sw:laser_wave] ~ ~-1000 ~
execute @e[type=sw:supersonic_shoot,scores={supersonictime=52}] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=sw:supersonic_shoot,scores={supersonictime=55}] ~ ~ ~ kill @e[type=sw:laser_wave]
execute @e[type=sw:supersonic_shoot,scores={supersonictime=55}] ~ ~ ~ kill @s


scoreboard players add @p[tag=firesword] firetime 1
execute @p[tag=firesword,scores={firetime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=firesword,scores={firetime=2}] ~ ~ ~ playsound 4ks.music.fire_sword_ability @a[r=15]
execute @p[tag=firesword] ~ ~ ~ function fire
tag @p[tag=firesword,scores={firetime=25}] add removetimeone
tag @p[tag=firesword,scores={firetime=25}] remove firesword
scoreboard players set @p[tag=removetimeone,scores={firetime=25}] firetime 0
tag @p remove removetimeone

scoreboard players add @p[tag=ultrasword] ultratime 1
execute @p[tag=ultrasword,scores={ultratime=1}] ~ ~ ~ playsound 4ks.music.ultra_ability @a[r=50]
execute @p[tag=ultrasword,scores={ultratime=1}] ~ ~ ~ particle sw:rainbow_cast ~ ~ ~
execute @p[tag=ultrasword,scores={ultratime=1}] ~ ~ ~ particle sw:spell_ring_rainbow ~ ~ ~
execute @p[tag=ultrasword,scores={ultratime=1}] ~ ~ ~ event entity @p[tag=ultrasword] sp:n_rainbow_shoot
execute @p[tag=ultrasword,scores={ultratime=25}] ~ ~ ~ execute @e[type=sw:rainbow_shoot] ~ ~ ~ particle sw:rainbow_explode ~ ~ ~
execute @p[tag=ultrasword,scores={ultratime=24}] ~ ~ ~ playsound cauldron.explode @a[r=20] ^ ^ ^5
execute @p[tag=ultrasword,scores={ultratime=25}] ~ ~ ~ execute @e[type=sw:rainbow_shoot] ~ ~ ~ effect @e[type=!player,type=!item,r=12] instant_damage 2 5 true
execute @p[tag=ultrasword,scores={ultratime=25}] ~ ~ ~ execute @e[type=sw:rainbow_shoot] ~ ~ ~ execute @e[type=zombie,r=12] ~ ~ ~ kill @s
execute @p[tag=ultrasword,scores={ultratime=25}] ~ ~ ~ execute @e[type=sw:rainbow_shoot] ~ ~ ~ execute @e[type=skeleton,r=12] ~ ~ ~ kill @s
execute @p[tag=ultrasword,scores={ultratime=25}] ~ ~ ~ execute @e[type=sw:rainbow_shoot] ~ ~ ~ kill @s
tag @p[tag=ultrasword,scores={ultratime=25}] add removetimeone
tag @p[tag=ultrasword,scores={ultratime=25}] remove ultrasword
scoreboard players set @p[tag=removetimeone,scores={ultratime=25}] ultratime 0
tag @p remove removetimeone

scoreboard players add @p[tag=bouldersword] bouldersword 1
execute @p[tag=bouldersword,scores={bouldersword=1}] ~ ~ ~ event entity @p[tag=bouldersword] sp:n_boulder_shoot
execute @p[tag=bouldersword,scores={bouldersword=1}] ~ ~ ~ playsound 4ks.music.boulder_ability @a[r=20]
tag @p[tag=bouldersword,scores={bouldersword=50}] add removetimebld
tag @p[tag=bouldersword,scores={bouldersword=50}] remove bouldersword
scoreboard players set @p[tag=removetimebld,scores={bouldersword=50}] bouldersword 0
tag @p remove removetimebld

scoreboard players add @e[type=sw:boulder_toss] bouldertime 1
execute @e[type=sw:boulder_toss,scores={bouldertime=1}] ~ ~ ~ tag @p[r=5] add boulder
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ particle sw:boulder ~ ~ ~
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ execute @e[type=zombie,r=8] ~ ~ ~ kill @s
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ execute @e[type=skeleton,r=8] ~ ~ ~ kill @s
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ effect @e[r=8] instant_damage 3 1 true
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ tag @a remove boulder
execute @e[type=sw:boulder_toss,scores={bouldertime=51}] ~ ~ ~ kill @s

scoreboard players add @p[tag=plasmasword] plasmatime 1
execute @p[tag=plasmasword,scores={plasmatime=1}] ~ ~ ~ event entity @p[tag=plasmasword] sp:n_plasma_shoot
execute @p[tag=plasmasword,scores={plasmatime=1}] ~ ~ ~ playsound 4ks.music.plasma_ability_charge @a[r=20]
execute @p[tag=plasmasword,scores={plasmatime=15}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ particle sw:plasma_charge ~ ~ ~
execute @p[tag=plasmasword,scores={plasmatime=14}] ~ ~ ~ execute @e[type=sw:plasma_shoot] ~ ~ ~ summon sw:plasma_beam
execute @p[tag=plasmasword,scores={plasmatime=14}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ effect @s invisibility 8 255 true
execute @p[tag=plasmasword,scores={plasmatime=15}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ particle sw:plasma_beam
execute @e[type=sw:plasma_beam] ~ ~ ~ execute @e[type=!player,type=!item,type=!sw:plasma_beam,type=!sw:plasma_shoot] ~ ~ ~ tp @s ^ ^ ^0.1 facing @e[type=sw:plasma_beam]
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ effect @e[r=15] instant_damage 3 5 true
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ execute @e[type=zombie,r=15] ~ ~ ~ kill @s
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ execute @e[type=skeleton,r=15] ~ ~ ~ kill @s
execute @p[tag=plasmasword,scores={plasmatime=151}] ~ ~ ~ execute @e[type=sw:plasma_beam] ~ ~ ~ tp @s ~ ~-100 ~
execute @p[tag=plasmasword,scores={plasmatime=151}] ~ ~ ~ execute @e[type=sw:plasma_shoot] ~ ~ ~ kill @s
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ playanimation @e[type=sw:plasma_beam] animation.plasma.shoot
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ effect @e[type=sw:plasma_beam] clear
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ stopsound @a[r=30]
execute @p[tag=plasmasword,scores={plasmatime=100}] ~ ~ ~ playsound 4ks.music.plasma_ability_explosion @a[r=20]
execute @p[tag=plasmasword,scores={plasmatime=152}] ~ ~ ~ kill @e[type=sw:plasma_beam]
tag @p[tag=plasmasword,scores={plasmatime=152}] add removetimepls
tag @p[tag=plasmasword,scores={plasmatime=152}] remove plasmasword
scoreboard players set @p[tag=removetimepls,scores={plasmatime=152}] plasmatime 0
tag @p remove removetimepls



scoreboard players add @p[tag=demonsword] demontime 1
execute @p[tag=demonsword,r=1,scores={demontime=5}] ~ ~ ~ execute @e[r=10,type=!item,type=!player,type=!sw:tnt_shoot,type=!sw:laser_wave] ~ ~ ~ particle sw:spell_ring_demon
execute @p[tag=demonsword,r=1,scores={demontime=5}] ~ ~ ~ execute @e[r=10,type=!item,type=!player,type=!sw:tnt_shoot,type=!sw:laser_wave] ~ ~ ~ fill ~ ~ ~ ~ ~1 ~ netherite_block
execute @p[tag=demonsword,r=1,scores={demontime=5}] ~ ~ ~ execute @e[r=10,type=!item,type=!player,type=!sw:tnt_shoot,type=!sw:laser_wave] ~ ~ ~ tp @s ~ ~-200 ~
execute @p[tag=demonsword,r=1,scores={demontime=2}] ~ ~ ~ playsound 4ks.music.demon_ability @a[r=15]
execute @p[tag=demonsword,r=1,scores={demontime=2}] ~ ~ ~ particle sw:demon_cast ~ ~ ~
execute @p[tag=demonsword,r=1,scores={demontime=2}] ~ ~ ~ particle sw:spell_ring_demon ~ ~ ~
tag @p[tag=demonsword,scores={demontime=150}] add removetimedeux
tag @p[tag=demonsword,scores={demontime=150}] remove demonsword
scoreboard players set @p[tag=removetimedeux,scores={demontime=150}] demontime 0
tag @p remove removetimedeux


scoreboard players add @p[tag=dragonsword] dragontime 1
execute @p[tag=dragonsword,scores={dragontime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=dragonsword,scores={dragontime=2}] ~ ~ ~ playsound 4ks.music.dragon_ability @a[r=15]
execute @p[tag=dragonsword] ~ ~ ~ particle sw:dragon ^ ^1 ^3
execute @p[tag=dragonsword] ~ ~ ~ particle sw:dragon ^ ^1 ^4
execute @p[tag=dragonsword] ~ ~ ~ particle sw:dragon ^ ^1 ^5
execute @p[tag=dragonsword] ~ ~ ~ particle sw:dragon ^ ^1 ^6
execute @p[tag=dragonsword] ~ ~ ~ particle sw:dragon ^ ^1 ^7
execute @p[tag=dragonsword] ~ ~ ~ effect @e[type=!player,r=5] wither 2 1 true
tag @p[tag=dragonsword,scores={dragontime=50}] add removetimedrag
tag @p[tag=dragonsword,scores={dragontime=50}] remove dragonsword
scoreboard players set @p[tag=removetimedrag,scores={dragontime=50}] dragontime 0
tag @p remove removetimedrag

scoreboard players add @p[tag=lasersword] lasertime 1
execute @p[tag=lasersword,scores={lasertime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=lasersword,scores={lasertime=2}] ~ ~ ~ playsound 4ks.music.laser_ability @a[r=15]
execute @p[tag=lasersword] ~ ~ ~ function laser
tag @p[tag=lasersword,scores={lasertime=25}] add removetimetrois
tag @p[tag=lasersword,scores={lasertime=25}] remove lasersword
scoreboard players set @p[tag=removetimetrois,scores={lasertime=25}] lasertime 0
tag @p remove removetimetrois

scoreboard players add @e[tag=infernosword] infernotime 1
execute @a[tag=infernosword,scores={infernotime=1}] ~ ~ ~ playsound 4ks.music.inferno_ability @a[r=10]
execute @a[tag=infernosword,scores={infernotime=1}] ~ ~ ~ summon sw:inferno_stand
execute @a[tag=infernosword] ~ ~ ~ execute @e[type=sw:inferno_stand] ~ ~ ~ execute @e[type=!player,type=!item,r=10] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ fire 0 replace air 0
execute @a[tag=infernosword,scores={infernotime=1}] ~ ~ ~ particle sw:inferno_ring ~ ~ ~
execute @a[tag=infernosword,scores={infernotime=300}] ~ ~ ~ kill @e[type=sw:inferno_stand]
tag @a[tag=infernosword,scores={infernotime=300}] add removetimefour
tag @a[tag=infernosword,scores={infernotime=300}] remove infernosword
scoreboard players set @p[tag=removetimefour,scores={infernotime=300}] infernotime 0
tag @p remove removetimefour

scoreboard players add @p[tag=crystalsword] crystaltime 1
execute @p[tag=crystalsword,scores={crystaltime=1}] ~ ~ ~ event entity @s sp:n_crystal_shoot
execute @p[tag=crystalsword,scores={crystaltime=1}] ~ ~ ~ particle sw:crystal_cast ~ ~ ~
execute @p[tag=crystalsword,scores={crystaltime=1}] ~ ~ ~ particle sw:spell_ring_crystal ~ ~ ~
execute @p[tag=crystalsword,scores={crystaltime=1}] ~ ~ ~ playsound 4ks.music.crystal_ability @a[r=6]
tag @a[tag=crystalsword,scores={crystaltime=100}] add removetimecce
tag @a[tag=crystalsword,scores={crystaltime=100}] remove crystalsword
scoreboard players set @p[tag=removetimecce,scores={crystaltime=100}] crystaltime 0
tag @p remove removetimecce

scoreboard players add @e[type=sw:crystal_shoot] crystaltime 1
execute @e[type=sw:crystal_shoot,scores={crystaltime=20}] ~ ~ ~ fill ~3 ~ ~3 ~-3 ~ ~-3 diamond_ore 0 replace stone
execute @e[type=sw:crystal_shoot,scores={crystaltime=20}] ~ ~ ~ fill ~3 ~1 ~3 ~-3 ~1 ~-3 gold_ore 0 replace stone
execute @e[type=sw:crystal_shoot,scores={crystaltime=20}] ~ ~ ~ fill ~3 ~2 ~3 ~-3 ~2 ~-3 emerald_ore 0 replace stone
execute @e[type=sw:crystal_shoot,scores={crystaltime=20}] ~ ~ ~ fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 iron_ore 0 replace stone
execute @e[type=sw:crystal_shoot,scores={crystaltime=20}] ~ ~ ~ fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 lapis_ore 0 replace stone
execute @e[type=sw:crystal_shoot,scores={crystaltime=20}] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=sw:crystal_shoot,scores={crystaltime=22}] ~ ~ ~ kill @s


scoreboard players add @p[tag=heal] healtime 1
execute @p[tag=heal,scores={healtime=1}] ~ ~ ~ effect @p instant_health 1 255 true
execute @p[tag=heal,scores={healtime=2}] ~ ~ ~ playsound 4ks.music.ethereal_ability @a[r=15]
execute @p[tag=heal,scores={healtime=2}] ~ ~ ~ particle sw:ethereal_cast ~ ~0.4 ~
execute @p[tag=heal,scores={healtime=2}] ~ ~ ~ particle sw:spell_ring_ethereal ~ ~ ~
tag @p[tag=heal,scores={healtime=50}] add removetimecinq
tag @p[tag=heal,scores={healtime=50}] remove heal
scoreboard players set @p[tag=removetimecinq,scores={healtime=50}] healtime 0
tag @p remove removetimecinq


scoreboard players add @e[tag=ice] icetime 1
execute @a[tag=ice,scores={icetime=1}] ~ ~ ~ particle sw:ice_cast ~ ~ ~
execute @a[tag=ice,scores={icetime=1}] ~ ~ ~ particle sw:spell_ring_ice ~ ~ ~
execute @a[tag=ice,scores={icetime=1}] ~ ~ ~ playsound 4ks.music.ice_ability @a[r=10]
execute @a[tag=ice,scores={icetime=2}] ~ ~ ~ execute @e[type=!player,type=!item,r=5] ~ ~ ~ particle sw:spell_ring_ice ~ ~ ~
execute @a[tag=ice,scores={icetime=2}] ~ ~ ~ effect @e[type=!player,type=!item,r=10] slowness 8 255 true
execute @a[tag=ice,scores={icetime=5}] ~ ~ ~ effect @e[type=!player,type=!item,r=10] fatal_poison 1 30 true
tag @a[tag=ice,scores={icetime=160}] add removetimesix
tag @a[tag=ice,scores={icetime=160}] remove ice
scoreboard players set @p[tag=removetimesix,scores={icetime=160}] icetime 0
tag @p remove removetimesix



scoreboard players add @e[tag=spider] spidertime 1
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ particle sw:spider_cast ~ ~ ~
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ playsound mob.spider.say @a[r=10]
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ particle sw:spell_ring_spider ~ ~ ~
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ summon sw:spider_helper ~3 ~ ~
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ summon sw:spider_helper ~-3 ~ ~
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ summon sw:spider_helper ~ ~ ~3
execute @a[tag=spider,scores={spidertime=1}] ~ ~ ~ summon sw:spider_helper ~ ~ ~-3
execute @a[tag=spider,scores={spidertime=200}] ~ ~ ~ kill @e[type=sw:spider_helper]
tag @a[tag=spider,scores={spidertime=300}] add removetimeseven
tag @a[tag=spider,scores={spidertime=300}] remove spider
scoreboard players set @p[tag=removetimeseven,scores={spidertime=300}] spidertime 0
tag @p remove removetimeseven
