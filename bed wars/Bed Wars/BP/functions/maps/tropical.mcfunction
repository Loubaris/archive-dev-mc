function reset
structure load "maps:tropical/tropical1" 1806.58 43.00 -847.49
structure load "maps:tropical/tropical2" 1739.44 41.00 -780.43
structure load "maps:tropical/tropical3" 1805.49 43.00 -720.36
structure load "maps:tropical/tropical4" 1872.61 41.00 -781.50

structure load "maps:tropical/tropicalisland" 1770.55 61.00 -814.63
structure load "maps:tropical/tropicalisland" 1770.46 60.88 -732.02
structure load "maps:tropical/tropicalisland" 1854.68 62.39 -732.07
structure load "maps:tropical/tropicalisland" 1854.78 62.29 -815.56
structure load "maps:tropical/tropicalmiddle" 1789.61 38.00 -788.42
structure load "maps:tropical/tropicalcactus" 1775.57 61.00 -775.48
structure load "maps:tropical/tropicalcactus" 1852.03 61.70 -777.26
structure load "maps:tropical/tropicalcactus2" 1810.49 62.00 -811.53
structure load "maps:tropical/tropicalcactus2" 1809.37 62.95 -735.49

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add purple
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon nitric:irongoldgen 1884.92 72.00 -774.5
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ spawnpoint @s 1886.96 72.00 -767.36
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ summon npc "§bShop Villager" 1884.46 72.00 -771.50
execute @p[x=0,y=69,z=0,r=10,tag=purple] ~ ~ ~ tp @s 1886.96 72.00 -767.36

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add yellow
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon nitric:irongoldgen 1754.09 72.00 -774.99
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ spawnpoint @s 1745.55 72.00 -772.37
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ summon npc "§bShop Villager" 1750.55 72.00 -774.55
execute @p[x=0,y=69,z=0,r=10,tag=yellow] ~ ~ ~ tp @s 1745.55 72.00 -772.37

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add red
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon nitric:irongoldgen 1813.10 72.00 -833.08
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ spawnpoint @s 1819.47 72.00 -837.13
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ summon npc "§bShop Villager" 1816.56 72.00 -833.45
execute @p[x=0,y=69,z=0,r=10,tag=red] ~ ~ ~ tp @s 1819.47 72.00 -837.13

execute @p[x=0,y=69,z=0,r=10,c=1] ~ ~ ~ tag @s add green
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon nitric:irongoldgen 1814.95 72.00 -701.99
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ spawnpoint @s 1824.44 72.00 -698.65
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ summon npc "§bShop Villager" 1820.54 72.00 -701.23
execute @p[x=0,y=69,z=0,r=10,tag=green] ~ ~ ~ tp @s 1824.44 72.00 -698.65

effect @a blindness 6 255 true
effect @a slowness 4 255 true

summon nitric:diamondgen 1775.55 71.00 -810.61
summon nitric:diamondgen 1775.56 70.00 -728.57
summon nitric:diamondgen 1859.45 72.00 -811.48
summon nitric:diamondgen 1859.70 72.00 -728.55

summon nitric:emeraldgen 1815.60 75.50 -771.52
summon nitric:emeraldgen 1814.59 80.00 -768.24
summon nitric:emeraldgen 1818.53 71.00 -758.41
summon nitric:emeraldgen 1820.38 71.00 -782.42


# FIX MAP

setblock 1821.37 71.00 -701.52 sand
setblock 1884.30 71.00 -770.30 sand
setblock 1816.62 71.00 -834.70 sand
setblock 1748.40 71.00 -770 sand

setblock 1821.51 72.00 -833.59 chest
setblock 1749.30 72.00 -774.44 chest
setblock 1822.50 72.00 -702.30 chest
setblock 1883.61 72.00 -769.55 chest


execute @e[type=npc] ~ ~ ~ dialogue change @s item_shop @a

function cleanwool

