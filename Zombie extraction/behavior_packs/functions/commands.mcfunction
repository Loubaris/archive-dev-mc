# SPAWN  

execute @e[type=sw:start_raid] ~ ~ ~ particle sw:start_raid_1 ~ ~ ~
execute @e[type=sw:start_raid] ~ ~ ~ particle sw:start_raid_2 ~ ~ ~
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ effect @a blindness 5 255 true
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ tag @p add player
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ scoreboard players set @a extractiontime 0
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ scoreboard players set @a mobtimer 0
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ tag @p remove counting
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ title @a title §cEXTRACTION TUTORIAL

execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ scoreboard players set @p location 1
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ replaceitem entity @a slot.weapon.mainhand 0 stone_sword
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ enchant @a unbreaking 2
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ spawnpoint @a 200 18 -188
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=!tutorial] ~ ~ ~ tp @a 200 18 -188 facing 200.56 19.13 -192.84
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[tag=!tutorial,tag=player] ~ ~ ~ kill @e[type=sw:start_raid]

execute @e[type=sw:start_raid] ~ ~ ~ particle sw:start_raid_1 ~ ~ ~
execute @e[type=sw:start_raid] ~ ~ ~ particle sw:start_raid_2 ~ ~ ~
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ effect @a blindness 5 255 true
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ tag @p add player
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ spawnpoint @a 200 18 -188
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ tag @p remove counting
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ title @a title §cEXTRACTION
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ effect @a[x=200,y=18,z=-188,rm=60] night_vision 4 5 true
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ scoreboard players set @a extractiontime 0
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ scoreboard players set @a mobtimer 0
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ scoreboard players random @p location 2 9
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ function effects
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[r=1.5,tag=tutorial] ~ ~ ~ tp @a 200 18 -188 facing 200.56 19.13 -192.84
execute @e[type=sw:start_raid] ~ ~ ~ execute @p[tag=tutorial,tag=player] ~ ~ ~ kill @e[type=sw:start_raid]

# TUTORIAL / RANDOM EXTRACTION #####################################

