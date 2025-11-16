scoreboard players set @e[family=monster,r=3] fire 1
scoreboard players set @e[type=zedafox:dummy,r=4] fire 1
execute @e[family=monster,c=1,r=6] ~ ~ ~ particle zedafox:spark_fire4 ~ ~ ~
execute @e[type=zedafox:dummy,c=1,r=4] ~ ~ ~ particle zedafox:spark_fire4 ~ ~ ~
event entity @e[family=frozen,r=3] unfreeze