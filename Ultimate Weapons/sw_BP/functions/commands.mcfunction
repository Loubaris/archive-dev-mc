scoreboard players add @a[tag=!join] jointime 1
tag @a[tag=!join,scores={jointime=60}] add join

execute @a[tag=maelstrom,tag=skysword,tag=sandsword] ~ ~ ~ function clear

scoreboard players add @e[type=sw:tnt_shoot] tnttime 1
execute @e[type=sw:tnt_shoot,scores={tnttime=5..}] ~ ~ ~ particle sw:red_tnt_ambient ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @p ~ ~ ~ playsound cauldron.explode @a[r=20] ^ ^ ^10
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ particle minecraft:large_explosion ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ particle sw:tnt_explosion ~ ~ ~
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,r=4.5] instant_damage 2 2 true
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @e[type=skeleton,r=4.5] ~ ~ ~ kill @s
execute @e[type=sw:tnt_shoot,scores={tnttime=18}] ~ ~ ~ execute @e[type=zombie,r=4.5] ~ ~ ~ kill @s
execute @e[type=sw:tnt_shoot,scores={tnttime=19}] ~ ~ ~ kill @s



scoreboard players add @p[tag=join,tag=banishedsword] banishedsword 1
execute @p[tag=banishedsword,scores={banishedsword=1}] ~ ~ ~ playsound 4ks.music.banished_ability @a[r=20]
execute @p[tag=banishedsword,scores={banishedsword=1}] ~ ~ ~ event entity @p[tag=banishedsword] sp:n_banished_shoot
execute @p[tag=banishedsword,scores={banishedsword=1}] ~ ~ ~ clear @p[tag=banishedsword] sw:banished_sword 0 1
tag @p[tag=banishedsword,scores={banishedsword=60}] add removetimespc
tag @p[tag=banishedsword,scores={banishedsword=60}] remove banishedsword
scoreboard players set @p[tag=removetimespc,scores={banishedsword=60}] banishedsword 0
tag @p remove removetimespc

scoreboard players add @e[type=sw:banished] banishedtime 1
execute @p[r=1,tag=banishedsword] ~ ~ ~ execute @e[type=sw:banished] ~ ~ ~ execute @e[r=5,type=!player,family=!inac,family=!npc,type=!item,type=!sw:banished] ~ ~ ~ playsound firework.blast @a[r=30] ~ ~ ~
execute @p[r=1,tag=banishedsword] ~ ~ ~ execute @e[type=sw:banished] ~ ~ ~ execute @e[r=5,type=!player,family=!inac,family=!npc,type=!item,type=!sw:banished] ~ ~ ~ particle sw:firework_green ~ ~ ~
execute @p[r=1,tag=banishedsword] ~ ~ ~ execute @e[type=sw:banished] ~ ~ ~ effect @e[r=5,type=!player] instant_damage 2 4 true
execute @e[type=sw:banished,scores={banishedtime=58}] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=sw:banished,scores={banishedtime=56}] ~ ~ ~ give @p[tag=banishedsword] sw:banished_sword 1
execute @e[type=sw:banished,scores={banishedtime=61}] ~ ~ ~ kill @s


