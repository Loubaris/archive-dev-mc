kill @e[name="Pointed Dripstone"]
kill @e[type=item,r=4]
effect @e[r=4,family=mob,family=!minion] slowness 1 3 true
execute as @e[r=4,family=mob,family=!minion] at @s run setblock ~ ~9 ~ pointed_dripstone ["dripstone_thickness"="base"]
execute as @e[r=4,family=mob,family=!minion] at @s run setblock ~ ~8 ~ pointed_dripstone ["dripstone_thickness"="middle"]
execute as @e[r=4,family=mob,family=!minion] at @s run setblock ~ ~7 ~ pointed_dripstone ["dripstone_thickness"="tip"]