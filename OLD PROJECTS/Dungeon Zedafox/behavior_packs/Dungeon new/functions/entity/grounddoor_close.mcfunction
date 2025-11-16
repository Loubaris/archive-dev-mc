playanimation @s[scores={time2=1}] animation.wave.grounddoor_close
execute @s[scores={time2=1}] ~ ~ ~ playsound grounddoor_close @a ~ ~ ~
execute @s[scores={time2=10}] ~ ~ ~ fill ~1 ~ ~1 ~-1 ~ ~-1 barrier 0 replace air

scoreboard players add @s time2 1

tag @s[scores={time2=12}] remove open
scoreboard players set @s[scores={time2=12}] time2 0