scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=30..}] ~ ~ ~ summon fireworks_rocket ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ summon fireworks_rocket ~1 ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ summon fireworks_rocket ~-1 ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ summon fireworks_rocket ~ ~ ~1
execute @s[scores={tntwait=30..}] ~ ~ ~ summon fireworks_rocket ~ ~ ~-1
scoreboard players set @s[scores={tntwait=30..}] tntwait 0