scoreboard players add @p[tag=join,tag=firesword] firetime 1
execute @p[tag=firesword,scores={firetime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=firesword,scores={firetime=1}] ~ ~ ~ playsound 4ks.music.fire_ability @a[r=20]
execute @p[tag=firesword] ~ ~ ~ function fire
tag @p[tag=firesword,scores={firetime=25}] add removetimeone
tag @p[tag=firesword,scores={firetime=25}] remove firesword
scoreboard players set @p[tag=removetimeone,scores={firetime=25}] firetime 0
tag @p remove removetimeone


scoreboard players add @p[tag=join,tag=darksword] darksword 1
execute @p[tag=darksword,scores={darksword=1}] ~ ~ ~ event entity @p[tag=darksword] sp:n_dark_shoot
execute @p[tag=darksword,scores={darksword=1}] ~ ~ ~ effect @e[r=5] darkness 3 255 true
tag @p[tag=darksword,scores={darksword=40}] add removetimebld
tag @p[tag=darksword,scores={darksword=40}] remove darksword
scoreboard players set @p[tag=removetimebld,scores={darksword=40}] darksword 0
tag @p remove removetimebld

scoreboard players add @e[type=sw:dark_shoot] darktime 1
execute @e[type=sw:dark_shoot] ~ ~ ~ particle sw:darkshoot ~ ~ ~
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ particle sw:dark ~ ~ ~
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ effect @e[r=8,type=!player] levitation 1 25 true
execute @e[type=sw:dark_shoot,scores={darktime=50}] ~ ~ ~ effect @e[r=8,type=!player] fatal_poison 1 3 true
execute @e[type=sw:dark_shoot,scores={darktime=51}] ~ ~ ~ kill @s


scoreboard players add @p[tag=join,tag=lovesword] lovesword 1
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ event entity @p[tag=lovesword] sp:n_love_shoot
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ playsound 4ks.music.heart_ability @a[r=20]
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ effect @a[r=5] regeneration 2 255 true
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ effect @a[r=5] instant_health 1 255 true
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ effect @e[r=5,type=!player] fatal_poison 1 4 true
execute @p[tag=lovesword,scores={lovesword=1}] ~ ~ ~ particle sw:love_circle ~ ~ ~
tag @p[tag=lovesword,scores={lovesword=35}] add removetimelv
tag @p[tag=lovesword,scores={lovesword=35}] remove lovesword
scoreboard players set @p[tag=removetimelv,scores={lovesword=35}] lovesword 0
tag @p remove removetimelv

scoreboard players add @e[type=sw:love_shoot] lovetime 1
execute @e[type=sw:love_shoot] ~ ~ ~ particle sw:love ~ ~ ~
execute @e[type=sw:love_shoot,scores={lovetime=49}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:love_shoot,scores={lovetime=49}] ~ ~ ~ particle sw:heart ~ ~ ~
execute @e[type=sw:love_shoot,scores={lovetime=49}] ~ ~ ~ effect @e[r=8,type=!player] fatal_poison 5 10 true
execute @e[type=sw:love_shoot,scores={lovetime=51}] ~ ~ ~ kill @s



scoreboard players add @e[tag=join,tag=duskbladesword] dusktime 1
execute @a[tag=duskbladesword,scores={dusktime=1}] ~ ~ ~ particle sw:dusk_cast ~ ~ ~
execute @a[tag=duskbladesword,scores={dusktime=1}] ~ ~ ~ particle sw:spell_ring_dusk ~ ~ ~
execute @a[tag=duskbladesword,scores={dusktime=1}] ~ ~ ~ playsound 4ks.music.duskblade_ability @a[r=10]
execute @a[tag=duskbladesword,scores={dusktime=2}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ particle sw:spell_ring_dusk ~ ~ ~
execute @a[tag=duskbladesword,scores={dusktime=4}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=65}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=13}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=20}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=27}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=35}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=53}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=74}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=84}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10] ~ ~ ~ summon evocation_fang
execute @a[tag=duskbladesword,scores={dusktime=2}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,type=!item,r=10] slowness 8 255 true
execute @a[tag=duskbladesword,scores={dusktime=4}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,type=!item,r=10] fatal_poison 1 30 true
tag @a[tag=duskbladesword,scores={dusktime=100..}] add removetimedsk
tag @a[tag=duskbladesword,scores={dusktime=100..}] remove duskbladesword
scoreboard players set @p[tag=removetimedsk,scores={dusktime=100..}] dusktime 0
tag @p remove removetimedsk


scoreboard players add @p[r=1,tag=join,tag=lightningsword] lightningtime 1
execute @p[tag=lightningsword,scores={lightningtime=1}] ~ ~ ~ playsound 4ks.music.lightning_ability @a[r=20]
execute @p[tag=lightningsword,scores={lightningtime=1}] ~ ~ ~ event entity @p[tag=lightningsword] sp:n_lightning_shoot
tag @p[tag=lightningsword,scores={lightningtime=40}] add removetimea
tag @p[tag=lightningsword,scores={lightningtime=40}] remove lightningsword
scoreboard players set @p[tag=removetimea,scores={lightningtime=40}] lightningtime 0
tag @p remove removetimea



scoreboard players add @e[type=sw:lightning_shoot] lightshoottime 1
execute @e[type=sw:lightning_shoot] ~ ~ ~ particle minecraft:blue_flame_particle ~ ~ ~
execute @e[type=sw:lightning_shoot,scores={lightshoottime=50}] ~ ~ ~ summon lightning_bolt
execute @e[type=sw:lightning_shoot,scores={lightshoottime=50}] ~ ~ ~ effect @e[r=3] instant_damage 3 1 true
execute @e[type=sw:lightning_shoot,scores={lightshoottime=51}] ~ ~ ~ kill @s


