scoreboard players add @s time 1
tp @s ^ ^ ^0.35

// SORTIE DE L'ACID

execute @s[scores={time=1}] ~ ~ ~ playsound mob.axolotl.attack @a ~ ~ ~ 1 1
execute @s[scores={time=1}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 0.7
execute @s[scores={time=1}] ~ ~ ~ playsound bucket.fill_lava @a ~ ~ ~ 1 1.5

execute @s[scores={time=1}] ~ ~ ~ particle zedafox:acid_impact ~ ~ ~
execute @s[scores={time=1}] ~ ~ ~ particle zedafox:acid_impact ~ ~ ~
execute @s[scores={time=1}] ~ ~ ~ particle zedafox:acid_impact ~ ~ ~


execute @s[scores={time=20}] ~ ~ ~ playsound mob.axolotl.idle @a ~ ~5 ~ 1 0.7

// TOMBER DANS L'ACID

execute @s[scores={time=40}] ~ ~ ~ particle zedafox:acid_impact ~ ~ ~
execute @s[scores={time=40}] ~ ~ ~ particle zedafox:acid_impact ~ ~ ~
execute @s[scores={time=40}] ~ ~ ~ particle zedafox:acid_impact ~ ~ ~

execute @s[scores={time=40}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 0.7
execute @s[scores={time=40}] ~ ~ ~ playsound bucket.fill_lava @a ~ ~ ~ 1 1.5

event entity @s[scores={time=60..}] to_death
kill @s[scores={time=70..}]