execute @s[scores={time2=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:machine,rm=2,r=8] time2 2
playanimation @s[scores={time2=2}] animation.wave.machine_down2
execute @s[scores={time2=2}] ~ ~ ~ playsound grounddoor_open @a ~ ~ ~ 1 0.8
execute @s[scores={time2=5}] ~ ~ ~ fill ~ ~ ~ ~1 ~2 ~-1 air 0 replace barrier

scoreboard players add @s time2 1

tag @s[scores={time2=10}] remove open
scoreboard players set @s[scores={time2=10}] time2 0