scoreboard players add @a[tag=player,tag=!counting] timer 1
execute @a[tag=player,scores={timer=100},tag=!tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aFIRST WELCOME EXPLANATION TEXT, HERES YOUR FIRST EXTRACTIONS"}]}
execute @a[tag=player,scores={timer=20},tag=!tutorial] ~ ~ ~ kill @e[type=item]
execute @a[tag=player,scores={timer=30},tag=!tutorial] ~ ~ ~ effect @a resistance 300 255 true
execute @a[tag=player,scores={timer=180},tag=!tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§a2ND EXPLANATION TEXT, GREEN SMOKE, CHESTS, ETC"}]}
execute @a[tag=player,scores={timer=320},tag=!tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§a3rth TEXT"}]}
execute @a[tag=player,scores={timer=400},tag=!tutorial] ~ ~ ~ summon sw:extraction_point 202.51 15.00 -213.48
execute @a[tag=player,scores={timer=401},tag=!tutorial] ~ ~ ~ tag @p add counting


execute @a[tag=player,scores={timer=100,location=1},tag=tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aHEY MESSAGE, EXTRACTION FROM A TO B"}]}
execute @a[tag=player,scores={timer=220,location=1},tag=tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§a3rth TEXT"}]}
execute @a[tag=player,scores={timer=220,location=1},tag=tutorial] ~ ~ ~ kill @e[type=item]
execute @a[tag=player,scores={timer=400,location=1},tag=tutorial] ~ ~ ~ summon sw:extraction_point 230.36 40.00 -172.46

execute @a[tag=player,scores={timer=200},tag=tutorial] ~ ~ ~ hud @a hide all
execute @a[tag=player,scores={timer=400},tag=tutorial] ~ ~ ~ hud @a reset all

# CORNERS OF MAP DIFFERENT GIANT ZOMBIE ETC

execute @a[tag=player,scores={timer=100,location=1..},tag=tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aHEY MESSAGE, EXTRACTION FROM A TO B"}]}
execute @a[tag=player,scores={timer=220,location=1..},tag=tutorial] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§a3rth TEXT"}]}
execute @a[tag=player,scores={timer=200,location=1..},tag=tutorial] ~ ~ ~ effect @a invisibility 10 255 true

execute @a[tag=player,scores={timer=200..299,location=2},tag=tutorial] ~ ~ ~ tp @a 233.52 86.03 -176.60 facing 230.36 40.00 -172.46
execute @a[tag=player,scores={timer=300..399,location=2},tag=tutorial] ~ ~ ~ tp @a 247.29 53.62 -214.86 facing 230.36 40.00 -172.46
execute @a[tag=player,scores={timer=210,location=2},tag=tutorial] ~ ~ ~ summon sw:extraction_point 230.36 40.00 -172.46

execute @a[tag=player,scores={timer=300,location=3},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 44.04 27.50 -198.54
execute @a[tag=player,scores={timer=300,location=3},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=44,y=27,z=-198,r=15] add temporary
execute @a[tag=player,scores={timer=200..299,location=3},tag=tutorial] ~ ~ ~ tp @a 39.90 70.89 -208.55 facing 36.31 36.00 -198.39
execute @a[tag=player,scores={timer=300..399,location=3},tag=tutorial] ~ ~ ~ tp @a 92.57 39.28 -198.08 facing 36.31 28.00 -198.39
execute @a[tag=player,scores={timer=210,location=3},tag=tutorial] ~ ~ ~ summon sw:extraction_point 36.31 28.00 -198.39

execute @a[tag=player,scores={timer=300,location=4},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 199.06 16.00 -13.99
execute @a[tag=player,scores={timer=300,location=4},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=199,y=16,z=-13,r=5] add temporary2
execute @a[tag=player,scores={timer=200..299,location=4},tag=tutorial] ~ ~ ~ tp @a 199.37 76.72 13 facing 200.99 51.23 -41.05
execute @a[tag=player,scores={timer=300..399,location=4},tag=tutorial] ~ ~ ~ tp @a 192.35 32.00 2.21 facing 210.58 16.00 -4.44 
execute @a[tag=player,scores={timer=210,location=4},tag=tutorial] ~ ~ ~ summon sw:extraction_point 210.58 16.00 -4.44 

execute @a[tag=player,scores={timer=300,location=5},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 62.90 37.00 -26.24
execute @a[tag=player,scores={timer=300,location=5},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 55.70 17.00 -34.36
execute @a[tag=player,scores={timer=300,location=5},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=62,y=37,z=-26,r=36] add temporary
execute @a[tag=player,scores={timer=200..299,location=5},tag=tutorial] ~ ~ ~ tp @a 92.23 26.50 -69.85 facing 62.52 47.00 -35.54
execute @a[tag=player,scores={timer=300..399,location=5},tag=tutorial] ~ ~ ~ tp @a 56.07 77.03 -27.56 facing 113.87 39.74 -77.71
execute @a[tag=player,scores={timer=210,location=5},tag=tutorial] ~ ~ ~ summon sw:extraction_point 62.52 47.00 -35.54

execute @a[tag=player,scores={timer=300,location=6},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 351.76 65.06 -16.97
execute @a[tag=player,scores={timer=300,location=6},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 353.18 40.06 -19.94
execute @a[tag=player,scores={timer=300,location=6},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=351,y=40,z=-16,r=35] add temporary
execute @a[tag=player,scores={timer=200..299,location=6},tag=tutorial] ~ ~ ~ tp @a 321.07 32.09 -77.39 facing 360.28 68.00 -29.58
execute @a[tag=player,scores={timer=300..399,location=6},tag=tutorial] ~ ~ ~ tp @a 303.11 66.45 -14.52 facing 347.03 47.57 -70.69
execute @a[tag=player,scores={timer=210,location=6},tag=tutorial] ~ ~ ~ summon sw:extraction_point 360.28 68.00 -29.58

execute @a[tag=player,scores={timer=300,location=7},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 358.51 43.00 -95.78
execute @a[tag=player,scores={timer=300,location=7},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 360.56 32.00 -87.13
execute @a[tag=player,scores={timer=300,location=7},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 370.66 16.00 -99.33
execute @a[tag=player,scores={timer=300,location=7},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=370,y=16,z=-99,r=2] add temporary
execute @a[tag=player,scores={timer=300,location=7},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=358,y=43,z=-95,r=22] add temporary
execute @a[tag=player,scores={timer=200..299,location=7},tag=tutorial] ~ ~ ~ tp @a 315.21 59.43 -58.61 facing 344.39 43.00 -83.56
execute @a[tag=player,scores={timer=300..399,location=7},tag=tutorial] ~ ~ ~ tp @a 368.38 69.48 -57.88 facing 317.54 55.73 -99.41
execute @a[tag=player,scores={timer=210,location=7},tag=tutorial] ~ ~ ~ summon sw:extraction_point 344.39 43.00 -83.56

execute @a[tag=player,scores={timer=300,location=8},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 345.20 43.00 -215.12
execute @a[tag=player,scores={timer=300,location=8},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 369.87 43.00 -196.45
execute @a[tag=player,scores={timer=300,location=8},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 368.70 31.00 -145.11
execute @a[tag=player,scores={timer=300,location=8},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 366.77 16.00 -202.09
execute @a[tag=player,scores={timer=300,location=8},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=345,y=43,z=-196,r=60] add temporary
execute @a[tag=player,scores={timer=200..299,location=8},tag=tutorial] ~ ~ ~ tp @a 302.68 37.89 -254.46 facing 346.47 43.00 -231.52
execute @a[tag=player,scores={timer=300..399,location=8},tag=tutorial] ~ ~ ~ tp @a 357.60 64.98 -261.43 facing 296.58 40.34 -235.81
execute @a[tag=player,scores={timer=210,location=8},tag=tutorial] ~ ~ ~ summon sw:extraction_point 346.47 43.00 -231.52

execute @a[tag=player,scores={timer=300,location=9},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 346.08 49.27 -300.49
execute @a[tag=player,scores={timer=300,location=9},tag=tutorial] ~ ~ ~ summon sw:mob_spawner 357.47 27.84 -300.92
execute @a[tag=player,scores={timer=300,location=9},tag=tutorial] ~ ~ ~ tag @e[type=sw:mob_spawner,x=346,y=49,z=-300,r=34] add temporary
execute @a[tag=player,scores={timer=200..299,location=9},tag=tutorial] ~ ~ ~ tp @a 309.63 35.68 -247.54 facing 338.25 47.00 -283.68
execute @a[tag=player,scores={timer=300..399,location=9},tag=tutorial] ~ ~ ~ tp @a 349.94 58.52 -249.00 facing 314.51 20.73 -283.02
execute @a[tag=player,scores={timer=210,location=9},tag=tutorial] ~ ~ ~ summon sw:extraction_point 338.25 47.00 -283.68

execute @a[tag=player,scores={timer=400},tag=tutorial] ~ ~ ~ tp @a 200 18 -188 facing 200.56 19.13 -192.84
execute @a[tag=player,scores={timer=401},tag=tutorial] ~ ~ ~ tag @a add counting

# MOB COUNTER #######################

execute @a[tag=player] ~ ~ ~ execute @e[family=monster] ~ ~ ~ scoreboard players set @a[tag=player] mobcounter 0
execute @a[tag=player] ~ ~ ~ execute @e[family=monster] ~ ~ ~ scoreboard players add @a[tag=player] mobcounter 1
execute @a[tag=player,scores={mobcounter=60..}] ~ ~ ~ execute @e[family=monster,c=1,rm=120] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=75..}] ~ ~ ~ execute @e[family=monster,c=1,rm=48] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=75..}] ~ ~ ~ execute @e[family=monster,c=1,rm=48] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=75..}] ~ ~ ~ execute @e[family=monster,c=1,rm=48] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=75..}] ~ ~ ~ execute @e[family=monster,c=1,rm=48] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=90..}] ~ ~ ~ execute @e[family=monster,c=1,rm=30] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=90..}] ~ ~ ~ execute @e[family=monster,c=1,rm=30] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=90..}] ~ ~ ~ execute @e[family=monster,c=1,rm=30] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=90..}] ~ ~ ~ execute @e[family=monster,c=1,rm=30] ~ ~ ~ tp @s ~ ~-100 ~
execute @a[tag=player,scores={mobcounter=120..}] ~ ~ ~ execute @e[family=monster,c=1,rm=10] ~ ~ ~ tp @s ~ ~-100 ~



# EXTRACTION SYSTEM ###############

execute @a[tag=player,scores={timer=200..}] ~ ~ ~ execute @e[type=sw:extraction_point,r=150] ~ ~ ~ particle sw:green_smoke
execute @a[tag=player,scores={timer=200..}] ~ ~ ~ execute @e[type=sw:extraction_point,r=150] ~ ~ ~ particle sw:extraction

execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=3.2,tag=!tutorial] ~ ~ ~ tag @p add tutorial
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=3.2,tag=tutorial] ~ ~ ~ scoreboard players add @s extractiontime 1
execute @e[type=sw:extraction_point] ~ ~ ~ title @a[r=20,tag=tutorial,scores={extractiontime=1..20}] actionbar 
execute @e[type=sw:extraction_point] ~ ~ ~ title @a[r=20,tag=tutorial,scores={extractiontime=21..40}] actionbar 
execute @e[type=sw:extraction_point] ~ ~ ~ title @a[r=20,tag=tutorial,scores={extractiontime=41..60}] actionbar 
execute @e[type=sw:extraction_point] ~ ~ ~ title @a[r=20,tag=tutorial,scores={extractiontime=61..80}] actionbar 
execute @e[type=sw:extraction_point] ~ ~ ~ title @a[r=20,tag=tutorial,scores={extractiontime=81..100}] actionbar 
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[rm=2.8,r=30,tag=tutorial,scores={extractiontime=1..}] ~ ~ ~ scoreboard players remove @s extractiontime 1


execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aNICE JOB, YOU GOT EXTRACTED TEXT"}]}
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ effect @a blindness 2 255 true
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ scoreboard players add @a nbextraction 1
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ execute @e[family=monster] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ kill @e[type=item]
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ kill @e[tag=temporary]
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ kill @e[tag=temporary2]
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ tag @a remove player
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ execute @e[family=monster] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ tag @a remove counting
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ effect @a clear
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ scoreboard players set @a timer 0
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ summon sw:start_raid "§4Start the extraction" 366.43 66.00 -132.42
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ tp @a 366.53 64.06 -147.53
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[r=2.8,tag=tutorial,scores={extractiontime=100}] ~ ~ ~ spawnpoint @a 366.53 64.06 -147.53
execute @e[type=sw:extraction_point] ~ ~ ~ execute @a[tag=tutorial,scores={extractiontime=100}] ~ ~ ~ kill @e[type=sw:extraction_point]




########################### DOOORS HATCHES

execute @a[tag=player] ~ ~ ~ effect @e[type=sw:door,rm=9] invisibility 1 255 true
execute @a[tag=player] ~ ~ ~ effect @e[type=sw:hatch,rm=8] invisibility 1 255 true

execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:door,r=5,tag=5emeralds] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=5..},r=5] ~ ~ ~ give @s sw:key_open
execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:door,r=5,tag=5emeralds] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=..4},r=5] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cYou don't have enough emeralds!"}]}
execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:door,r=5,tag=5emeralds] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=..4},r=5] ~ ~ ~ clear @a sw:key

execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:door,r=5,tag=!5emeralds] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=10..},r=5] ~ ~ ~ give @s sw:key_open
execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:door,r=5,tag=!5emeralds] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=..9},r=5] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cYou don't have enough emeralds!"}]}
execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:door,r=5,tag=!5emeralds] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=..9},r=5] ~ ~ ~ clear @a sw:key


execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=5..},r=5] ~ ~ ~ give @s sw:key_open
execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=..4},r=5] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cYou don't have enough emeralds!"}]}
execute @a[tag=player,hasitem={item=sw:key}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ execute @a[tag=player,hasitem={item=emerald,quantity=..4},r=5] ~ ~ ~ clear @a sw:key

execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ fill ~-2 ~ ~-2 ~2 ~3 ~2 air 0 replace white_stained_glass_pane
execute @a[tag=player,hasitem={item=sw:key_open},x=256,y=6,z=-176] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ fill ~-4 ~ ~-3 ~3 ~4 ~3 air 0 replace iron_bars
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ playsound tile.piston.in @a[r=10]
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ particle sw:door_opened ~ ~ ~
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ tag @p add closedoor
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,tag=5emeralds,r=5] ~ ~ ~ clear @p emerald 0 5
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,tag=10emeralds,r=5] ~ ~ ~ clear @p emerald 0 10
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ clear @p sw:key 0 10
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ clear @p sw:key_open 0 1
execute @a[tag=player,tag=closedoor] ~ ~ ~ execute @e[type=sw:door,r=5] ~ ~ ~ kill @s
execute @a[tag=player,tag=closedoor] ~ ~ ~ tag @s remove closedoor

execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ fill ~-2 ~-2 ~-2 ~2 ~3 ~2 air 0 replace daylight_detector
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ playsound tile.piston.out @a[r=10]
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ particle sw:door_opened
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ tag @p add closedoor
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ clear @p emerald 0 5
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ clear @p sw:key 0 1
execute @a[tag=player,hasitem={item=sw:key_open}] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ clear @p sw:key_open 0 1
execute @a[tag=player,tag=closedoor] ~ ~ ~ execute @e[type=sw:hatch,r=5] ~ ~ ~ kill @s
execute @a[tag=player,tag=closedoor] ~ ~ ~ tag @s remove closedoor


####### MOBS SPAWNING SYSTEM

scoreboard players add @a[tag=player,scores={timer=400..}] mobtimer 1
execute @a[tag=player,scores={mobtimer=1}] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon zombie ~ ~ ~3
execute @a[tag=player,scores={mobtimer=1}] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon zombie ~1 ~ ~4
execute @a[tag=player,scores={mobtimer=1}] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon zombie ~1 ~ ~1
execute @a[tag=player,scores={mobtimer=1}] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon zombie ~3 ~ ~2
execute @a[tag=player,scores={mobtimer=1},tag=!level3] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon zombie ~2 ~ ~2
execute @a[tag=player,scores={mobtimer=1},tag=!level2] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon zombie ~2 ~ ~2

