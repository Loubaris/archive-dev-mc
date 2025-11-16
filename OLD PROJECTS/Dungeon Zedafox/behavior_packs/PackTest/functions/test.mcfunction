execute @e[type=armor_stand,tag=test,scores={side=1}] ~ ~ ~ setblock ~ ~ ~ concrete 0
execute @e[type=armor_stand,tag=test,scores={side=1}] ~ ~ ~ tp @s ~1 ~ ~
execute @e[type=armor_stand,tag=test,scores={side=2}] ~ ~ ~ setblock ~ ~ ~ concrete 0
execute @e[type=armor_stand,tag=test,scores={side=2}] ~ ~ ~ tp @s ~ ~ ~1
execute @e[type=armor_stand,tag=test,scores={side=3}] ~ ~ ~ setblock ~ ~ ~ concrete 0
execute @e[type=armor_stand,tag=test,scores={side=3}] ~ ~ ~ tp @s ~-1 ~ ~
execute @e[type=armor_stand,tag=test,scores={side=4}] ~ ~ ~ setblock ~ ~ ~ concrete 0
execute @e[type=armor_stand,tag=test,scores={side=4}] ~ ~ ~ tp @s ~ ~ ~-1

execute @e[type=armor_stand,tag=test,scores={side=1}] ~ ~ ~ detect ~-2 ~ ~2 wool 5 scoreboard players set @s side 2
execute @e[type=armor_stand,tag=test,scores={side=2}] ~ ~ ~ detect ~-2 ~ ~-2 wool 14 scoreboard players set @s side 3
execute @e[type=armor_stand,tag=test,scores={side=3}] ~ ~ ~ detect ~2 ~ ~-2 wool 4 scoreboard players set @s side 4
execute @e[type=armor_stand,tag=test,scores={side=4}] ~ ~ ~ detect ~2 ~ ~2 wool 3 scoreboard players set @s side 1

execute @e[type=armor_stand,tag=test,scores={side=1}] ~ ~ ~ detect ~-2 ~ ~2 wool 0 tag @e[type=armor_stand,tag=test] remove verified
execute @e[type=armor_stand,tag=test,scores={side=2}] ~ ~ ~ detect ~-2 ~ ~-2 wool 0 tag @e[type=armor_stand,tag=test] remove verified
execute @e[type=armor_stand,tag=test,scores={side=3}] ~ ~ ~ detect ~2 ~ ~-2 wool 0 tag @e[type=armor_stand,tag=test] remove verified
execute @e[type=armor_stand,tag=test,scores={side=4}] ~ ~ ~ detect ~2 ~ ~2 wool 0 tag @e[type=armor_stand,tag=test] remove verified

execute @e[type=armor_stand,tag=test,tag=!verified,scores={side=1}] ~ ~ ~ setblock ~ ~ ~ wool 3
execute @e[type=armor_stand,tag=test,tag=!verified,scores={side=2}] ~ ~ ~ setblock ~ ~ ~ wool 5
execute @e[type=armor_stand,tag=test,tag=!verified,scores={side=3}] ~ ~ ~ setblock ~ ~ ~ wool 14
execute @e[type=armor_stand,tag=test,tag=!verified,scores={side=4}] ~ ~ ~ setblock ~ ~ ~ wool 4

tag @e[type=armor_stand,tag=test] add verified