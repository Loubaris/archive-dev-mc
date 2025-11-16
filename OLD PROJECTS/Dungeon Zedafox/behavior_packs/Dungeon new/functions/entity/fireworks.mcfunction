scoreboard players add @s time 1

scoreboard players random @s[tag=!verified] random 1 8
scoreboard players random @s[tag=!verified] random2 1 2

tag @s add verified

// FEU D'ARTIFICE

execute @s[scores={time=2}] ~ ~ ~ playsound firework.launch @a ~ ~ ~

execute @s[scores={time=40,random=1,random2=1}] ~ ~ ~ particle zedafox:firework_green ~ ~21 ~
execute @s[scores={time=40,random=2,random2=1}] ~ ~ ~ particle zedafox:firework_blue ~ ~21 ~
execute @s[scores={time=40,random=3,random2=1}] ~ ~ ~ particle zedafox:firework_red ~ ~21 ~
execute @s[scores={time=40,random=4,random2=1}] ~ ~ ~ particle zedafox:firework_yellow ~ ~21 ~
execute @s[scores={time=40,random=5,random2=1}] ~ ~ ~ particle zedafox:firework_pink ~ ~21 ~
execute @s[scores={time=40,random=6,random2=1}] ~ ~ ~ particle zedafox:firework_purple ~ ~21 ~
execute @s[scores={time=40,random=7,random2=1}] ~ ~ ~ particle zedafox:firework_darkblue ~ ~21 ~
execute @s[scores={time=40,random=8,random2=1}] ~ ~ ~ particle zedafox:firework_orange ~ ~21 ~

execute @s[scores={time=30,random=1,random2=2}] ~ ~ ~ particle zedafox:firework_green ~ ~12 ~
execute @s[scores={time=30,random=2,random2=2}] ~ ~ ~ particle zedafox:firework_blue ~ ~12 ~
execute @s[scores={time=30,random=3,random2=2}] ~ ~ ~ particle zedafox:firework_red ~ ~12 ~
execute @s[scores={time=30,random=4,random2=2}] ~ ~ ~ particle zedafox:firework_yellow ~ ~12 ~
execute @s[scores={time=30,random=5,random2=2}] ~ ~ ~ particle zedafox:firework_pink ~ ~12 ~
execute @s[scores={time=30,random=6,random2=2}] ~ ~ ~ particle zedafox:firework_purple ~ ~12 ~
execute @s[scores={time=30,random=7,random2=2}] ~ ~ ~ particle zedafox:firework_darkblue ~ ~12 ~
execute @s[scores={time=30,random=8,random2=2}] ~ ~ ~ particle zedafox:firework_orange ~ ~12 ~

execute @s[scores={time=40}] ~ ~ ~ execute @a ~ ~ ~ playsound firework.large_blast @s ~ ~ ~ 0.25 
effect @s[scores={time=40}] invisibility 5 5 true
effect @s[scores={time=30,random2=2}] invisibility 5 5 true
event entity @s[scores={time=40}] to_death