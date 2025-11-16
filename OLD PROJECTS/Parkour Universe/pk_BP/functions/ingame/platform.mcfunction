scoreboard players add @e[tag=mouv_quatre] platformtime 1
playanimation @e[tag=mouv_quatre,scores={platformtime=1}] animation.platform.mouv_quatre
execute @e[tag=mouv_quatre,scores={platformtime=1}] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 barrier
execute @e[tag=mouv_quatre,scores={platformtime=12}] ~ ~ ~ fill ^1 ^-1 ^-1 ^ ^-1 ^-1 air
execute @e[tag=mouv_quatre,scores={platformtime=12}] ~ ~ ~ fill ^1 ^-1 ^1 ^ ^-1 ^ barrier
execute @e[tag=mouv_quatre,scores={platformtime=24}] ~ ~ ~ fill ^1 ^ ^-1 ^ ^-1 ^ air
execute @e[tag=mouv_quatre,scores={platformtime=24}] ~ ~ ~ fill ^1 ^-1 ^1 ^ ^-1 ^2 barrier
execute @e[tag=mouv_quatre,scores={platformtime=38}] ~ ~ ~ fill ^1 ^ ^1 ^ ^-1 ^ air
execute @e[tag=mouv_quatre,scores={platformtime=38}] ~ ~ ~ fill ^1 ^-1 ^2 ^ ^-1 ^3 barrier
execute @e[tag=mouv_quatre,scores={platformtime=54}] ~ ~ ~ fill ^1 ^-1 ^1 ^ ^-1 ^2 barrier
execute @e[tag=mouv_quatre,scores={platformtime=54}] ~ ~ ~ fill ^1 ^-1 ^3 ^ ^-1 ^3 air
execute @e[tag=mouv_quatre,scores={platformtime=67}] ~ ~ ~ fill ^1 ^-1 ^1 ^ ^-1 ^ barrier
execute @e[tag=mouv_quatre,scores={platformtime=67}] ~ ~ ~ fill ^1 ^-1 ^2 ^ ^-1 ^2 air
execute @e[tag=mouv_quatre,scores={platformtime=80}] ~ ~ ~ fill ^1 ^-1 ^1 ^ ^-1 ^1 air
scoreboard players set @e[tag=mouv_quatre,scores={platformtime=80}] platformtime 0

scoreboard players add @e[tag=ascenseur] platformtime 1
playanimation @e[tag=ascenseur,scores={platformtime=1}] animation.platform.two_block
execute @e[tag=ascenseur,scores={platformtime=1}] ~ ~ ~ effect @a[r=2] levitation 1 1 true
execute @e[tag=ascenseur,scores={platformtime=1}] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 barrier
execute @e[tag=ascenseur,scores={platformtime=18}] ~ ~ ~ fill ^1 ^ ^ ^ ^ ^-1 barrier
execute @e[tag=ascenseur,scores={platformtime=18}] ~ ~1 ~ effect @a[r=2] levitation 1 1 true
execute @e[tag=ascenseur,scores={platformtime=18}] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 air
execute @e[tag=ascenseur,scores={platformtime=29}] ~ ~ ~ fill ^1 ^ ^ ^ ^ ^-1 air
execute @e[tag=ascenseur,scores={platformtime=29}] ~ ~ ~ fill ^1 ^1 ^ ^ ^1 ^-1 barrier
execute @e[tag=ascenseur,scores={platformtime=29}] ~ ~2 ~ effect @a[r=2] levitation 1 1 true
execute @e[tag=ascenseur,scores={platformtime=40}] ~ ~ ~ fill ^1 ^1 ^ ^ ^1 ^-1 air
execute @e[tag=ascenseur,scores={platformtime=40}] ~ ~ ~ fill ^1 ^2 ^ ^ ^2 ^-1 barrier
execute @e[tag=ascenseur,scores={platformtime=50}] ~ ~ ~ fill ^1 ^2 ^ ^ ^2 ^-1 air
execute @e[tag=ascenseur,scores={platformtime=40}] ~ ~ ~ effect @a[r=15] levitation 0 0 true
execute @e[tag=ascenseur,scores={platformtime=50}] ~ ~ ~ fill ^1 ^1 ^ ^ ^1 ^-1 barrier
execute @e[tag=ascenseur,scores={platformtime=63}] ~ ~ ~ fill ^1 ^1 ^ ^ ^1 ^-1 air
execute @e[tag=ascenseur,scores={platformtime=63}] ~ ~ ~ fill ^1 ^ ^ ^ ^ ^-1 barrier
execute @e[tag=ascenseur,scores={platformtime=72}] ~ ~ ~ fill ^1 ^ ^ ^ ^ ^-1 air
scoreboard players set @e[tag=ascenseur,scores={platformtime=80}] platformtime 0

