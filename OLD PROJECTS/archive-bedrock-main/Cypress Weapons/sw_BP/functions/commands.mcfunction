scoreboard players add @e[type=sw:tnt_shoot] tnttime 1
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @p ~ ~ ~ playsound cauldron.explode @a[r=20] ^ ^ ^10
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ particle minecraft:large_explosion ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ effect @e[type=!player,r=12] instant_damage 2 2 true
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @e[type=skeleton,r=12] ~ ~ ~ kill @s
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @e[type=zombie,r=12] ~ ~ ~ kill @s
execute @e[type=sw:tnt_shoot,scores={tnttime=19}] ~ ~ ~ kill @s



scoreboard players add @p[tag=banishedsword] banishedsword 1
execute @p[tag=banishedsword,scores={banishedsword=1}] ~ ~ ~ event entity @p[tag=banishedsword] sp:n_banished_shoot
clear @p[tag=banishedsword] sw:banished_sword 0 1
tag @p[tag=banishedsword,scores={banishedsword=60}] add removetimespc
tag @p[tag=banishedsword,scores={banishedsword=60}] remove banishedsword
scoreboard players set @p[tag=removetimespc,scores={banishedsword=60}] banishedsword 0
tag @p remove removetimespc

scoreboard players add @e[type=sw:banished] banishedtime 1
execute @p[r=1,tag=banishedsword] ~ ~ ~ execute @e[type=sw:banished] ~ ~ ~ effect @e[r=5,type=!player] instant_damage 2 4 true
execute @e[type=sw:banished,scores={banishedtime=58}] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=sw:banished,scores={banishedtime=56}] ~ ~ ~ give @p[tag=banishedsword] sw:banished_sword 1
execute @e[type=sw:banished,scores={banishedtime=61}] ~ ~ ~ kill @s


