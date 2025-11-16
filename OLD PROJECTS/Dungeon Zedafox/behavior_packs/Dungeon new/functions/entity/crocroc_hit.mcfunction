effect @s[scores={hurt=1}] instant_damage 1 0 true
effect @s[scores={hurt=2}] instant_damage 0 0 true

scoreboard players set @s[scores={hurt=2}] hurt 0

event entity @e[type=zedafox:crocroc,r=1.3] to_death

playsound mob.fox.bite @s[scores={hurt=1}] ~ ~ ~ 1.3

scoreboard players add @s[scores={hurt=1..2}] hurt 1