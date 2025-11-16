scoreboard objectives add particle dummy
scoreboard objectives add tpportal dummy
tag @a[x=-447,y=70,z=-218,r=1.5,tag=!tp2] add tp1
tag @a[x=-4,y=156,z=-218,r=1.5,tag=!tp1] add tp2


scoreboard players add @a[tag=tp1] tpportal 1
effect @a[tag=tp1,scores={tpportal=1},tag=tp1] blindness 1 255 true
playsound mob.shulker.teleport @a[tag=tp1,scores={tpportal=10}]
tp @a[x=-447,y=70,z=-218,r=1.5,scores={tpportal=15},tag=tp1] -3 156 -215
tag @a[scores={tpportal=90},tag=tp1] remove tp1
scoreboard players set @a[scores={tpportal=90}] tpportal 0


scoreboard players add @a[tag=tp2] tpportal 1
effect @a[tag=tp2,scores={tpportal=1},tag=tp2] blindness 1 255 true
playsound mob.shulker.teleport @a[tag=tp2,scores={tpportal=10}]
tp @a[x=-4,y=156,z=-218,r=1.5,scores={tpportal=15},tag=tp2] -441 67 -218
tag @a[scores={tpportal=90},tag=tp2] remove tp2
scoreboard players set @a[scores={tpportal=90}] tpportal 0



particle nitric:teleportation -447 70.1 -218
particle nitric:teleportation -4 156.1 -218

particle nitric:fast -447 71.5 -218
particle nitric:fast -4 157.5 -218


