execute @s[tag=!is_awake,scores={time2=20}] ~ ~ ~ particle zedafox:z ~ ~ ~3 
execute @s[tag=!is_awake,scores={time2=20}] ~ ~ ~ particle zedafox:z ~ ~ ~-3 
scoreboard players add @s[tag=!is_awake] time2 1
scoreboard players add @s[tag=is_awake] time 1
execute @s ~ ~ ~ tp @s[tag=is_awake] ~ ~ ~ facing @p

// ATTACK

execute @s[scores={time=50}] ~ ~ ~ function event/acidboss/angry
event entity @s[scores={time=80}] skin1
execute @s[scores={time=60}] ~ ~ ~ function entity/acid_boss_projectile


execute @s[scores={time=130}] ~ ~ ~ playanimation @s animation.wave.acid_boss_down 
event entity @s[scores={time=130}] is_down
event entity @s[scores={time=130}] skin3
execute @s[scores={time=140}] ~ ~ ~ particle zedafox:acid_impact ~ ~-1.5 ~
execute @s[scores={time=140}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 0.7
execute @s[scores={time=140}] ~ ~ ~ playsound bucket.empty_lava @a ~ ~ ~ 1 1.5

execute @s[scores={time=200}] ~ ~ ~ playanimation @s animation.wave.acid_boss_up
execute @s[scores={time=205}] ~ ~ ~ particle zedafox:acid_impact ~ ~-1.5 ~
execute @s[scores={time=205}] ~ ~ ~ playsound bucket.fill_water @a ~ ~ ~ 1 0.7
execute @s[scores={time=205}] ~ ~ ~ playsound bucket.empty_lava @a ~ ~ ~ 1 1.5
event entity @s[scores={time=200}] is_up
event entity @s[scores={time=200}] skin1


// RESET

scoreboard players set @s[scores={time=230}] time 0
scoreboard players set @s[scores={time2=21}] time2 0



// IS NOT DEAD

scoreboard players set @e[type=zedafox:help] deathboss 10