execute @a[tag=player,scores={mobtimer=1},tag=level2] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon skeleton ~ ~ ~3
execute @a[tag=player,scores={mobtimer=1},tag=level2] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon spider ~ ~ ~3
execute @a[tag=player,scores={mobtimer=1},tag=level2,tag=!level3] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon skeleton ~1 ~ ~4

execute @a[tag=player,scores={mobtimer=1},tag=level3] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon wolf ~3 ~ ~2
execute @a[tag=player,scores={mobtimer=1},tag=level3] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon wolf ~2 ~ ~2
execute @a[tag=player,scores={mobtimer=1},tag=level3] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon wither_skeleton ~ ~ ~
execute @a[tag=player,scores={mobtimer=1},tag=level3] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ summon wither_skeleton ~1 ~ ~2

execute @a[tag=player,scores={mobtimer=1},tag=level3] ~ ~ ~ execute @e[type=sw:mob_spawner,tag=corner,r=45] ~ ~ ~ summon sw:giant_zombie ~ ~ ~
execute @a[tag=player,scores={mobtimer=1},tag=level4] ~ ~ ~ execute @e[type=sw:mob_spawner,tag=corner,r=45] ~ ~ ~ summon sw:giant_zombie ~ ~ ~
execute @a[tag=player,scores={mobtimer=1},tag=level5] ~ ~ ~ execute @e[type=sw:mob_spawner,tag=corner,r=45] ~ ~ ~ summon sw:giant_zombie ~ ~ ~
execute @a[tag=player,scores={mobtimer=1},tag=level5] ~ ~ ~ execute @e[type=sw:mob_spawner,tag=corner,r=45] ~ ~ ~ summon cave_spider ~ ~ ~



