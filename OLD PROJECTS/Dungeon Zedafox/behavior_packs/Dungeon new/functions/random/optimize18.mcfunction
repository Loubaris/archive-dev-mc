// SUMMON SQUID HAND

scoreboard players add @s[scores={time3=1..}] time3 1
scoreboard players set @s[scores={time3=300}] time3 1



execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:squidside_spawn 6027 55 24
execute @s[scores={time3=2}] ~ ~ ~ execute @e[type=zedafox:squidside_spawn,x=6027,y=55,z=24,r=2] ~ ~ ~ tp @s ~ ~ ~ 180

execute @s[scores={time3=150}] ~ ~ ~ summon zedafox:squidside_spawn 6017 58 15
execute @s[scores={time3=150}] ~ ~ ~ execute @e[type=zedafox:squidside_spawn,x=6017,y=58,z=15,r=2] ~ ~ ~ tp @s ~ ~ ~ -90

execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:squidside_spawn 6024 61 -60

execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:squidside_spawn 6124 68 -58

execute @s[scores={time3=2}] ~ ~ ~ summon zedafox:squidside_spawn 6159 67 -97
execute @s[scores={time3=2}] ~ ~ ~ execute @e[type=zedafox:squidside_spawn,x=6159,y=67,z=-97,r=2] ~ ~ ~ tp @s ~ ~ ~ 90
execute @s[scores={time3=150}] ~ ~ ~ summon zedafox:squidside_spawn 6141 67 -97
execute @s[scores={time3=150}] ~ ~ ~ execute @e[type=zedafox:squidside_spawn,x=6141,y=67,z=-97,r=2] ~ ~ ~ tp @s ~ ~ ~ -90



// LOCATION SPACESHIP

scoreboard players remove @s[scores={locationtime1=1..60}] locationtime1 1
scoreboard players remove @s[scores={locationtime2=1..60}] locationtime2 1
scoreboard players remove @s[scores={locationtime3=1..60}] locationtime3 1
scoreboard players remove @s[scores={locationtime4=1..60}] locationtime4 1
scoreboard players remove @s[scores={locationtime5=1..60}] locationtime5 1

execute @s[scores={locationtime1=1}] ~ ~ ~ summon zedafox:spaceship 6024 56 2
execute @s[scores={locationtime2=1}] ~ ~ ~ summon zedafox:spaceship 6038 58 -52
execute @s[scores={locationtime3=1}] ~ ~ ~ summon zedafox:spaceship 6150 65 -37
execute @s[scores={locationtime4=1}] ~ ~ ~ summon zedafox:spaceship 6144 66 -119
execute @s[scores={locationtime5=1}] ~ ~ ~ summon zedafox:spaceship 6053 74 -119