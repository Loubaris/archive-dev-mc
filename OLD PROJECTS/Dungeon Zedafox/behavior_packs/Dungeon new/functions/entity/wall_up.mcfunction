playanimation @s[scores={time2=1}] animation.wave.wall_up
execute @s[scores={time2=1}] ~ ~ ~ playsound grounddoor_open @a ~ ~ ~

scoreboard players add @s time2 1

tag @s[scores={time2=12}] remove open
scoreboard players set @s[scores={time2=12}] time2 0