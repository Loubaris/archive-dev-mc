function reset
structure load "maps:snow/snow1" 2377.18 39.00 -779.47
structure load "maps:snow/snow2" 2312.45 41.00 -844.52
structure load "maps:snow/snow3" 2247.68 40.00 -779.42
structure load "maps:snow/snow4" 2310.52 40.00 -715.43 270_degrees

structure load "maps:snow/snowisland" 2359.45 58.00 -732.56
structure load "maps:snow/snowisland" 2358.40 58.04 -817.34
structure load "maps:snow/snowisland" 2274.59 58.29 -817.32
structure load "maps:snow/snowisland" 2274.43 57.01 -733.70

structure load "maps:snow/snowmiddle" 2292.50 48.00 -798.38


execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add purple
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon nitric:irongoldgen 2390.05 70.00 -769.00
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ spawnpoint @s 2386.56 70.00 -772.61
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon npc "§bShop Villager" 2387.50 70.00 -766.49
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ tp @s 2386.56 70.00 -772.61

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add red
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon nitric:irongoldgen 2258.91 70.00 -766.94
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ spawnpoint @s 2255.46 70.00 -770.51
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon npc "§bShop Villager" 2259.58 70.00 -773.44
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ tp @s 2255.46 70.00 -770.51

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add yellow
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon nitric:irongoldgen 2315.16 70.00 -832.00
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ spawnpoint @s 2318.52 70.00 -835.37
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon npc "§bShop Villager" 2323.59 70.12 -832.36
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ tp @s 2318.52 70.00 -835.37

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add green
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon nitric:irongoldgen 2322.97 70.00 -705.97
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ spawnpoint @s 2319.48 70.00 -702.63
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon npc "§bShop Villager" 2316.53 70.00 -706.48
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ tp @s 2319.48 70.00 -702.63

effect @a blindness 6 255 true
effect @a slowness 4 255 true

summon nitric:diamondgen 2278.57 69.00 -813.40
summon nitric:diamondgen 2278.58 68.00 -729.56
summon nitric:diamondgen 2363.62 69.00 -728.54
summon nitric:diamondgen 2362.48 69.00 -813.50

summon nitric:emeraldgen 2326.07 71.00 -775.03
summon nitric:emeraldgen 2317.08 71.00 -775.03
summon nitric:emeraldgen 2316.95 71.00 -765.97
summon nitric:emeraldgen 2326.00 71.00 -766.01


execute @e[type=npc] ~ ~ ~ dialogue change @s item_shop @a

# FIX MAP

setblock 2387.48 69.00 -765.39 snow
setblock 2259.42 69.43 -773.49 snow

setblock 2317.53 70.00 -702.65 chest
setblock 2388.48 70.00 -772.30 chest
setblock 2320.48 70.00 -835.43 chest
setblock 2255.50 70.00 -772.53 chest


function cleanwool