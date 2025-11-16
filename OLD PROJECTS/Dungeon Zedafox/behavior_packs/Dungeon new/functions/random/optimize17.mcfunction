// ACID SNAKE

scoreboard players add @s[scores={time3=1..}] time3 1
scoreboard players set @s[scores={time3=200}] time3 1



execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:acid_snake_head 1964.77 97.81 2.97
execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:acid_snake_head 1964.66 97.81 -2.02
execute @s[scores={time3=2}] ~ ~ ~ execute @e[type=zedafox:acid_snake_head,x=1964,y=98,z=0,r=8] ~ ~ ~ tp @s ~ ~ ~ -90

execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:acid_snake_head 1911 88 13
execute @s[scores={time3=2}] ~ ~ ~ execute @e[type=zedafox:acid_snake_head,x=1911,y=88,z=13,r=1] ~ ~ ~ tp @s ~ ~ ~ -90

execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:acid_snake_head 1881 96 2

execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:acid_snake_head 1882 99 -81.5
execute @s[scores={time3=60}] ~ ~ ~ summon zedafox:acid_snake_head 1884 99 -88
execute @s[scores={time3=120}] ~ ~ ~ summon zedafox:acid_snake_head 1875 99 -74
execute @s[scores={time3=60}] ~ ~ ~ execute @e[type=zedafox:acid_snake_head,x=1884,y=99,z=-88,r=1] ~ ~ ~ tp @s ~ ~ ~ 135
execute @s[scores={time3=120}] ~ ~ ~ execute @e[type=zedafox:acid_snake_head,x=1875,y=99,z=-74,r=1] ~ ~ ~ tp @s ~ ~ ~ -125