scoreboard players add @e[tag=fall,tag=fplatform] platformtime 1
execute @e[tag=fplatform,tag=!fall] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 barrier
execute @e[tag=fplatform] ~ ~ ~ execute @a[r=1.5] ~ ~ ~ playanimation @e[tag=!fall,tag=fplatform,r=3] animation.platform.crack
execute @e[tag=fplatform] ~ ~ ~ execute @a[r=1.5] ~ ~ ~ tag @e[tag=fplatform,tag=!fall,r=3] add fall
execute @e[tag=fplatform,tag=fall,scores={platformtime=12}] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 air
effect @e[tag=fplatform,tag=fall,scores={platformtime=19}] invisibility 100 255 true
playanimation @e[tag=fplatform,tag=fall,scores={platformtime=80}] animation.platform.appear
effect @e[tag=fplatform,tag=fall,scores={platformtime=80}] clear
execute @e[tag=fplatform,tag=fall,scores={platformtime=80}] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 barrier
tag @e[tag=fplatform,tag=fall,scores={platformtime=80}] remove fall
scoreboard players set @e[tag=fplatform,scores={platformtime=80}] platformtime 0

execute @e[type=pk:cloud] ~ ~ ~ execute @a[r=1.8] ~ ~ ~ playanimation @e[type=pk:cloud,r=1.5] animation.cloud.bounce
execute @e[type=pk:cloud] ~ ~ ~ execute @a[r=1.8] ~ ~ ~ particle pk:cloud_bounce ~ ~ ~
execute @e[type=pk:cloud] ~ ~ ~ tag @a[r=1.8] add bounce
scoreboard players add @a[tag=bounce] bouncetime 1
effect @a[tag=bounce,scores={bouncetime=1}] levitation 1 32 true
effect @a[tag=bounce,scores={bouncetime=6}] levitation 0 0 true
execute @a[tag=bounce,scores={bouncetime=6}] ~ ~ ~ tag @s remove bounce
scoreboard players set @a[scores={bouncetime=6}] bouncetime 0


execute @e[type=pk:ufo] ~ ~ ~ execute @a[r=1.5] ~ ~ ~ playanimation @e[type=pk:ufo,r=1.5] animation.ufo.bounce
execute @e[type=pk:ufo] ~ ~ ~ execute @a[r=1.5] ~ ~ ~ particle pk:ufo_bounce ~ ~ ~
execute @e[type=pk:ufo] ~ ~ ~ tag @a[r=1.5] add bounce
scoreboard players add @a[tag=bounce] bouncetime 1
effect @a[tag=bounce,scores={bouncetime=1}] levitation 1 28 true
effect @a[tag=bounce,scores={bouncetime=6}] levitation 0 0 true
execute @a[tag=bounce,scores={bouncetime=6}] ~ ~ ~ tag @s remove bounce
scoreboard players set @a[scores={bouncetime=6}] bouncetime 0


scoreboard players add @e[tag=rwall] platformtime 1
playanimation @e[tag=rwall,scores={platformtime=1}] animation.wall.spin
execute @e[tag=rwall,scores={platformtime=1}] ~ ~ ~ fill ^-1 ^ ^ ^-1 ^1 ^-1 air
execute @e[tag=rwall,scores={platformtime=1}] ~ ~ ~ fill ^1 ^ ^1 ^ ^1 ^1 barrier
execute @e[tag=rwall,scores={platformtime=40}] ~ ~ ~ fill ^1 ^ ^1 ^ ^1 ^1 air
execute @e[tag=rwall,scores={platformtime=40}] ~ ~ ~ fill ^-1 ^ ^ ^-1 ^1 ^-1 barrier
scoreboard players set @e[tag=rwall,scores={platformtime=80}] platformtime 0


execute @e[tag=bplatform] ~ ~ ~ fill ^1 ^-1 ^ ^ ^-1 ^-1 barrier