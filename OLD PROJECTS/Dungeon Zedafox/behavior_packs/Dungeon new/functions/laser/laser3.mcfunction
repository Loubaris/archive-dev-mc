scoreboard objectives add distance dummy
scoreboard objectives add laser_kill dummy

summon armor_stand ^ ^1 ^-1
playsound laser @a ~ ~ ~ 1 1
scoreboard players set @s reload_time 30
execute @s ~ ~ ~ tp @e[type=armor_stand,c=1] @s
execute @e[type=armor_stand,rym=45,ry=135] ~ ~ ~ tp @s ^-1 ^ ^
execute @e[type=armor_stand,rym=-135,ry=-45] ~ ~ ~ tp @s ^1 ^ ^
execute @s ~ ~ ~ tag @e[type=armor_stand,r=1.5] add tagged
tag @s add laser

execute @e[type=armor_stand] ~ ~ ~ function laser/laser_kill
