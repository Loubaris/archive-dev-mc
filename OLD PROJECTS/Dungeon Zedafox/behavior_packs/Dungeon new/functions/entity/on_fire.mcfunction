execute @s[scores={fire=1}] ~ ~ ~ setblock ~ ~ ~ fire 0 keep
execute @s[scores={fire=2}] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air 0 replace fire
scoreboard players set @s[scores={fire=3}] fire 0

scoreboard players add @s[scores={fire=1..3}] fire 1