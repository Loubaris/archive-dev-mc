execute @e[type=4ks:change] ~ ~ ~ function change
execute @e[type=4ks:change] ~ ~ ~ tp @s 2000000 0 200000
execute @e[type=4ks:change] ~ ~ ~ kill @s
scoreboard players add @e[scores={luck=0..}] time 1
execute @e[scores={time=5}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[scores={time=10..}] ~ ~ ~ kill @s