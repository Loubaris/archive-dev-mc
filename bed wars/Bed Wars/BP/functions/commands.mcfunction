# GENS

execute @e[type=nitric:game,tag=started] ~ ~ ~ execute @e[type=nitric:diamondgen] ~ ~ ~ function loopdiamondgen
execute @e[type=nitric:game,tag=started] ~ ~ ~ execute @e[type=nitric:emeraldgen] ~ ~ ~ function loopemeraldgen
execute @e[type=nitric:game,tag=started] ~ ~ ~ execute @e[type=nitric:irongoldgen] ~ ~ ~ function loopirongoldgen

# MAP CHOSED


execute @e[type=nitric:game,scores={map=5,timer=1},tag=!started] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aForest map has been choosed! §7Join the starting zone!"}]}
execute @e[type=nitric:game,scores={map=2,timer=1},tag=!started] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aLava map has been choosed! §7Join the starting zone!"}]}
execute @e[type=nitric:game,scores={map=4,timer=1},tag=!started] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aMoon map has been choosed! §7Join the starting zone!"}]}
execute @e[type=nitric:game,scores={map=3,timer=1},tag=!started] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aScifi map has been choosed! §7Join the starting zone!"}]}
execute @e[type=nitric:game,scores={map=6,timer=1},tag=!started] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aSnow map has been choosed! §7Join the starting zone!"}]}
execute @e[type=nitric:game,scores={map=1,timer=1},tag=!started] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aTropical map has been choosed! §7Join the starting zone!"}]}


# PLAYER COUNTER

execute @a[x=0,y=70,z=0,r=20] ~ ~ ~ scoreboard players set @e[type=nitric:game,tag=!started] counter 0
execute @a[x=0,y=70,z=0,r=20] ~ ~ ~ scoreboard players add @e[type=nitric:game,tag=!started] counter 1

# STARTING CHRONO AND GAME

execute @a[x=0,y=69,z=0,r=3] ~ ~ ~ scoreboard players add @e[type=nitric:game,scores={map=0..,timer=..78},tag=!started] timer 1
scoreboard players add @e[type=nitric:game,scores={map=0..,timer=77..},tag=!started] timer 1
execute @e[type=nitric:game,scores={map=0..,timer=..79},tag=!started] ~ ~ ~ particle nitric:loading_game 0 69.2 0

execute @e[type=nitric:game,scores={map=0..,timer=3},tag=!started] ~ ~ ~ title @a title §a5
execute @e[type=nitric:game,scores={map=0..,timer=1},tag=!started] ~ ~ ~ playsound note.pling @a
execute @e[type=nitric:game,scores={map=0..,timer=20},tag=!started] ~ ~ ~ title @a title §a4
execute @e[type=nitric:game,scores={map=0..,timer=40},tag=!started] ~ ~ ~ title @a title §a3
execute @e[type=nitric:game,scores={map=0..,timer=60},tag=!started] ~ ~ ~ title @a title §a2
execute @e[type=nitric:game,scores={map=0..,timer=80},tag=!started] ~ ~ ~ title @a title §a1

scoreboard players add @e[type=nitric:game,scores={map=0..,timer=1},tag=!started] timer 1

