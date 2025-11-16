scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=30..}] ~ ~ ~ effect @e[r=5] regeneration 3 5
scoreboard players set @s[scores={tntwait=30..}] tntwait 0