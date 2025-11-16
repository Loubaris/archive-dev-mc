scoreboard players add @e[type=pk:snowball,tag=falling] snowballtime 1
execute @e[tag=side1,tag=!fall] ~ ~ ~ tp @s ~ ~ ~-0.13
execute @e[tag=side2,tag=!fall] ~ ~ ~ tp @s ~ ~ ~0.13
execute @e[tag=side3,tag=!fall] ~ ~ ~ tp @s ~-0.13 ~ ~
execute @e[tag=side4,tag=!fall] ~ ~ ~ tp @s ~0.13 ~ ~
execute @e[tag=!falling,type=pk:snowball] ~ ~ ~ detect ~ ~-1 ~ air 0 playanimation @s animation.snowball.fall
execute @e[tag=!falling,type=pk:snowball] ~ ~ ~ detect ~ ~-1 ~ air 0 tag @s add fall
execute @e[tag=!falling,type=pk:snowball] ~ ~ ~ detect ~ ~-1 ~ air 0 tag @s add falling
execute @e[tag=falling,tag=side1] ~ ~ ~ tp @s ~ ~-0.23 ~-0.08
execute @e[tag=falling,tag=side2] ~ ~ ~ tp @s ~ ~-0.23 ~0.08
execute @e[tag=falling,tag=side3] ~ ~ ~ tp @s ~-0.08 ~-0.23 ~
execute @e[tag=falling,tag=side4] ~ ~ ~ tp @s ~0.08 ~-0.23 ~
effect @e[scores={snowballtime=59}] invisibility 10 10 true
kill @e[scores={snowballtime=60}]
execute @e[type=pk:snowball,tag=!falling] ~ ~1 ~ title @a actionbar §fOOPS!
execute @e[type=pk:snowball,tag=!falling] ~ ~1 ~ tag @a[r=2] add death
execute @e[type=pk:snowball,tag=!falling] ~ ~1.5 ~ tag @a[r=2.8] add death
execute @e[type=pk:snowball,tag=!falling] ~ ~ ~ particle pk:snow_poof ^ ^ ^-1

scoreboard players add @e[tag=side1,tag=!fall] snowanim 1
playanimation @e[tag=side1,scores={snowanim=1}] animation.snowball.spin_two
scoreboard players set @e[tag=side1,scores={snowanim=80}] snowanim 0

scoreboard players add @e[tag=side2,tag=!fall] snowanim 1
playanimation @e[tag=side2,scores={snowanim=1}] animation.snowball.spin
scoreboard players set @e[tag=side2,scores={snowanim=80}] snowanim 0

scoreboard players add @e[tag=side3] snowanim 1
playanimation @e[tag=side3,scores={snowanim=1}] animation.snowball.spin_four
scoreboard players set @e[tag=side3,scores={snowanim=80}] snowanim 0

scoreboard players add @e[tag=side4] snowanim 1
playanimation @e[tag=side4,scores={snowanim=1}] animation.snowball.spin_three
scoreboard players set @e[tag=side4,scores={snowanim=80}] snowanim 0

scoreboard players add @e[type=pk:ssummoner] snowsummoner 1
execute @e[type=pk:ssummoner,tag=sside1,scores={snowsummoner=1}] ~ ~ ~ summon pk:snowball ~ ~ ~
execute @e[type=pk:ssummoner,tag=sside1,scores={snowsummoner=1}] ~ ~ ~ tag @e[type=pk:snowball,r=3,c=1] add side1
execute @e[type=pk:ssummoner,tag=sside1,scores={snowsummoner=52..}] ~ ~ ~ scoreboard players set @s snowsummoner 0

execute @e[type=pk:ssummoner,tag=sside2,scores={snowsummoner=1}] ~ ~ ~ summon pk:snowball ~ ~ ~
execute @e[type=pk:ssummoner,tag=sside2,scores={snowsummoner=1}] ~ ~ ~ tag @e[type=pk:snowball,r=2] add side2
execute @e[type=pk:ssummoner,tag=sside2,scores={snowsummoner=52..}] ~ ~ ~ scoreboard players set @s snowsummoner 0

execute @e[type=pk:ssummoner,tag=sside3,scores={snowsummoner=1}] ~ ~ ~ summon pk:snowball ~ ~ ~
execute @e[type=pk:ssummoner,tag=sside3,scores={snowsummoner=1}] ~ ~ ~ tag @e[type=pk:snowball,r=2] add side3
execute @e[type=pk:ssummoner,tag=sside3,scores={snowsummoner=52..}] ~ ~ ~ scoreboard players set @s snowsummoner 0

execute @e[type=pk:ssummoner,tag=sside4,scores={snowsummoner=1}] ~ ~ ~ summon pk:snowball ~ ~ ~
execute @e[type=pk:ssummoner,tag=sside4,scores={snowsummoner=1}] ~ ~ ~ tag @e[type=pk:snowball,r=2] add side4
execute @e[type=pk:ssummoner,tag=sside4,scores={snowsummoner=52..}] ~ ~ ~ scoreboard players set @s snowsummoner 0


