scoreboard players add @e[type=pk:csummoner] cocotime 1
scoreboard players add @e[type=pk:coconut] cocotime 1
execute @e[type=pk:coconut,scores={cocotime=35}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=pk:coconut,scores={cocotime=40}] ~ ~ ~ kill @s
execute @e[type=pk:csummoner,scores={cocotime=1}] ~ ~ ~ summon pk:coconut ~ ~ ~

execute @e[type=pk:csummoner,scores={cocotime=35}] ~ ~ ~ scoreboard players set @s cocotime 0
execute @e[type=pk:coconut] ~ ~ ~ execute @a[r=2] ~ ~ ~ effect @a[r=3] nausea 5 255 true