execute @a[tag=player,scores={mobtimer=1},x=203,y=18,z=-165,rm=30] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45,tag=!temporary] ~ ~ ~ spreadplayers ~ ~ 0 15 @e[tag=!randomspawn,family=monster,r=10]
execute @a[tag=player,scores={mobtimer=3}] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ execute @e[family=monster,tag=!randomspawn,r=10] ~ ~ ~ particle sw:poof ~ ~ ~
execute @a[tag=player,scores={mobtimer=3}] ~ ~ ~ execute @e[type=sw:mob_spawner,r=45] ~ ~ ~ execute @e[family=monster,r=16] ~ ~ ~ tag @s add randomspawn
execute @a[tag=player,scores={mobtimer=200}] ~ ~ ~ kill @e[type=xp_orb]
execute @a[tag=player,scores={mobtimer=200}] ~ ~ ~ scoreboard players set @s mobtimer 0

tag @a[tag=!level2,scores={nbextraction=2}] add level2
tag @a[tag=!level3,scores={nbextraction=4}] add level3
tag @a[tag=!level3,scores={nbextraction=5}] add level4
tag @a[tag=!level4,scores={nbextraction=7}] add level5

scoreboard players add @e[tag=freeze] freezetime 1
execute @a[tag=freeze] ~ ~ ~ particle sw:snow
execute @a[tag=freeze,scores={freezetime=1}] ~ ~ ~ particle sw:freeze
execute @a[tag=freeze,scores={freezetime=1}] ~ ~ ~ effect @e[family=mob,family=!inac] slowness 10 255 true
execute @a[tag=freeze,scores={freezetime=1}] ~ ~ ~ effect @a invisibility 10 255 true
execute @a[tag=freeze,scores={freezetime=200}] ~ ~ ~ tag @s remove freeze
scoreboard players set @a[scores={freezetime=200}] freezetime 0

scoreboard players add @e[type=sw:minecart_tnt_inactive] tnttime 1
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=1}] ~ ~ ~ effect @a[r=10] resistance 3 255 true
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=5}] ~ ~ ~ particle sw:explosion
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=10}] ~ ~ ~ particle sw:explosion
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=15}] ~ ~ ~ particle sw:explosion
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=20}] ~ ~ ~ particle sw:explosion
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=5}] ~ ~ ~ summon sw:m_instanttnt
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=10}] ~ ~ ~ summon sw:m_instanttnt
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=15}] ~ ~ ~ summon sw:m_instanttnt
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=20}] ~ ~ ~ summon sw:m_instanttnt
execute @e[type=sw:minecart_tnt_inactive,scores={tnttime=21}] ~ ~ ~ kill @s

scoreboard players add @e[tag=hopper] hoppertime 1
execute @a[tag=hopper] ~ ~ ~ particle sw:hopper
execute @a[tag=hopper,scores={hoppertime=1}] ~ ~ ~ playsound firework.shoot @a[r=10]
execute @a[tag=hopper,scores={hoppertime=16}] ~ ~ ~ playsound beacon.ambient @a[r=10]
execute @a[tag=hopper] ~ ~ ~ execute @e[type=item,r=25] ~ ~ ~ tp @s ^ ^ ^0.24 facing @p[tag=hopper]
execute @a[tag=hopper,scores={hoppertime=120}] ~ ~ ~ tag @s remove hopper
scoreboard players set @a[scores={hoppertime=120}] hoppertime 0


scoreboard players add @e[tag=rocket] rockettime 1
execute @a[tag=rocket,scores={rockettime=1}] ^ ^1 ^2 particle sw:rocket ~ ~ ~
execute @a[tag=rocket,scores={rockettime=1}] ~ ~ ~ playsound firework.shoot @a[r=10]
execute @a[tag=rocket,scores={rockettime=16}] ~ ~ ~ playsound fire.fire @a[r=10]
execute @a[tag=rocket,scores={rockettime=1..22}] ^ ^1 ^2 execute @e[type=!player,family=!inac,family=!npc,type=!item,r=10,family=mob,rm=3] ~ ~ ~ detect ^ ^0.1 ^-0.45 air 0 tp @s ^ ^0.1 ^-0.45 facing @p[tag=rocket]
execute @a[tag=rocket,scores={rockettime=1..44}] ^ ^1 ^2 execute @e[tag=exploding] ~ ~ ~ detect ^ ^0.6 ^ air 0 tp @s ^ ^0.6 ^ facing ^ ^10 ^
execute @a[tag=rocket,scores={rockettime=1..44}] ~ ~ ~ execute @e[tag=exploding] ~ ~ ~ particle sw:cloud ~ ~-2 ~
execute @a[tag=rocket,scores={rockettime=1}] ^ ^1 ^2 tag @e[type=!player,family=!inac,family=!npc,type=!item,r=2.9,family=mob] add exploding
execute @a[tag=rocket,scores={rockettime=44}] ~ ~ ~ execute @e[tag=exploding,c=3] ~ ~ ~ summon sw:instanttnt
execute @a[tag=rocket,scores={rockettime=44}] ~ ~ ~ tag @e remove exploding
tag @a[tag=rocket,scores={rockettime=44}] remove rocket
scoreboard players set @p[scores={rockettime=44}] rockettime 0


