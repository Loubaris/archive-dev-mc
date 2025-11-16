scoreboard players add @s time 1
scoreboard players add @s time2 1
scoreboard players add @s[scores={time3=1..}] time3 1
scoreboard players add @s[scores={time4=1..}] time4 1
scoreboard players add @s[scores={time5=1..}] time5 1

tp @s ~ ~ ~ facing @p 

//

playanimation @s[scores={time=80}] animation.wave.just_tp
execute @s[scores={time=80}] ~ ~ ~ playsound teleport @a ~ ~ ~
execute @s[scores={time=80}] ~ ~ ~ particle zedafox:disc_white ~ ~ ~
execute @s[scores={time=85}] ~ ~ ~ tp @s @r[type=zedafox:raxly_tp,rm=1]
scoreboard players set @s[scores={time=85}] time 1


// ATTACK

scoreboard players random @s[scores={time2=180}] random3 1 3
scoreboard players set @s[scores={time2=181}] time2 0


scoreboard players set @s[scores={random3=1,time2=180}] time3 1
scoreboard players set @s[scores={random3=2,time2=180}] time4 1
scoreboard players set @s[scores={random3=3,time2=180}] time5 1


// PURPLE BOMB

execute @s[scores={time3=20}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact
execute @s[scores={time3=40}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact
execute @s[scores={time3=60}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact
execute @s[scores={time3=80}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact
execute @s[scores={time3=100}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact
execute @s[scores={time3=120}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact
execute @s[scores={time3=140}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:purplebomb ~ ~ ~ interact

scoreboard players set @s[scores={time3=150}] time3 0



// BUBBLE

execute @s[scores={time4=20}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:raxly_bubble ~ 114 ~
execute @s[scores={time4=60}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:raxly_bubble ~ 114 ~
execute @s[scores={time4=100}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:raxly_bubble ~ 114 ~
execute @s[scores={time4=140}] ~ ~ ~ execute @r[type=zedafox:raxly_tp] ~ ~ ~ summon zedafox:raxly_bubble ~ 114 ~

scoreboard players set @s[scores={time4=150}] time4 0



// CROCROC

execute @s[scores={time5=20}] ~ ~ ~ function event/crocroc_attack
execute @s[scores={time5=40}] ~ ~ ~ function event/crocroc_attack
execute @s[scores={time5=60}] ~ ~ ~ function event/crocroc_attack
execute @s[scores={time5=80}] ~ ~ ~ function event/crocroc_attack
execute @s[scores={time5=100}] ~ ~ ~ function event/crocroc_attack
execute @s[scores={time5=120}] ~ ~ ~ function event/crocroc_attack
execute @s[scores={time5=140}] ~ ~ ~ function event/crocroc_attack

scoreboard players set @s[scores={time5=150}] time5 0



// IS NOT DEAD

scoreboard players set @e[type=zedafox:help] deathboss 10