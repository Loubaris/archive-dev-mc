// HAMMER

execute @s[scores={hammer=0..2}] ~ ~ ~ function random/optimize7

// MUSHROOM

scoreboard players add @s mushroom 0
execute @s[scores={mushroom=1..}] ~ ~ ~ function random/optimize5

// SPACESHIP

execute @e[type=zedafox:spaceship,r=3] ~ ~ ~ function entity/spaceship_main

// POTION

execute @s[scores={potion1=1..}] ~ ~ ~ function player/potion/potion1
execute @s[scores={potion2=1..}] ~ ~ ~ function player/potion/potion2
execute @s[scores={potion3=1..}] ~ ~ ~ function player/potion/potion3