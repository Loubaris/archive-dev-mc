scoreboard players random @s random 1 4
scoreboard players random @s random4 1 3

// ALEATOIRE SUR LE COTE

execute @s[scores={random=1}] ~ ~ ~ detect ~ ~-1 ~5 yellow_glazed_terracotta -1 tag @s add canpass
execute @s[scores={random=2}] ~ ~ ~ detect ~ ~-1 ~-5 yellow_glazed_terracotta -1 tag @s add canpass
execute @s[scores={random=3}] ~ ~ ~ detect ~5 ~-1 ~ yellow_glazed_terracotta -1 tag @s add canpass
execute @s[scores={random=4}] ~ ~ ~ detect ~-5 ~-1 ~ yellow_glazed_terracotta -1 tag @s add canpass

// CANMOVE2

execute @s[tag=canpass,scores={random=1}] ~ ~ ~ detect ~ ~-1 ~10 yellow_glazed_terracotta -1 tag @s add canmove2
execute @s[tag=canpass,scores={random=2}] ~ ~ ~ detect ~ ~-1 ~-10 yellow_glazed_terracotta -1 tag @s add canmove2
execute @s[tag=canpass,scores={random=3}] ~ ~ ~ detect ~10 ~-1 ~ yellow_glazed_terracotta -1 tag @s add canmove2
execute @s[tag=canpass,scores={random=4}] ~ ~ ~ detect ~-10 ~-1 ~ yellow_glazed_terracotta -1 tag @s add canmove2

// CANMOVE3

execute @s[tag=canpass,scores={random=1}] ~ ~ ~ detect ~ ~-1 ~15 yellow_glazed_terracotta -1 tag @s add canmove3
execute @s[tag=canpass,scores={random=2}] ~ ~ ~ detect ~ ~-1 ~-15 yellow_glazed_terracotta -1 tag @s add canmove3
execute @s[tag=canpass,scores={random=3}] ~ ~ ~ detect ~15 ~-1 ~ yellow_glazed_terracotta -1 tag @s add canmove3
execute @s[tag=canpass,scores={random=4}] ~ ~ ~ detect ~-15 ~-1 ~ yellow_glazed_terracotta -1 tag @s add canmove3



// ALEATOIRE SUR LE NOMBRE DE CASE

scoreboard players set @s[tag=canpass] random2 1 
scoreboard players random @s[tag=canmove2] random2 1 2
scoreboard players random @s[tag=canmove3] random2 1 3



// SETBLOCKS

execute @s[tag=canpass,scores={random=1,random2=1}] ~ ~ ~ setblock ~ ~-2 ~5 wool 4
execute @s[tag=canpass,scores={random=1,random2=2}] ~ ~ ~ setblock ~ ~-2 ~10 wool 4
execute @s[tag=canpass,scores={random=1,random2=3}] ~ ~ ~ setblock ~ ~-2 ~15 wool 4

execute @s[tag=canpass,scores={random=2,random2=1}] ~ ~ ~ setblock ~ ~-2 ~-5 wool 4
execute @s[tag=canpass,scores={random=2,random2=2}] ~ ~ ~ setblock ~ ~-2 ~-10 wool 4
execute @s[tag=canpass,scores={random=2,random2=3}] ~ ~ ~ setblock ~ ~-2 ~-15 wool 4

execute @s[tag=canpass,scores={random=3,random2=1}] ~ ~ ~ setblock ~5 ~-2 ~ wool 4
execute @s[tag=canpass,scores={random=3,random2=2}] ~ ~ ~ setblock ~10 ~-2 ~ wool 4
execute @s[tag=canpass,scores={random=3,random2=3}] ~ ~ ~ setblock ~15 ~-2 ~ wool 4

execute @s[tag=canpass,scores={random=4,random2=1}] ~ ~ ~ setblock ~-5 ~-2 ~ wool 4
execute @s[tag=canpass,scores={random=4,random2=2}] ~ ~ ~ setblock ~-10 ~-2 ~ wool 4
execute @s[tag=canpass,scores={random=4,random2=3}] ~ ~ ~ setblock ~-15 ~-2 ~ wool 4



// CAN'T PASS ET ANIMATION

playanimation @s[tag=canpass] animation.wave.neowheel_move
playanimation @s[tag=canpass,scores={random2=2}] animation.wave.neowheel_move2
playanimation @s[tag=canpass,scores={random2=3}] animation.wave.neowheel_move3
scoreboard players set @s[tag=!canpass] random 0
execute @s[tag=!canpass] ~ ~ ~ function entity/neowheel_move


// RESET

tag @s remove canpass
tag @s remove canmove2
tag @s remove canmove3



scoreboard players set @s nb_yg 0
execute @e[type=zedafox:yellowguy] ~ ~ ~ scoreboard players add @e[type=zedafox:neowheel] nb_yg 1
execute @s[scores={random4=1,nb_yg=0..5}] ~ ~ ~ particle zedafox:tiny_firework_yellow ~ ~ ~
execute @s[scores={random4=1,nb_yg=0..5}] ~ ~ ~ summon zedafox:yellowguy




