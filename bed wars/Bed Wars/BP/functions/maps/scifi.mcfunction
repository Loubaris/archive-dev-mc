function reset
structure load "maps:scifi/scifi1" 2975.37 31.00 -773.61
structure load "maps:scifi/scifi2" 3043.56 31.00 -839.42
structure load "maps:scifi/scifi3" 3108.31 31.00 -772.62
structure load "maps:scifi/scifi4" 3043.37 31.00 -707.50

structure load "maps:scifi/scifimiddle1" 3008.27 31.00 -807.60
structure load "maps:scifi/scifimiddle2" 3038.65 31.81 -775.45

structure load "maps:scifi/scifiisland" 3092.54 31.00 -806.53
structure load "maps:scifi/scifiisland" 3008.66 31.00 -723.34

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add purple
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon nitric:irongoldgen 3053.14 35.00 -825.00
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ spawnpoint @s 3050.60 35.00 -821.39
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon npc "§bShop Villager" 3056.50 35.00 -822.53
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ tp @s 3050.60 35.00 -821.39

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add red
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon nitric:irongoldgen 2990.04 35.00 -758.89
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ spawnpoint @s 2993.74 35.00 -757.53
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon npc "§bShop Villager" 2993.48 35.00 -762.54
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ tp @s 2993.74 35.00 -757.53

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add yellow
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon nitric:irongoldgen 3119.08 35.00 -761.96
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ spawnpoint @s 3114.45 35.00 -763.34
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon npc "§bShop Villager" 3116.70 35.00 -758.30
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ tp @s 3114.45 35.00 -763.34

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add green
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon nitric:irongoldgen 3056.02 35.00 -695.96
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ spawnpoint @s 3057.32 35.00 -700.61
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon npc "§bShop Villager" 3052.30 35.00 -698.30
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ tp @s 3057.32 35.00 -700.61


effect @a blindness 6 255 true
effect @a slowness 4 255 true

summon nitric:diamondgen 3012.58 35.00 -719.48
summon nitric:diamondgen 3096.49 35.00 -718.45
summon nitric:diamondgen 3096.57 35.00 -802.46
summon nitric:diamondgen 3012.53 35.00 -802.49

summon nitric:emeraldgen 3054.48 35.00 -769.42
summon nitric:emeraldgen 3038.56 35.00 -756.45
summon nitric:emeraldgen 3055.47 35.00 -752.56
summon nitric:emeraldgen 3064.46 35.00 -773.41

setblock 2992.43 35.00 -755.52 chest
setblock 3059.50 35.00 -698.42 chest
setblock 3049.45 35.00 -822.54 chest
setblock 2992.46 35.00 -755.47 chest


execute @e[type=npc] ~ ~ ~ dialogue change @s item_shop @a

# FIX MAP

setblock 2993.47 34.00 -755.41 sandstone

function cleanwool