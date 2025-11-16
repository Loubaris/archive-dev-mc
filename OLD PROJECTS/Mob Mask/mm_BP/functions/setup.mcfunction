gamerule commandblockoutput false
gamerule sendcommandfeedback false
gamerule falldamage false

scoreboard objectives add ride dummy
scoreboard objectives add masktime dummy
scoreboard objectives add mana dummy
scoreboard objectives add attacktime dummy
scoreboard objectives add firetime dummy
scoreboard objectives add introtime dummy
scoreboard objectives add watertime dummy
scoreboard objectives add randomtime dummy
scoreboard objectives add randomluck dummy
scoreboard objectives add soultime dummy
scoreboard objectives add round dummy
scoreboard objectives add roundtime dummy


summon mm:mask_npc -269 68 -106
execute @e[type=mm:mask_npc] ~ ~ ~ tp @s ~ ~ ~ facing -276 70 -106