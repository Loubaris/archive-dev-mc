function reset

structure load "maps:moon/moon1" 3753.41 22.00 -748.52
structure load "maps:moon/moon2" 3866.55 22.00 -635.52
structure load "maps:moon/moon3" 3979.47 22.00 -748.52
structure load "maps:moon/moon4" 3866.54 20.00 -861.64

structure load "maps:moon/moonisland" 3862.63 16.00 -813.42
structure load "maps:moon/moonisland" 3918.25 16.00 -753.73 90_degrees
structure load "maps:moon/moonisland" 3853.49 16.00 -699.14 180_degrees
structure load "maps:moon/moonisland" 3798.72 16.45 -761.56 270_degrees

structure load "maps:moon/moonmiddle" 3856.55 9.00 -758.54

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add purple
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon nitric:irongoldgen 3760.06 36.00 -742.00
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ spawnpoint @s 3763.64 36.00 -734.58
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon npc "§bShop Villager" 3759.74 36.00 -737.63
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ tp @s 3763.64 36.00 -734.58

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add yellow
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon nitric:irongoldgen 3872.99 35.00 -622.02
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ spawnpoint @s 3879.57 35.00 -625.47
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon npc "§bShop Villager" 3877.36 35.00 -620.53
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ tp @s 3879.57 35.00 -625.47

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add red
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon nitric:irongoldgen 3880.02 35.00 -854.84
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ spawnpoint @s 3872.45 35.00 -851.51
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon npc "§bShop Villager" 3875.52 35.00 -856.62
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ tp @s 3872.45 35.00 -851.51

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add green
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon nitric:irongoldgen 3992.90 35.00 -735.04
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ spawnpoint @s 3989.32 35.00 -742.51
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon npc "§bShop Villager" 3993.50 35.00 -739.46
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ tp @s 3989.32 35.00 -742.51

effect @a blindness 6 255 true
effect @a slowness 4 255 true

summon nitric:diamondgen 3877.51 38.00 -678.66
summon nitric:diamondgen 3939.45 38.00 -738.45
summon nitric:diamondgen 3877.45 38.00 -799.51
summon nitric:diamondgen 3812.46 38.00 -737.69


summon nitric:emeraldgen 3859.61 37.00 -738.47
summon nitric:emeraldgen 3876.55 36.00 -722.43
summon nitric:emeraldgen 3893.57 35.00 -738.43
summon nitric:emeraldgen 3876.43 36.00 -755.49

setblock 3757.34 36.00 -738.48 chest
setblock 3876.44 35.00 -619.42 chest
setblock 3995.57 35.00 -738.44 chest
setblock 3876.45 35.00 -857.61 chest

execute @e[type=npc] ~ ~ ~ dialogue change @s item_shop @a


function cleanwool