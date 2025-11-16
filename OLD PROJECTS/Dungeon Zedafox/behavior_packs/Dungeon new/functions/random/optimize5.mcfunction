scoreboard players add @s mushroom 1

scoreboard players add @s mushroom 0
effect @s[scores={mushroom=7..}] levitation 0 0 true
scoreboard players set @s[scores={mushroom=10..}] mushroom 0

//

execute @s[scores={mushroom=2}] ~ ~ ~ playanimation @e[type=zedafox:big_mushroom,c=1] animation.wave.bounce 