scoreboard players add @s time 1
playanimation @s[scores={time=10}] animation.wave.acid_charge
playanimation @s[scores={time=70}] animation.wave.acid_impact
execute @s[scores={time=75}] ~ ~ ~ function entity/acid_summon_projectile
execute @s[scores={time=75}] ~ ~ ~ playsound acid_shoot @a ~ ~ ~
execute @s[scores={time=75}] ~ ~ ~ playsound bucket.fill_lava @a ~ ~ ~ 1 1.5
scoreboard players set @s[scores={time=120}] time 0