execute @e[type=nitric:game,scores={map=1,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 1816.46 80.50 -768.57 4 tropical1
execute @e[type=nitric:game,scores={map=1,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 1817.52 71.00 -729.43 4 tropical2

execute @e[type=nitric:game,scores={map=2,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 854.40 91.00 -756.42 4 lava1
execute @e[type=nitric:game,scores={map=2,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 804.16 90.29 -756.53 4 lava2

execute @e[type=nitric:game,scores={map=3,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3029.99 33.15 -760.62 4 scifi1
execute @e[type=nitric:game,scores={map=3,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3078.72 32.00 -761.70 4 scifi2

execute @e[type=nitric:game,scores={map=4,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3804.45 38.00 -737.67 4 moon1
execute @e[type=nitric:game,scores={map=4,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3874.75 40.50 -738.42 4 moon2
execute @e[type=nitric:game,scores={map=4,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3876.97 36.83 -665.64 4 moon3
execute @e[type=nitric:game,scores={map=4,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3952.00 37.21 -739.56 4 moon4
execute @e[type=nitric:game,scores={map=4,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 3876.01 35.71 -815.96 4 moon5

execute @e[type=nitric:game,scores={map=5,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 4705.62 89.97 -716.81 4 forest1
execute @e[type=nitric:game,scores={map=5,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 4708.78 89.38 -772.30 4 forest2

execute @e[type=nitric:game,scores={map=6,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 2346.31 69.10 -770.35 4 snow1
execute @e[type=nitric:game,scores={map=6,timer=20},tag=!started] ~ ~ ~ tickingarea add circle 2299.35 69.16 -770.97 4 snow2


execute @e[type=nitric:game,scores={map=5,timer=100},tag=!started] ~ ~ ~ function maps/forest
execute @e[type=nitric:game,scores={map=2,timer=100},tag=!started] ~ ~ ~ function maps/lava
execute @e[type=nitric:game,scores={map=4,timer=100},tag=!started] ~ ~ ~ function maps/moon
execute @e[type=nitric:game,scores={map=3,timer=100},tag=!started] ~ ~ ~ function maps/scifi
execute @e[type=nitric:game,scores={map=6,timer=100},tag=!started] ~ ~ ~ function maps/snow
execute @e[type=nitric:game,scores={map=1,timer=100},tag=!started] ~ ~ ~ function maps/tropical

execute @e[type=nitric:game,scores={map=0..,timer=100}] ~ ~ ~ title @a actionbar §a5
execute @e[type=nitric:game,scores={map=0..,timer=100}] ~ ~ ~ playsound note.pling @a
execute @e[type=nitric:game,scores={map=0..,timer=120}] ~ ~ ~ title @a actionbar §a4
execute @e[type=nitric:game,scores={map=0..,timer=120}] ~ ~ ~ playsound note.pling @a
execute @e[type=nitric:game,scores={map=0..,timer=140}] ~ ~ ~ title @a actionbar §a3
execute @e[type=nitric:game,scores={map=0..,timer=140}] ~ ~ ~ playsound note.pling @a
execute @e[type=nitric:game,scores={map=0..,timer=160}] ~ ~ ~ title @a actionbar §a2
execute @e[type=nitric:game,scores={map=0..,timer=160}] ~ ~ ~ playsound note.pling @a
execute @e[type=nitric:game,scores={map=0..,timer=180}] ~ ~ ~ title @a actionbar §a1
execute @e[type=nitric:game,scores={map=0..,timer=180}] ~ ~ ~ playsound note.pling @a
execute @e[type=nitric:game,scores={map=0..,timer=200}] ~ ~ ~ playsound beacon.activate @a
execute @e[type=nitric:game,scores={map=0..,timer=200}] ~ ~ ~ tag @e[type=nitric:game] add started
execute @e[type=nitric:game,scores={map=0..,timer=200}] ~ ~ ~ scoreboard players reset @e[type=nitric:game] timer


####### FALLING SYSTEM

execute @e[type=nitric:game,tag=started,scores={map=1..2}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=44,dy=-50] ~ ~ ~ title @s actionbar §cOOPS
execute @e[type=nitric:game,tag=started,scores={map=1..2}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=44,dy=-50] ~ ~ ~ kill @s

execute @e[type=nitric:game,tag=started,scores={map=5..6}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=44,dy=-50] ~ ~ ~ title @s actionbar §cOOPS
execute @e[type=nitric:game,tag=started,scores={map=5..6}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=44,dy=-50] ~ ~ ~ kill @s

execute @e[type=nitric:game,tag=started,scores={map=3}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=31,dy=-50] ~ ~ ~ title @s actionbar §cOOPS
execute @e[type=nitric:game,tag=started,scores={map=3}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=31,dy=-50] ~ ~ ~ kill @s


execute @e[type=nitric:game,tag=started,scores={map=4}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=16,dy=-50] ~ ~ ~ title @s actionbar §cOOPS
execute @e[type=nitric:game,tag=started,scores={map=4}] ~ ~ ~ execute @a[x=0,y=70,z=0,rm=50] ~ ~ ~ execute @s[y=16,dy=-50] ~ ~ ~ kill @s

execute @e[type=nitric:game] ~ ~ ~ particle nitric:game



############## BED SYSTEMS

# INGAME COUNTER

execute @a ~ ~ ~ scoreboard players set @e[type=nitric:game] ingamecounter 0
execute @a[x=0,y=70,z=0,rm=25,tag=!lost] ~ ~ ~ scoreboard players add @e[type=nitric:game,tag=started] ingamecounter 1
execute @a[tag=fake2] ~ ~ ~ scoreboard players set @e[type=nitric:game,tag=started] ingamecounter 2
execute @a[tag=fake2] ~ ~ ~ scoreboard players set @e[type=nitric:game] counter 2


clear @a[m=s] bed

# MAP 1 TROPICAL

execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ execute @a[tag=green] ~ ~ ~ particle nitric:g_circle 1824 122 -702
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 tellraw @a {"rawtext":[{"text":"§cGreen bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 title @a[tag=green] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 tag @a[tag=green] add dead
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 kill @e[type=item,x=1824,y=72,z=-702,r=3]
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 spawnpoint @a[tag=green] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!greendestroyed] ~ ~ ~ detect 1824 72 -702 air 0 tag @s add greendestroyed

execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ particle nitric:y_circle 1748 122 -773
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 tellraw @a {"rawtext":[{"text":"§cYellow bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 title @a[tag=yellow] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 tag @a[tag=yellow] add dead
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 kill @e[type=item,x=1748,y=72,z=-773,r=3]
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 spawnpoint @a[tag=yellow] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!yellowdestroyed] ~ ~ ~ detect 1748 72 -773 air 0 tag @s add yellowdestroyed

execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ execute @a[tag=red] ~ ~ ~ particle nitric:r_circle 1819 122 -835
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 tellraw @a {"rawtext":[{"text":"§cRed bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 title @a[tag=red] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 tag @a[tag=red] add dead
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 kill @e[type=item,x=1819,y=72,z=-835,r=3]
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 spawnpoint @a[tag=red] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!reddestroyed] ~ ~ ~ detect 1819 72 -835 air 0 tag @s add reddestroyed

execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ execute @a[tag=purple] ~ ~ ~ particle nitric:p_circle 1884 122 -768
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 tellraw @a {"rawtext":[{"text":"§cPurple bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 title @a[tag=purple] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 tag @a[tag=purple] add dead
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 kill @e[type=item,x=1884,y=72,z=-768,r=3]
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 spawnpoint @a[tag=purple] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=1},tag=!purpledestroyed] ~ ~ ~ detect 1884 72 -768 air 0 tag @s add purpledestroyed

# MAP 2 LAVA

execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ execute @a[tag=green] ~ ~ ~ particle nitric:g_circle 828 132 -695
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 tellraw @a {"rawtext":[{"text":"§cGreen bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 title @a[tag=green] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 tag @a[tag=green] add dead
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 kill @e[type=item,x=828,y=90,z=-695,r=2]
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 spawnpoint @a[tag=green] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!greendestroyed] ~ ~ ~ detect 828 90 -695 air 0 tag @s add greendestroyed

execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ particle nitric:y_circle 765 132 -757
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 tellraw @a {"rawtext":[{"text":"§cYellow bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 title @a[tag=yellow] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 tag @a[tag=yellow] add dead
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 kill @e[type=item,x=765,y=91,z=-756,r=2]
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 spawnpoint @a[tag=yellow] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!yellowdestroyed] ~ ~ ~ detect 765 91 -757 air 0 tag @s add yellowdestroyed

execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ execute @a[tag=red] ~ ~ ~ particle nitric:r_circle 828 132 -820
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 tellraw @a {"rawtext":[{"text":"§cRed bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 title @a[tag=red] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 tag @a[tag=red] add dead
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 kill @e[type=item,x=828,y=91,z=-820,r=2]
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 spawnpoint @a[tag=red] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!reddestroyed] ~ ~ ~ detect 828 91 -820 air 0 tag @s add reddestroyed

execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ execute @a[tag=purple] ~ ~ ~ particle nitric:p_circle 890 132 -758
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 tellraw @a {"rawtext":[{"text":"§cPurple bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 title @a[tag=purple] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 tag @a[tag=purple] add dead
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 kill @e[type=item,x=828,y=91,z=-820,r=2]
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 spawnpoint @a[tag=purple] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=2},tag=!purpledestroyed] ~ ~ ~ detect 890 91 -758 air 0 tag @s add purpledestroyed


# MAP 3 SCIFI

execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ execute @a[tag=green] ~ ~ ~ particle nitric:g_circle 3054 85 -703
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 tellraw @a {"rawtext":[{"text":"§cGreen bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 title @a[tag=green] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 tag @a[tag=green] add dead
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 kill @e[type=item,x=3054,y=35,z=-703,r=2]
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 spawnpoint @a[tag=green] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!greendestroyed] ~ ~ ~ detect 3054 35 -703 air 0 tag @s add greendestroyed

execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ particle nitric:y_circle 3112 85 -761
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 tellraw @a {"rawtext":[{"text":"§cYellow bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 title @a[tag=yellow] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 tag @a[tag=yellow] add dead
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 kill @e[type=item,x=3112,y=35,z=-761,r=2]
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 spawnpoint @a[tag=yellow] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!yellowdestroyed] ~ ~ ~ detect 3112 35 -761 air 0 tag @s add yellowdestroyed

execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ execute @a[tag=red] ~ ~ ~ particle nitric:r_circle 2996 85 -761
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 tellraw @a {"rawtext":[{"text":"§cRed bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 title @a[tag=red] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 tag @a[tag=red] add dead
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 kill @e[type=item,x=2996,y=35,z=-761,r=2]
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 spawnpoint @a[tag=red] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!reddestroyed] ~ ~ ~ detect 2996 35 -761 air 0 tag @s add reddestroyed

execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ execute @a[tag=purple] ~ ~ ~ particle nitric:p_circle 3054 85 -819
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 tellraw @a {"rawtext":[{"text":"§cPurple bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 title @a[tag=purple] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 tag @a[tag=purple] add dead
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 kill @e[type=item,x=3054,y=35,z=-819,r=2]
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 spawnpoint @a[tag=purple] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=3},tag=!purpledestroyed] ~ ~ ~ detect 3054 35 -819 air 0 tag @s add purpledestroyed


# MAP 4 MOON

execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ execute @a[tag=green] ~ ~ ~ particle nitric:g_circle 3987 85 -739
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 tellraw @a {"rawtext":[{"text":"§cGreen bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 title @a[tag=green] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 tag @a[tag=green] add dead
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 kill @e[type=item,x=3987,y=35,z=-739,r=2]
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 spawnpoint @a[tag=green] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!greendestroyed] ~ ~ ~ detect 3987 35 -739 air 0 tag @s add greendestroyed

execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ particle nitric:y_circle 3876 85 -628
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 tellraw @a {"rawtext":[{"text":"§cYellow bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 title @a[tag=yellow] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 tag @a[tag=yellow] add dead
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 kill @e[type=item,x=3876,y=35,z=-628,r=2]
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 spawnpoint @a[tag=yellow] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!yellowdestroyed] ~ ~ ~ detect 3876 35 -628 air 0 tag @s add yellowdestroyed

execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ execute @a[tag=red] ~ ~ ~ particle nitric:r_circle 3876 85 -850
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 tellraw @a {"rawtext":[{"text":"§cRed bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 title @a[tag=red] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 tag @a[tag=red] add dead
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 kill @e[type=item,x=3876,y=35,z=-850,r=2]
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 spawnpoint @a[tag=red] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!reddestroyed] ~ ~ ~ detect 3876 35 -850 air 0 tag @s add reddestroyed

execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ execute @a[tag=purple] ~ ~ ~ particle nitric:p_circle 3765 85 -739
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 tellraw @a {"rawtext":[{"text":"§cPurple bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 title @a[tag=purple] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 tag @a[tag=purple] add dead
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 kill @e[type=item,x=3765,y=35,z=-739,r=2]
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 spawnpoint @a[tag=purple] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=4},tag=!purpledestroyed] ~ ~ ~ detect 3765 36 -739 air 0 tag @s add purpledestroyed


# MAP 5 FOREST

execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ execute @a[tag=green] ~ ~ ~ particle nitric:g_circle 4769 121 -746
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 tellraw @a {"rawtext":[{"text":"§cGreen bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 title @a[tag=green] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 tag @a[tag=green] add dead
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 kill @e[type=item,x=4769,y=91,z=-746,r=2]
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 spawnpoint @a[tag=green] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!greendestroyed] ~ ~ ~ detect 4769 91 -746 air 0 tag @s add greendestroyed

execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ particle nitric:y_circle 4708 121 -807
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 tellraw @a {"rawtext":[{"text":"§cYellow bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 title @a[tag=yellow] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 tag @a[tag=yellow] add dead
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 kill @e[type=item,x=4708,y=91,z=-807,r=2]
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 spawnpoint @a[tag=yellow] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!yellowdestroyed] ~ ~ ~ detect 4708 91 -807 air 0 tag @s add yellowdestroyed

execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ execute @a[tag=red] ~ ~ ~ particle nitric:r_circle 4708 121 -685
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 tellraw @a {"rawtext":[{"text":"§cRed bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 title @a[tag=red] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 tag @a[tag=red] add dead
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 kill @e[type=item,x=4708,y=91,z=-685,r=2]
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 spawnpoint @a[tag=red] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!reddestroyed] ~ ~ ~ detect 4708 91 -685 air 0 tag @s add reddestroyed

execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ execute @a[tag=purple] ~ ~ ~ particle nitric:p_circle 4647 121 -746
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 tellraw @a {"rawtext":[{"text":"§cPurple bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 title @a[tag=purple] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 tag @a[tag=purple] add dead
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 kill @e[type=item,x=4647,y=91,z=-746,r=2]
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 spawnpoint @a[tag=purple] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=5},tag=!purpledestroyed] ~ ~ ~ detect 4647 91 -746 air 0 tag @s add purpledestroyed


# MAP 6 SNOW

execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ execute @a[tag=green] ~ ~ ~ particle nitric:g_circle 2319 100 -700
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 tellraw @a {"rawtext":[{"text":"§cGreen bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 title @a[tag=green] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 tag @a[tag=green] add dead
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 kill @e[type=item,x=2319,y=70,z=-700,r=2]
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 spawnpoint @a[tag=green] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!greendestroyed] ~ ~ ~ detect 2319 70 -700 air 0 tag @s add greendestroyed

execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ execute @a[tag=yellow] ~ ~ ~ particle nitric:y_circle 2318 100 -839
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 tellraw @a {"rawtext":[{"text":"§cYellow bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 title @a[tag=yellow] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 tag @a[tag=yellow] add dead
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 kill @e[type=item,x=2318,y=70,z=-839,r=2]
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 spawnpoint @a[tag=yellow] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!yellowdestroyed] ~ ~ ~ detect 2318 70 -839 air 0 tag @s add yellowdestroyed

execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ execute @a[tag=red] ~ ~ ~ particle nitric:r_circle 2252 100 -771
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 tellraw @a {"rawtext":[{"text":"§cRed bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 title @a[tag=red] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 tag @a[tag=red] add dead
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 kill @e[type=item,x=2252,y=70,z=-771,r=2]
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 spawnpoint @a[tag=red] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!reddestroyed] ~ ~ ~ detect 2252 70 -771 air 0 tag @s add reddestroyed

execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ execute @a[tag=purple] ~ ~ ~ particle nitric:p_circle 2386 100 -776
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 tellraw @a {"rawtext":[{"text":"§cPurple bed has been destroyed!"}]}
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 playsound mob.enderdragon.growl @a
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 title @a[tag=purple] title §4BED DESTROYED!
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 tag @a[tag=purple] add dead
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 kill @e[type=item,x=2386,y=70,z=-776,r=2]
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 spawnpoint @a[tag=purple] 0 70 0
execute @e[type=nitric:game,tag=started,scores={map=6},tag=!purpledestroyed] ~ ~ ~ detect 2386 70 -776 air 0 tag @s add purpledestroyed

# WINNER

execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aCongratulations!"}]}
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ title @a title §a@p[tag=!lost,rm=20] 
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ title @a actionbar §a@p[tag=!lost,rm=20] won the game
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ function reset
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ function deleteticks
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ scoreboard objectives setdisplay sidebar
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ scoreboard players reset @e[type=nitric:game] map
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ tp @a 0 70 0
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ playsound firework.twinkle @a
execute @e[type=nitric:game,tag=started,scores={ingamecounter=1}] ~ ~ ~ tag @s remove started




