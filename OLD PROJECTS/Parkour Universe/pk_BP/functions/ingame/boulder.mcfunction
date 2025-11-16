scoreboard players add @e[type=pk:bsummoner] bouldertime 1

execute @e[type=pk:bsummoner,scores={bouldertime=70}] ~ ~ ~ summon pk:boulder_toss ~ ~15 ~

execute @e[type=pk:bsummoner,scores={bouldertime=71}] ~ ~ ~ scoreboard players set @s bouldertime 0

execute @e[type=pk:bsummoner] ~ ~ ~ execute @e[r=0.5,type=pk:boulder_toss] ~ ~ ~ particle pk:boulder ~ ~ ~
execute @e[type=pk:bsummoner] ~ ~ ~ execute @e[r=0.5,type=pk:boulder_toss] ~ ~ ~ tag @a[r=4] add death
execute @e[type=pk:bsummoner] ~ ~ ~ execute @e[r=0.5,type=pk:boulder_toss] ~ ~ ~ effect @s invisibility 100 255 true
execute @e[type=pk:bsummoner] ~ ~ ~ execute @e[r=0.5,type=pk:boulder_toss] ~ ~ ~ kill @s