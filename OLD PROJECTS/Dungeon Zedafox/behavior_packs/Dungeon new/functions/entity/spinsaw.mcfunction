scoreboard players add @s time 1

execute @s[scores={time=2}] ~ ~ ~ playanimation @s animation.wave.spinsaw
execute @s[scores={time=10}] ~ ~ ~ playsound spinsaw @a ~ ~ ~ 1 1.2

execute @s[scores={time=10..60}] ~ ~ ~ kill @a[r=1.5]

scoreboard players set @s[scores={time=160}] time 0