scoreboard players remove @s[scores={teleportation=1..}] teleportation 1
scoreboard players remove @s[scores={teleportation2=1..}] teleportation2 1
scoreboard players remove @s[scores={teleportation3=1..}] teleportation3 1
tp @s[scores={teleportation=1}] 444 65 542 -90 0
tp @s[scores={teleportation2=1}] 382 112 511 180 0
tp @s[scores={teleportation3=1}] 372 108 494 -90 0


execute @s[scores={teleportation3=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] timedialog 1



// REMOVE SETBLOCK

execute @s[scores={teleportation=1}] ~ ~ ~ setblock 371 58 494 air
execute @s[scores={teleportation2=1}] ~ ~ ~ setblock 371 58 494 air
execute @s[scores={teleportation3=1}] ~ ~ ~ setblock 371 58 494 air