scoreboard players add @p[tag=join,r=1,tag=maelstrom] watertime 1
execute @p[r=1,scores={watertime=1},tag=maelstrom] ~ ~ ~ summon sw:maelstrom ^ ^2 ^5
execute @p[r=1,scores={watertime=1},tag=maelstrom] ~ ~ ~ playsound bucket.fill_water @p[r=10]
execute @e[type=sw:maelstrom] ~ ~ ~ particle sw:maelstrom ~ ~ ~
execute @e[type=sw:maelstrom] ~ ~ ~ execute @e[r=16,family=mob,type=!sw:maelstrom,type=!item,tag=!maelstrom,type=!player,family=!inac,family=!npc,type=!sw:yug,type=!armor_stand] ~ ~ ~ tp @s ^ ^0.2 ^0.2 facing @e[type=sw:maelstrom]
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ execute @e[type=sw:maelstrom] ~ ~ ~ effect @e[r=16,type=!sw:maelstrom,family=mob,type=!item,tag=!maelstrom] instant_damage 2 255 true
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ execute @e[type=sw:maelstrom] ~ ~ ~ particle sw:bubble ~ ~3 ~
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ playsound cauldron.explode @a[r=20]
execute @p[r=1,scores={watertime=100..},tag=maelstrom] ~ ~ ~ execute @e[type=sw:maelstrom] ~ ~ ~ kill @s
tag @p[r=1,scores={watertime=100..},tag=maelstrom] add removetimec
tag @p[r=1,scores={watertime=100..},tag=maelstrom] remove maelstrom
scoreboard players set @p[r=1,tag=removetimec,scores={watertime=100..}] watertime 0
tag @p remove removetimec




scoreboard players add @p[tag=join,r=1,tag=sandsword] sandtime 1
execute @p[r=1,scores={sandtime=1},tag=sandsword] ~ ~ ~ summon sw:sandstorm ^ ^0.5 ^5
execute @p[r=1,scores={sandtime=1},tag=sandsword] ~ ~ ~ playsound dig.sand @p[r=10]
execute @e[type=sw:sandstorm] ~ ~ ~ execute @e[r=15,tag=!sandsword,type=!player,family=!inac,family=!npc,type=!sw:yug,family=mob,type=!armor_stand] ~ ~ ~ tp @s ^ ^-0.042 ^0.07 facing @e[type=sw:sandstorm]
execute @e[type=sw:sandstorm] ~ ~ ~ particle sw:sand
execute @p[r=1,scores={sandtime=50},tag=sandsword] ~ ~ ~ execute @e[type=sw:sandstorm] ~ ~ ~ effect @e[r=16,family=mob,type=!sw:maelstrom,type=!sw:sandstorm,type=!item,tag=!sandsword,type=!player] slowness 8 255 true
execute @p[r=1,scores={sandtime=50},tag=sandsword] ~ ~ ~ execute @e[type=sw:sandstorm] ~ ~ ~ effect @e[r=16,family=mob,type=!sw:maelstrom,type=!sw:sandstorm,type=!item,tag=!sandsword,type=!player] fatal_poison 1 40 true
execute @p[r=1,scores={sandtime=100..},tag=sandsword] ~ ~ ~ playsound cauldron.explode @a[r=20]
execute @p[r=1,scores={sandtime=100..},tag=sandsword] ~ ~ ~ execute @e[type=sw:sandstorm] ~ ~ ~ kill @s
tag @p[r=1,scores={sandtime=100..},tag=sandsword] add removetimegg
tag @p[r=1,scores={sandtime=100..},tag=sandsword] remove sandsword
scoreboard players set @p[r=1,tag=removetimegg,scores={sandtime=100..}] sandtime 0
tag @p remove removetimegg



scoreboard players add @p[tag=join,tag=bouldersword] bouldersword 1
execute @p[tag=bouldersword,scores={bouldersword=1}] ~ ~ ~ event entity @p[tag=bouldersword] sp:n_boulder_shoot
execute @p[tag=bouldersword,scores={bouldersword=1}] ~ ~ ~ playsound 4ks.music.boulder_ability @a[r=20]
tag @p[tag=bouldersword,scores={bouldersword=50}] add removetimebld
tag @p[tag=bouldersword,scores={bouldersword=50}] remove bouldersword
scoreboard players set @p[tag=removetimebld,scores={bouldersword=50}] bouldersword 0
tag @p remove removetimebld