execute @e[type=sw:fire_trap] ~ ~ ~ particle sw:fire_trap
execute @e[type=sw:soul_trap] ~ ~ ~ particle sw:soul_trap 

scoreboard players add @e[type=sw:fire_trap] firetraptime 1
execute @e[type=sw:fire_trap,scores={firetraptime=1}] ~ ~ ~ playsound mob.ghast.fireball @a[r=10]
execute @e[type=sw:fire_trap,scores={firetraptime=1..99}] ~ ~ ~ execute @e[family=monster,type=!player,r=5] ~ ~ ~ scoreboard players set @e[type=sw:fire_trap,r=5,c=1] firetraptime 100
execute @e[type=sw:fire_trap,scores={firetraptime=100..140}] ~ ~ ~ particle sw:fire_explode
execute @e[type=sw:fire_trap,scores={firetraptime=100..140}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=7,family=mob] ~ ~ ~ particle minecraft:mobflame_single ~ ~1 ~
execute @e[type=sw:fire_trap,scores={firetraptime=100..120}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,type=!item,r=7,family=mob] instant_damage 1 1 true
execute @e[type=sw:fire_trap,scores={firetraptime=100..120}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,type=!item,r=7,family=mob] fatal_poison 3 255 true
execute @e[type=sw:fire_trap,scores={firetraptime=140}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=sw:fire_trap,scores={firetraptime=143}] ~ ~ ~ kill @s


scoreboard players add @e[type=sw:soul_trap] soultraptime 1
execute @e[type=sw:soul_trap,scores={soultraptime=1}] ~ ~ ~ playsound dig.soul_sand @a[r=10]
execute @e[type=sw:soul_trap,scores={soultraptime=1..99}] ~ ~ ~ execute @e[family=monster,type=!player,r=5] ~ ~ ~ scoreboard players set @e[type=sw:soul_trap,r=5,c=1] soultraptime 100
execute @e[type=sw:soul_trap,scores={soultraptime=100}] ~ ~ ~ particle sw:soul_explode ~ ~2 ~
execute @e[type=sw:soul_trap,scores={soultraptime=100..139}] ~ ~ ~ execute @e[type=!player,family=!inac,family=!npc,type=!item,r=8,family=mob] ~ ~ ~ tp @s ^ ^-0.15 ^0.35 facing @e[type=sw:soul_trap,c=1]
execute @e[type=sw:soul_trap,scores={soultraptime=100}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,type=!item,r=7,family=mob,rm=3] fatal_poison 5 255 true
execute @e[type=sw:soul_trap,scores={soultraptime=100}] ~ ~ ~ effect @e[type=!player,family=!inac,family=!npc,type=!item,r=7,family=mob,rm=3] instant_damage 1 1 true
execute @e[type=sw:soul_trap,scores={soultraptime=105}] ~ ~ ~ playsound mob.breeze.idle_air @a[r=10]
execute @e[type=sw:soul_trap,scores={soultraptime=140}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=sw:soul_trap,scores={soultraptime=143}] ~ ~ ~ kill @s

tag @a[x=366.69,y=64.06,z=-159.21,r=25,tag=okay] remove okay 
tag @a[x=366.69,y=64.06,z=-159.21,rm=25,tag=!okay] add okay 