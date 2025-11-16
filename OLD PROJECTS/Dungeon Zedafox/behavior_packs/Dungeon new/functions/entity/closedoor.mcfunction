playanimation @s[scores={time2=1}] animation.wave.closedoor
execute @s[scores={time2=1}] ~ ~ ~ playsound opendoor @a ~ ~ ~
execute @s[scores={time2=10,side=1}] ~ ~ ~ fill ~1 ~2 ~ ~-1 ~ ~ stained_glass_pane 6
execute @s[scores={time2=10,side=2}] ~ ~ ~ fill ~ ~2 ~1 ~ ~ ~-1 stained_glass_pane 6

scoreboard players add @s time2 1

tag @s[scores={time2=30}] remove open
scoreboard players set @s[scores={time2=30..}] time2 0