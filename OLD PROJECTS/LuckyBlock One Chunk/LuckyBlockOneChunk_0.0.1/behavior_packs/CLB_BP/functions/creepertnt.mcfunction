scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=30..}] ~ ~ ~ summon creeper
execute @s[scores={tntwait=30..}] ~ ~ ~ summon creeper
execute @s[scores={tntwait=30..}] ~ ~ ~ summon creeper
scoreboard players set @s[scores={tntwait=30..}] tntwait 0