scoreboard players add @e[type=sw:boulder_toss] bouldertime 1
execute @e[type=sw:boulder_toss,scores={bouldertime=1}] ~ ~ ~ tag @p[r=5] add boulder
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ playsound random.explode @a[r=30]
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ summon sw:instanttnt
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ particle sw:boulder ~ ~ ~
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ effect @e[r=8] instant_damage 3 1 true
execute @e[type=sw:boulder_toss,scores={bouldertime=50}] ~ ~ ~ tag @a remove boulder
execute @e[type=sw:boulder_toss,scores={bouldertime=51}] ~ ~ ~ kill @s

scoreboard players add @p[tag=join,tag=hydroblaster] hydroblaster 1
execute @p[tag=hydroblaster,scores={hydroblaster=1}] ~ ~ ~ execute @e[r=6,type=!sw:maelstrom,type=!sw:sandstorm,type=!item,type=!player,family=!inac,family=!npc,family=mob] ~ ~ ~ particle sw:hydroblast
execute @p[tag=hydroblaster,scores={hydroblaster=1}] ~ ~ ~ execute @e[r=6,type=!sw:maelstrom,type=!sw:sandstorm,type=!item,type=!player,family=!inac,family=!npc,family=mob] ~ ~ ~ particle sw:hydroblast_bubble
execute @p[tag=hydroblaster,scores={hydroblaster=1}] ~ ~ ~ execute @e[r=6,type=!sw:maelstrom,type=!sw:sandstorm,type=!item,type=!player,family=!inac,family=!npc,family=mob] ~ ~ ~ effect @s levitation 1 25 true
execute @p[tag=hydroblaster,scores={hydroblaster=1}] ~ ~ ~ playsound 4ks.music.hydroblast_ability @a[r=20]
tag @p[tag=hydroblaster,scores={hydroblaster=50}] add removetimeblde
tag @p[tag=hydroblaster,scores={hydroblaster=50}] remove hydroblaster
scoreboard players set @p[tag=removetimeblde,scores={hydroblaster=50}] hydroblaster 0
tag @p remove removetimeblde


scoreboard players add @e[tag=join,tag=fireattack] fireattack 1
execute @a[tag=fireattack,scores={fireattack=1}] ~ ~ ~ playsound 4ks.music.inferno_ability @a[r=10]
execute @a[tag=fireattack,scores={fireattack=1}] ~ ~ ~ particle sw:inferno_ring ~ ~ ~
execute @a[tag=fireattack,scores={fireattack=1}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10,family=mob] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ fire 0 replace air 0
tag @a[tag=fireattack,scores={fireattack=41}] add removetimefoure
tag @a[tag=fireattack,scores={fireattack=41}] remove fireattack
scoreboard players set @p[tag=removetimefoure,scores={fireattack=41}] fireattack 0
tag @p remove removetimefoure


scoreboard players add @p[tag=join,r=1,tag=painsword] painsword 1
execute @p[tag=painsword,scores={painsword=1}] ~ ~ ~ playsound 4ks.music.pain_ability @a[r=20]
execute @p[tag=painsword,scores={painsword=1}] ~ ~ ~ particle sw:spark_poison ^ ^1 ^1
execute @p[tag=painsword,scores={painsword=1}] ~ ~ ~ effect @e[r=8,type=!player] fatal_poison 15 255 true
execute @p[tag=painsword,scores={painsword=1}] ~ ~ ~ effect @e[r=8,type=!player] instant_damage 1 3 true
execute @p[tag=painsword,scores={painsword=1}] ~ ~ ~ effect @e[r=8,type=!player] wither 15 255 true
tag @p[tag=painsword,scores={painsword=50}] add removetig
tag @p[tag=painsword,scores={painsword=50}] remove painsword
scoreboard players set @p[tag=removetig,scores={painsword=50}] painsword 0
tag @p remove removetig

scoreboard players add @p[tag=join,r=1,tag=poofsword] poofsword 1
execute @p[tag=poofsword,scores={poofsword=1}] ~ ~ ~ playsound mob.wolf.bark @a[r=20]
execute @p[tag=poofsword,scores={poofsword=1}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=6,type=!wither,type=!ender_dragon,family=mob] ~ ~ ~ particle sw:poof ~ ~ ~
execute @p[tag=poofsword,scores={poofsword=1}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=6,type=!wither,type=!ender_dragon,family=mob] ~ ~ ~ summon wolf
execute @p[tag=poofsword,scores={poofsword=2}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=6,type=!wither,type=!ender_dragon,type=!wolf,family=mob] ~ ~ ~ tp @s ~ ~-1000 ~
tag @p[tag=poofsword,scores={poofsword=50}] add removetigh
tag @p[tag=poofsword,scores={poofsword=50}] remove poofsword
scoreboard players set @p[tag=removetigh,scores={poofsword=50}] poofsword 0
tag @p remove removetigh


