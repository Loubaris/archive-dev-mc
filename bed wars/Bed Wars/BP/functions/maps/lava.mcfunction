function reset

structure load "maps:lava/lava1" 879.45 67.00 -765.44
structure load "maps:lava/lava2" 819.38 65.00 -829.54
structure load "maps:lava/lava3" 754.48 63.00 -766.36
structure load "maps:lava/lava4" 819.51 66.00 -705.46

structure load "maps:lava/lavaisland" 781.58 80.00 -719.36
structure load "maps:lava/lavaisland" 781.37 80.33 -803.50
structure load "maps:lava/lavaisland" 865.24 80.76 -803.64
structure load "maps:lava/lavaisland" 865.57 80.37 -719.42

structure load "maps:lava/lavamiddle1" 795.41 43.00 -790.54


execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add purple
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon nitric:irongoldgen 893.89 91.00 -761.95
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ spawnpoint @s 894.48 91.00 -757.40
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon npc "§bShop Villager" 894.52 91.00 -754.39
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ tp @s 894.48 91.00 -757.40

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add yellow
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon nitric:irongoldgen 760.95 91.00 -752.98
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ spawnpoint @s 760.59 91.00 -756.39
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon npc "§bShop Villager" 760.30 91.00 -760.70
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ tp @s 760.59 91.00 -756.39

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add red
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon nitric:irongoldgen 824.93 91.00 -824.03
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ spawnpoint @s 828.48 91.00 -823.64
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon npc "§bShop Villager" 832.70 91.00 -824.70
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ tp @s 828.48 91.00 -823.64

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add green
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon nitric:irongoldgen 831.95 90.00 -689.06
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ spawnpoint @s 828.45 90.00 -689.18
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon npc "§bShop Villager" 824.30 90.00 -689.37
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ tp @s 828.45 90.00 -689.18

effect @a blindness 6 255 true
effect @a slowness 4 255 true

summon nitric:diamondgen 870.49 90.00 -798.41
summon nitric:diamondgen 870.35 90.00 -714.47
summon nitric:diamondgen 786.54 90.00 -714.62
summon nitric:diamondgen 786.62 90.00 -798.45

summon nitric:emeraldgen 832.09 93.00 -759.94
summon nitric:emeraldgen 832.00 93.00 -752.96
summon nitric:emeraldgen 824.89 93.00 -753.02
summon nitric:emeraldgen 824.98 93.00 -759.99

setblock 895.67 91.00 -755.30 chest
setblock 831.61 91.00 -825.70 chest
setblock 759.45 91.00 -759.58 chest
setblock 825.53 90.00 -688.39 chest



execute @e[type=npc] ~ ~ ~ dialogue change @s item_shop @a


function cleanwool
