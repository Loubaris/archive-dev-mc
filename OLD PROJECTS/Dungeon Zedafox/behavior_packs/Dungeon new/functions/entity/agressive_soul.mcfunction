playanimation @s[tag=!verified] animation.wave.soulspawn

scoreboard players add @s soul 1

particle zedafox:dust ~ ~0.5 ~
execute @s ~ ~ ~ tp @s ^ ^ ^0.3 facing @e[family=monster,c=1]

execute @e[family=monster] ~ ~ ~ execute @e[type=zedafox:agressive_soul,r=1] ~ ~ ~ particle zedafox:soul_impact1 ~ ~0.5 ~
execute @e[family=monster] ~ ~ ~ event entity @e[type=zedafox:agressive_soul,r=1] to_death
execute @s ~ ~ ~ kill @e[r=1,family=monster]

tag @s[scores={soul=2}] add verified