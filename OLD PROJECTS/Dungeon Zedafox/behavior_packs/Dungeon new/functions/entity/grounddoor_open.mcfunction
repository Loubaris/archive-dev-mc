playanimation @s[scores={time2=1}] animation.wave.grounddoor_open
execute @s[scores={time2=1}] ~ ~ ~ playsound grounddoor_open @a ~ ~ ~
execute @s[scores={time2=5}] ~ ~ ~ fill ~1 ~ ~1 ~-1 ~ ~-1 air 0 replace barrier

scoreboard players add @s time2 1

tag @s[scores={time2=12}] add open
scoreboard players set @s[scores={time2=12}] time2 0