scoreboard players add @p[tag=join,r=1,tag=divinesword] divinesword 1
execute @p[tag=divinesword] ~ ~ ~ execute @e[tag=divine] ~ ~ ~ particle sw:rainbow ~ ~ ~
execute @p[tag=divinesword] ~ ~ ~ execute @e[tag=divine] ~ ~ ~ tp @s ^ ^0.7 ^0.7
execute @p[tag=divinesword] ~ ~ ~ effect @e[tag=divine] fatal_poison 2 255 true
execute @p[tag=divinesword,scores={divinesword=1}] ~ ~ ~ playsound block.bell.hit @a[r=20]
execute @p[tag=divinesword,scores={divinesword=1}] ~ ~ ~ tag @e[type=!player,family=!inac,family=!npc,type=!item,r=12,type=!wither,type=!ender_dragon,family=mob] add divine
execute @p[tag=divinesword,scores={divinesword=100}] ~ ~ ~ execute @e[tag=divine] ~ ~ ~ summon sw:instanttnt
execute @p[tag=divinesword,scores={divinesword=100}] ~ ~ ~ tag @e[tag=divine] remove divine
execute @p[tag=divinesword,scores={divinesword=100}] ~ ~ ~ playsound note.bell @a[r=20]
tag @p[tag=divinesword,scores={divinesword=90}] add removetight
tag @p[tag=divinesword,scores={divinesword=90}] remove divinesword
scoreboard players set @p[tag=removetight,scores={divinesword=90}] divinesword 0
tag @p remove removetight

scoreboard players add @p[tag=join,tag=divineattack] divineattack 1
execute @p[tag=divineattack,scores={divineattack=1}] ~ ~ ~ tag @e[type=!player,family=!inac,family=!npc,type=!item,c=1,family=mob] add victim
execute @p[tag=divineattack,scores={divineattack=1}] ~ ~ ~ event entity @p[tag=divineattack] sp:n_heat_shoot
execute @p[tag=divineattack,scores={divineattack=1}] ~ ~ ~ playsound note.cow_bell @a[r=20]
execute @p[tag=divineattack,scores={divineattack=50}] ~ ~ ~ kill @e[type=sw:heat_shoot]
execute @p[tag=divineattack,scores={divineattack=50}] ~ ~ ~ tag @e remove victim
tag @p[tag=divineattack,scores={divineattack=50}] add removetij
tag @p[tag=divineattack,scores={divineattack=50}] remove divineattack
scoreboard players set @p[tag=removetij,scores={divineattack=50}] divineattack 0
tag @p remove removetij
execute @e[type=sw:heat_shoot] ~ ~ ~ tp @s ^ ^ ^0.39 facing @e[tag=victim] 
execute @e[type=sw:heat_shoot] ~ ~ ~ particle sw:rainbow_little ~ ~ ~


scoreboard players add @p[tag=join,tag=skysword] skysword 1
execute @p[tag=skysword,scores={skysword=1}] ~ ~ ~ playsound 4ks.music.sky_ability @p
execute @p[tag=skysword,scores={skysword=1}] ~ ~ ~ particle minecraft:basic_portal_particle ^ ^ ^3
execute @p[tag=skysword,scores={skysword=5}] ~ ~ ~ summon sw:instanttntmedium ^ ^ ^-3
execute @p[tag=skysword,scores={skysword=5}] ~ ~ ~ summon sw:instanttntmedium ^ ^ ^-3
execute @p[tag=skysword,scores={skysword=5}] ~ ~ ~ summon sw:instanttntmedium ^ ^ ^-2.5
execute @p[tag=skysword,scores={skysword=5}] ~ ~ ~ summon sw:instanttntmedium ^ ^ ^-2.5
execute @p[tag=skysword,scores={skysword=1}] ~ ~ ~ effect @p speed 3 2 true
execute @p[tag=skysword,scores={skysword=1}] ~ ~ ~ effect @p regeneration 10 255 true
execute @p[tag=skysword] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,family=mob,r=3] instant_damage 5 1 true
tag @p[tag=skysword,scores={skysword=20..}] add removetimeonj
tag @p[tag=skysword,scores={skysword=20..}] remove skysword
scoreboard players set @p[tag=removetimeonj,scores={skysword=20..}] skysword 0
tag @p remove removetimeonj

execute @e[family=inac] ~ ~ ~ tp @s ~ ~ ~ facing @p