scoreboard players set @e[type=armor_stand,tag=all-points] points 0
execute @e[type=armor_stand,tag=all-points] ~ ~ ~ scoreboard players operation @s points += @a points
execute @a ~ ~ ~ scoreboard players operation @s test2 = @e[type=armor_stand,tag=all-points] points
execute @a ~ ~ ~ scoreboard players operation @s test2 -= @s points