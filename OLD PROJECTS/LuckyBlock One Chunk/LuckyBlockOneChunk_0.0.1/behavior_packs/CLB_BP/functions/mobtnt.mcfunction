scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=30..}] ~ ~ ~ summon zombie
execute @s[scores={tntwait=30..}] ~ ~ ~ summon zombie
execute @s[scores={tntwait=30..}] ~ ~ ~ summon skeleton
execute @s[scores={tntwait=30..}] ~ ~ ~ summon skeleton
execute @s[scores={tntwait=30..}] ~ ~ ~ summon spider
execute @s[scores={tntwait=30..}] ~ ~ ~ summon spider
scoreboard players set @s[scores={tntwait=30..}] tntwait 0