scoreboard players add @p[tag=firesword] firetime 1
execute @p[tag=firesword,scores={firetime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=firesword] ~ ~ ~ function fire
tag @p[tag=firesword,scores={firetime=25}] add removetimeone
tag @p[tag=firesword,scores={firetime=25}] remove firesword
scoreboard players set @p[tag=removetimeone,scores={firetime=25}] firetime 0
tag @p remove removetimeone


scoreboard players add @p[tag=darksword] darksword 1
execute @p[tag=darksword,scores={darksword=1}] ~ ~ ~ event entity @p[tag=darksword] sp:n_dark_shoot
tag @p[tag=darksword,scores={darksword=50}] add removetimebld
tag @p[tag=darksword,scores={darksword=50}] remove darksword
scoreboard players set @p[tag=removetimebld,scores={darksword=50}] darksword 0
tag @p remove removetimebld

scoreboard players add @e[type=sw:dark_shoot] darktime 1
execute @e[type=sw:dark_shoot] ~ ~ ~ particle sw:darkshoot ~ ~ ~
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ particle sw:dark ~ ~ ~
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ effect @e[r=8,type=!player] levitation 1 25 true
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ effect @e[r=8,type=!player] fatal_poison 1 3 true
execute @e[type=sw:dark_shoot,scores={darktime=51}] ~ ~ ~ kill @s


scoreboard players add @p[tag=lovesword] lovesword 1
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ event entity @p[tag=lovesword] sp:n_love_shoot
tag @p[tag=lovesword,scores={lovesword=50}] add removetimelv
tag @p[tag=lovesword,scores={lovesword=50}] remove lovesword
scoreboard players set @p[tag=removetimelv,scores={lovesword=50}] lovesword 0
tag @p remove removetimelv

scoreboard players add @e[type=sw:love_shoot] lovetime 1
execute @e[type=sw:love_shoot] ~ ~ ~ particle sw:love ~ ~ ~
execute @e[type=sw:love_shoot] ~ ~ ~ execute @e[type=!player,type=!item,r=4] ~ ~ ~ scoreboard players set @s lovetime 49
execute @e[type=sw:love_shoot,scores={lovetime=50}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:love_shoot,scores={lovetime=50}] ~ ~ ~ particle sw:heart ~ ~ ~
execute @e[type=sw:love_shoot,scores={lovetime=50}] ~ ~ ~ effect @e[r=8] fatal_poison 5 10 true
execute @e[type=sw:love_shoot,scores={lovetime=51}] ~ ~ ~ kill @s



scoreboard players add @e[tag=duskbladesword] dusktime 1
execute @a[tag=duskbladesword,scores={dusktime=1}] ~ ~ ~ particle sw:dusk_cast ~ ~ ~
execute @a[tag=duskbladesword,scores={dusktime=1}] ~ ~ ~ particle sw:spell_ring_dusk ~ ~ ~
execute @a[tag=duskbladesword,scores={dusktime=2}] ~ ~ ~ execute @e[type=!player,type=!item,r=5] ~ ~ ~ particle sw:spell_ring_dusk ~ ~ ~
execute @a[tag=duskbladesword,scores={dusktime=2}] ~ ~ ~ effect @e[type=!player,type=!item,r=10] slowness 8 255 true
execute @a[tag=duskbladesword,scores={dusktime=5}] ~ ~ ~ effect @e[type=!player,type=!item,r=10] fatal_poison 1 30 true
tag @a[tag=dusk,scores={dusktime=160}] add removetimedsk
tag @a[tag=dusk,scores={dusktime=160}] remove duskbladesword
scoreboard players set @p[tag=removetimedsk,scores={dusktime=160}] dusktime 0
tag @p remove removetimedsk


scoreboard players add @p[r=1,tag=lightningsword] lightningtime 1
execute @p[tag=lightningsword,scores={lightningtime=1}] ~ ~ ~ playsound armor.equip_chain @p
execute @p[tag=lightningsword,scores={lightningtime=1}] ~ ~ ~ event entity @p[tag=lightningsword] sp:n_lightning_shoot
tag @p[tag=lightningsword,scores={lightningtime=50}] add removetimea
tag @p[tag=lightningsword,scores={lightningtime=50}] remove lightningsword
scoreboard players set @p[tag=removetimea,scores={lightningtime=50}] lightningtime 0
tag @p remove removetimea



scoreboard players add @e[type=sw:lightning_shoot] lightshoottime 1
execute @e[type=sw:lightning_shoot] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~ ~
execute @e[type=sw:lightning_shoot,scores={lightshoottime=50}] ~ ~ ~ summon lightning_bolt
execute @e[type=sw:lightning_shoot,scores={lightshoottime=50}] ~ ~ ~ effect @e[r=3] instant_damage 3 1 true
execute @e[type=sw:lightning_shoot,scores={lightshoottime=51}] ~ ~ ~ kill @s


scoreboard players add @p[r=1,tag=maelstrom] watertime 1
execute @p[r=1,scores={watertime=1},tag=maelstrom] ~ ~ ~ summon sw:maelstrom ^ ^2 ^5
execute @p[r=1,scores={watertime=1},tag=maelstrom] ~ ~ ~ playsound bucket.fill_water @p[r=10]
execute @e[type=sw:maelstrom] ~ ~ ~ particle sw:maelstrom ~ ~ ~
execute @e[type=sw:maelstrom] ~ ~ ~ execute @e[r=16,type=!sw:maelstrom,type=!item,tag=!maelstrom] ~ ~ ~ tp @s ^ ^ ^0.2 facing @e[type=sw:maelstrom]
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ execute @e[type=sw:maelstrom] ~ ~ ~ effect @e[r=16,type=!sw:maelstrom,type=!item,tag=!maelstrom] instant_damage 2 255 true
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ playsound cauldron.explode @a[r=20]
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ execute @e[type=sw:maelstrom] ~ ~ ~ kill @s
tag @p[r=1,scores={watertime=100..},tag=maelstrom] add removetimec
tag @p[r=1,scores={watertime=100..},tag=maelstrom] remove maelstrom
scoreboard players set @p[r=1,tag=removetimec,scores={watertime=100..}] watertime 0
tag @p remove removetimec




scoreboard players add @p[r=1,tag=sandsword] sandtime 1
execute @p[r=1,scores={sandtime=1},tag=sandsword] ~ ~ ~ summon sw:sandstorm ^ ^2 ^5
execute @p[r=1,scores={sandtime=1},tag=sandsword] ~ ~ ~ playsound dig.sand @p[r=10]
execute @e[type=sw:sandstorm] ~ ~ ~ execute @e[r=15,tag=!sandsword] ~ ~ ~ tp @s ^ ^ ^0.07 facing @e[type=sw:sandstorm]
execute @e[type=sw:sandstorm] ~ ~ ~ particle sw:sand
execute @p[r=1,scores={sandtime=50},tag=sandsword] ~ ~ ~ execute @e[type=sw:sandstorm] ~ ~ ~ effect @e[r=16,type=!sw:sandstorm,type=!item,tag=!sandsword] slowness 8 255 true
execute @p[r=1,scores={sandtime=50},tag=sandsword] ~ ~ ~ execute @e[type=sw:sandstorm] ~ ~ ~ effect @e[r=16,type=!sw:sandstorm,type=!item,tag=!sandsword] fatal_poison 1 40 true
execute @p[r=1,scores={sandtime=100..},tag=sandsword] ~ ~ ~ playsound cauldron.explode @a[r=20]
execute @p[r=1,scores={sandtime=100..},tag=sandsword] ~ ~ ~ execute @e[type=sw:sandstorm] ~ ~ ~ kill @s
tag @p[r=1,scores={sandtime=100..},tag=sandsword] add removetimegg
tag @p[r=1,scores={sandtime=100..},tag=sandsword] remove sandsword
scoreboard players set @p[r=1,tag=removetimegg,scores={sandtime=100..}] sandtime 0
tag @p remove removetimegg


scoreboard players add @p[tag=withersword] withersword 1
execute @p[tag=withersword,scores={withersword=1}] ~ ~ ~ summon wither ~ ~10 ~
tag @p[tag=withersword,scores={withersword=300}] add removetimewt
tag @p[tag=withersword,scores={withersword=300}] remove withersword
scoreboard players set @p[tag=removetimewt,scores={withersword=30}] withersword 0
tag @p remove removetimewt