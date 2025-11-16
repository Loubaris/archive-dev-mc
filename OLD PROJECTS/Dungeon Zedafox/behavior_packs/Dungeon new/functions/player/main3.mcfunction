// POTION

execute @s[scores={potion1=1..}] ~ ~ ~ function player/potion/potion1
execute @s[scores={potion2=1..}] ~ ~ ~ function player/potion/potion2
execute @s[scores={potion3=1..}] ~ ~ ~ function player/potion/potion3

//

effect @s saturation 99999 255 true
execute @s ~ ~ ~ detect ~ ~-1 ~ concrete 15 kill @s
execute @s[scores={hurt=1..}] ~ ~ ~ function entity/crocroc_hit

//

function entity/forced_to_answer 