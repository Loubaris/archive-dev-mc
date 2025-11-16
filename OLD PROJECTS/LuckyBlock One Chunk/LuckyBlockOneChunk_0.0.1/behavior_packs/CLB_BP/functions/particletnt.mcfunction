scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:totem_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:critical_hit_emitter ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:rising_border_dust_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:rising_border_dust_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:rising_border_dust_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:rising_border_dust_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:rising_border_dust_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:lava_particle ~ ~ ~
execute @s[scores={tntwait=30..}] ~ ~ ~ particle minecraft:lava_particle ~ ~ ~
scoreboard players set @s[scores={tntwait=30..}] tntwait 0