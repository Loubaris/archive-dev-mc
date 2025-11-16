scoreboard objectives add time dummy
scoreboard players add @e[type=nitric:unicorn1_wings] time 1
scoreboard players add @e[type=nitric:unicorn2_wings] time 1
scoreboard players add @e[type=nitric:unicorn3_wings] time 1
scoreboard players add @e[type=nitric:unicorn1] time 1
scoreboard players add @e[type=nitric:unicorn2] time 1
scoreboard players add @e[type=nitric:unicorn3] time 1

execute @e[type=nitric:unicorn1_wings,scores={time=250}] ~ ~ ~ particle nitric:rainbow ~ ~ ~
execute @e[type=nitric:unicorn2_wings,scores={time=250}] ~ ~ ~ particle nitric:rainbow ~ ~ ~
execute @e[type=nitric:unicorn3_wings,scores={time=250}] ~ ~ ~ particle nitric:rainbow ~ ~ ~
execute @e[type=nitric:unicorn1_wings,scores={time=250}] ~ ~ ~ scoreboard players set @s time 0
execute @e[type=nitric:unicorn2_wings,scores={time=250}] ~ ~ ~ scoreboard players set @s time 0
execute @e[type=nitric:unicorn3_wings,scores={time=250}] ~ ~ ~ scoreboard players set @s time 0

execute @e[type=nitric:unicorn1,scores={time=250}] ~ ~ ~ particle nitric:rainbow ~ ~ ~
execute @e[type=nitric:unicorn2,scores={time=250}] ~ ~ ~ particle nitric:rainbow ~ ~ ~
execute @e[type=nitric:unicorn3,scores={time=250}] ~ ~ ~ particle nitric:rainbow ~ ~ ~
execute @e[type=nitric:unicorn1,scores={time=250}] ~ ~ ~ scoreboard players set @s time 0
execute @e[type=nitric:unicorn2,scores={time=250}] ~ ~ ~ scoreboard players set @s time 0
execute @e[type=nitric:unicorn3,scores={time=250}] ~ ~ ~ scoreboard players set @s time 0