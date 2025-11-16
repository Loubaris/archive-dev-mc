playanimation @s[scores={time2=1}] animation.wave.opendoor
execute @s[scores={time2=1}] ~ ~ ~ playsound closedoor @a ~ ~ ~
execute @s[scores={time2=25,side=1}] ~ ~ ~ fill ~1 ~2 ~ ~-1 ~ ~ air 0 replace stained_glass_pane 6
execute @s[scores={time2=25,side=2}] ~ ~ ~ fill ~ ~2 ~1 ~ ~ ~-1 air 0 replace stained_glass_pane 6

scoreboard players add @s time2 1

tag @s[scores={time2=30}] add open
scoreboard players set @s[scores={time2=30}] time2 0