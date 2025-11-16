tp @s ~ ~ ~
scoreboard players random @s random 1 5

execute @s[family=!dummy,scores={random=1}] ~ ~ ~ tp @s ~ ~ ~0.08
execute @s[family=!dummy,scores={random=2}] ~ ~ ~ tp @s ~ ~ ~-0.08
execute @s[family=!dummy,scores={random=3}] ~ ~ ~ tp @s ~0.08 ~ ~
execute @s[family=!dummy,scores={random=4}] ~ ~ ~ tp @s ~-0.08 ~ ~
execute @s[family=!dummy,scores={random=5}] ~ ~ ~ tp @s ~ ~0.12 ~


execute @s[scores={electrification=10}] ~ ~ ~ playsound electric @a ~ ~ ~
effect @s[family=!myzombie,scores={electrification=10}] instant_damage 1 0 true
effect @s[family=myzombie,scores={electrification=10}] instant_damage 1 1 true
effect @s[scores={electrification=9}] instant_damage 0 0

scoreboard players remove @s electrification 1

particle zedafox:electricity1 ~ ~1 ~

playanimation @s[family=dummy] animation.wave.frozen
playanimation @s[type=zedafox:robot] animation.wave.frozen

//

event entity @e[type=zedafox:electricity,r=1] to_death