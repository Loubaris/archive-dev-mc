scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=30..}] ~ ~ ~ fill ~-2 ~-2 ~-2 ~2 ~2 ~2 lava 0 replace air
scoreboard players set @s[scores={tntwait=30..}] tntwait 0