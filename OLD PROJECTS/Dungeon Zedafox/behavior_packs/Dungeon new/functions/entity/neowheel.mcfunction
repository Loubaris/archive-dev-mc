execute @s[tag=is_broken] ~ ~ ~ function entity/neowheel_broken
scoreboard players add @s time 1

// REGARD

execute @s[scores={random=0}] ~ ~ ~ tp @s ~ ~ ~ facing @p


// DEPLACEMENT

execute @s[scores={random=1}] ~ ~ ~ tp @s ~ ~ ~0.45 0
execute @s[scores={random=2}] ~ ~ ~ tp @s ~ ~ ~-0.45 180
execute @s[scores={random=3}] ~ ~ ~ tp @s ~0.45 ~ ~ -90
execute @s[scores={random=4}] ~ ~ ~ tp @s ~-0.45 ~ ~ 90

// RESET

execute @s[scores={random=1}] ~ ~ ~ detect ~ ~-2 ~-0.5 wool 4 scoreboard players set @s random 0
execute @s[scores={random=2}] ~ ~ ~ detect ~ ~-2 ~0.5 wool 4 scoreboard players set @s random 0
execute @s[scores={random=3}] ~ ~ ~ detect ~-0.5 ~-2 ~ wool 4 scoreboard players set @s random 0
execute @s[scores={random=4}] ~ ~ ~ detect ~0.5 ~-2 ~ wool 4 scoreboard players set @s random 0

execute @s[scores={random=0}] ~ ~ ~ detect ~ ~-2 ~ wool 4 setblock ~ ~-2 ~ air


// RANDOM TIME

execute @s[scores={time=40,random3=2}] ~ ~ ~ function entity/neowheel_move
execute @s[scores={time=60,random3=3}] ~ ~ ~ function entity/neowheel_move
execute @s[scores={time=80,random3=4}] ~ ~ ~ function entity/neowheel_move
execute @s[scores={time=100,random3=5}] ~ ~ ~ function entity/neowheel_move
execute @s[scores={time=100,random3=0}] ~ ~ ~ function entity/neowheel_move

scoreboard players random @s[tag=!is_broken,scores={time=2}] random3 2 5
scoreboard players random @s[tag=is_broken,scores={time=2}] random3 1 2

scoreboard players set @s[scores={time=100,random3=0}] time 0
scoreboard players set @s[scores={time=20,random3=1}] time 0
scoreboard players set @s[scores={time=40,random3=2}] time 0
scoreboard players set @s[scores={time=60,random3=3}] time 0
scoreboard players set @s[scores={time=80,random3=4}] time 0
scoreboard players set @s[scores={time=100,random3=5}] time 0


// IS BROKEN

execute @s[tag=is_broken,scores={random=1..4,time=5}] ~ ~ ~ summon zedafox:electricity ~ ~ ~
execute @s[tag=is_broken,scores={random=1..4,time=10}] ~ ~ ~ summon zedafox:electricity ~ ~ ~
execute @s[tag=is_broken,scores={random=1..4,time=15}] ~ ~ ~ summon zedafox:electricity ~ ~ ~
execute @s[tag=is_broken,scores={random=1..4,time=20}] ~ ~ ~ summon zedafox:electricity ~ ~ ~
execute @s[tag=is_broken,scores={random=1..4,time=25}] ~ ~ ~ summon zedafox:electricity ~ ~ ~



// IS NOT DEAD

scoreboard players set @e[type=zedafox:help] deathboss 10
