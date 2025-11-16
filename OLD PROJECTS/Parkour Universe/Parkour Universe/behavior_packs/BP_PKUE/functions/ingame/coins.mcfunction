execute @e[type=pk:piece] ~ ~ ~ execute @p[r=1] ~ ~ ~ execute @e[type=pk:piece,r=2] ~ ~ ~ particle pk:piece ~ ~ ~
execute @e[type=pk:piece] ~ ~ ~ execute @p[r=1] ~ ~ ~ scoreboard players add @p coins 1
execute @e[type=pk:piece] ~ ~ ~ execute @p[r=1] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§eCoins: §g"},{"score":{"name":"@s","objective":"coins"}}]}
execute @e[type=pk:piece] ~ ~ ~ execute @p[r=1] ~ ~ ~ playsound random.levelup @a[r=6]
execute @e[type=pk:piece] ~ ~ ~ execute @p[r=1] ~ ~ ~ tp @e[type=pk:piece,r=2] ~ ~-1000 ~
execute @a[scores={coins=10}] ~ ~ ~ summon pk:gravity
scoreboard players set @a[scores={coins=10}] coins 0

execute @e[type=pk:piece] ~ ~ ~ particle pk:piece_load ~ ~ ~

