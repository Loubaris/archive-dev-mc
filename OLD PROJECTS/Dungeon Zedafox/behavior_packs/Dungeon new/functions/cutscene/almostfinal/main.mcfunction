scoreboard players add @s cutscene12 1

//

execute @s[scores={cutscene12=2}] ~ ~ ~ stopsound @a ambient
execute @s[scores={cutscene12=2}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0
execute @s[scores={cutscene12=80}] ~ ~ ~ function transition/size6

// TELEPORT

execute @s[scores={cutscene12=150}] ~ ~ ~ event entity @e[type=zedafox:spaceship,scores={time=1..}] to_death
execute @s[scores={cutscene12=152}] ~ ~ ~ tp @a 6166 114 15 180 0
execute @s[scores={cutscene12=152}] ~ ~ ~ spawnpoint @a 6166 114 15

execute @s[scores={cutscene12=162}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] dialog 85
execute @s[scores={cutscene12=163,partner=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] dialog 86

execute @s[scores={cutscene12=163}] ~ ~ ~ setblock 374 58 494 air
execute @s[scores={cutscene12=163}] ~ ~ ~ setblock 374 58 496 redstone_block



execute @s[scores={cutscene12=182..184}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] timedialog 1

execute @s[scores={cutscene12=185}] ~ ~ ~ setblock 374 58 494 air
execute @s[scores={cutscene12=185}] ~ ~ ~ setblock 374 58 496 redstone_block