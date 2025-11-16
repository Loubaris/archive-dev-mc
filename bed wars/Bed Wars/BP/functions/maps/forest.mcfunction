function reset

structure load "maps:forest/forest1" 4632.35 63.00 -758.52
structure load "maps:forest/forest2" 4695.49 67.00 -821.50 
structure load "maps:forest/forest3" 4762.39 68.00 -758.50
structure load "maps:forest/forest4" 4695.68 66.00 -691.34

structure load "maps:forest/forestisland" 4662.50 80.00 -707.58
structure load "maps:forest/forestisland" 4662.36 80.36 -791.71
structure load "maps:forest/forestisland" 4745.92 80.96 -791.53
structure load "maps:forest/forestisland" 4746.60 79.76 -707.42

structure load "maps:forest/forestmiddle" 4694.48 47.00 -759.56


execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add purple
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon nitric:irongoldgen 4641.03 91.00 -746.94
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ spawnpoint @s 4643.84 91.00 -742.42
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon npc "§bShop Villager" 4645.46 91.00 -748.69
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ tp @s 4643.84 91.00 -742.42

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add yellow
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon nitric:irongoldgen 4710.17 91.00 -813.02
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ spawnpoint @s 4705.47 91.00 -809.49
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon npc "§bShop Villager" 4711.64 91.00 -808.42
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ tp @s 4705.47 91.00 -809.49

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add red
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon nitric:irongoldgen 4707.01 91.00 -677.95
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ spawnpoint @s 4711.69 91.00 -681.66
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon npc "§bShop Villager" 4705.33 91.00 -682.37
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ tp @s 4711.69 91.00 -681.66

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add green
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon nitric:irongoldgen 4776.08 91.00 -743.94
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ spawnpoint @s 4772.42 91.00 -748.43
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon npc "§bShop Villager" 4771.53 91.00 -742.46
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ tp @s 4772.42 91.00 -748.43

effect @a blindness 6 255 true
effect @a slowness 4 255 true

summon nitric:diamondgen 4666.51 89.00 -703.63
summon nitric:diamondgen 4666.56 89.00 -787.49
summon nitric:diamondgen 4749.62 89.00 -787.54
summon nitric:diamondgen 4750.51 88.00 -703.39

summon nitric:emeraldgen 4708.49 91.00 -733.61
summon nitric:emeraldgen 4720.53 91.00 -745.62
summon nitric:emeraldgen 4708.20 91.00 -757.46
summon nitric:emeraldgen 4696.47 91.00 -745.45

setblock 4643.44 91.00 -741.33 chest
setblock 4712.65 91.00 -680.41 chest
setblock 4773.57 91.00 -749.54 chest
setblock 4704.36 91.00 -810.52 chest

execute @e[type=npc] ~ ~ ~ dialogue change @s item_shop @a

function cleanwool

