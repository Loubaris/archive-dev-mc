playanimation @e[type=pk:checkpoint,tag=!check] animation.checkpoint.off
execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ execute @a[r=4] ~ ~ ~ execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ particle pk:checkpoint ~ ~ ~
execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ execute @a[r=4,tag=!end] ~ ~ ~ scoreboard players add @a level 1
execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ execute @a[r=4,tag=!end] ~ ~ ~ tag @a[tag=playing] remove playing
execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ execute @a[r=4,tag=!end] ~ ~ ~ execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ tag @s add check
execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ execute @a[r=4,tag=end] ~ ~ ~ execute @e[type=pk:checkpoint,tag=!check] ~ ~ ~ tag @s add endcheck
scoreboard players add @e[type=pk:checkpoint,tag=check] checktime 1
execute @e[type=pk:checkpoint,tag=check,scores={checktime=1}] ~ ~ ~ title @a title 
execute @e[type=pk:checkpoint,tag=check,scores={checktime=39}] ~ ~ ~ scoreboard players set @a waittime 0
execute @e[type=pk:checkpoint,tag=check,scores={checktime=40}] ~ ~ ~ function ingame/nextlevel

execute @e[type=pk:checkpoint,tag=endcheck] ~ ~ ~ title @a title 
execute @e[type=pk:checkpoint,tag=endcheck] ~ ~ ~ tp @a 15 89 13
execute @e[type=pk:checkpoint,tag=endcheck] ~ ~ ~ tag @e[type=pk:shuffle] remove ingame
execute @e[type=pk:checkpoint,tag=endcheck] ~ ~ ~ tag @a remove playing
execute @e[type=pk:checkpoint,tag=endcheck] ~ ~ ~ kill @s

execute @e[type=pk:checkpoint] ~ ~ ~ particle pk:check_load ~ ~1 ~
execute @e[type=pk:shuffle] ~ ~ ~ particle pk:shuffle_load ~ ~1 ~
execute @e[type=pk:portal] ~ ~ ~ particle pk:portal_load ~ ~1 ~

execute @a ~ ~ ~ detect ~1 ~ ~ barrier 0 title @p actionbar §cYou can't go there!
execute @a ~ ~ ~ detect ~-1 ~ ~ barrier 0 title @p actionbar §cYou can't go there!
execute @a ~ ~ ~ detect ~ ~ ~1 barrier 0 title @p actionbar §cYou can't go there!
execute @a ~ ~ ~ detect ~ ~ ~1 barrier 0 title @p actionbar §cYou can't go there!


execute @e[type=pk:spawn] ~ ~ ~ scoreboard players add @a[r=5,scores={waittime=..25}] waittime 1
replaceitem entity @a[scores={waittime=23..}] slot.armor.head 0 air


execute @e[type=pk:double] ~ ~ ~ execute @p[r=1] ~ ~ ~ execute @e[type=pk:double,r=2] ~ ~ ~ particle pk:double ~ ~ ~
execute @e[type=pk:double] ~ ~ ~ execute @p[r=1] ~ ~ ~ give @p feather 1
execute @e[type=pk:double] ~ ~ ~ execute @p[r=1] ~ ~ ~ scoreboard players set @p doubleleft 3
execute @e[type=pk:double] ~ ~ ~ execute @p[r=1] ~ ~ ~ titleraw @s actionbar {"rawtext":[{"text":"§fDouble Jumps Left: §7"},{"score":{"name":"@s","objective":"doubleleft"}}]}
execute @e[type=pk:double] ~ ~ ~ execute @p[r=1.1] ~ ~ ~ playsound random.levelup @a[r=6]
execute @e[type=pk:double] ~ ~ ~ execute @p[r=1] ~ ~ ~ tp @e[type=pk:double,r=2] ~ ~-1000 ~

execute @e[type=pk:gravity] ~ ~ ~ execute @p[r=1] ~ ~ ~ execute @e[type=pk:gravity,r=2] ~ ~ ~ particle pk:gravity ~ ~ ~
execute @e[type=pk:gravity] ~ ~ ~ execute @p[r=1] ~ ~ ~ tag @s add rollback
execute @e[type=pk:gravity] ~ ~ ~ execute @p[r=1] ~ ~ ~ summon pk:roll_entity
execute @e[type=pk:gravity] ~ ~ ~ execute @p[r=1] ~ ~ ~ title @p actionbar §f§lRollbacks: §r§71
execute @e[type=pk:gravity] ~ ~ ~ execute @p[r=1.1] ~ ~ ~ playsound random.levelup @a[r=6]
execute @e[type=pk:gravity] ~ ~ ~ execute @p[r=1] ~ ~ ~ tp @e[type=pk:gravity,r=2] ~ ~-1000 ~



execute @a[dy=-20,y=40,dx=100,dz=100,x=-16,z=-6] ~ ~ ~ title @a actionbar §fOOPS!
execute @a[dy=-20,y=40,dx=100,dz=100,x=-16,z=-6] ~ ~ ~ tp @s 16 89 14


execute @a[dy=-50,y=247,dx=100,dz=100,x=-13,z=-10,scores={level=18}] ~ ~ ~ title @a actionbar §fOOPS!
execute @a[dy=-50,y=247,dx=100,dz=100,x=-13,z=-10,scores={level=18},tag=!rollback] ~ ~ ~ tag @a add death
execute @a[dy=-50,y=247,dx=100,dz=100,x=-13,z=-10,scores={level=18},tag=rollback] ~ ~ ~ tag @a add down
execute @a[dy=-50,y=247,dx=100,dz=100,x=-13,z=-10,scores={level=18},tag=!rollback] ~ ~ ~ tp @s @e[type=pk:spawn]

execute @a[dy=-50,y=195,dx=100,dz=100,x=-13,z=-10,tag=playing] ~ ~ ~ title @a actionbar §fOOPS!
execute @a[dy=-50,y=195,dx=100,dz=100,x=-13,z=-10,tag=playing,tag=!rollback] ~ ~ ~ tag @a add death
execute @a[dy=-50,y=195,dx=100,dz=100,x=-13,z=-10,tag=playing,tag=rollback] ~ ~ ~ tag @a add down
execute @a[dy=-50,y=195,dx=100,dz=100,x=-13,z=-10,tag=playing,tag=!rollback] ~ ~ ~ tp @s @e[type=pk:spawn]
execute @a[tag=rollback,tag=!down] ~ ~ ~ detect ~ ~-1 ~ air 0 tag @s add air
execute @a[tag=rollback,tag=!air,tag=!down] ~ ~ ~ tp @e[type=pk:roll_entity,c=1] ~ ~ ~
tag @a[tag=rollback,tag=air] remove air

execute @a[tag=rollback,tag=down] ~ ~ ~ tp @s @e[type=pk:roll_entity]
execute @a[tag=rollback,tag=down] ~ ~ ~ title @p actionbar §fYou had a rollback!
execute @a[tag=rollback,tag=down] ~ ~ ~ tp @e[type=pk:roll_entity,c=1] ~ ~-100 ~
execute @a[tag=rollback,tag=down] ~ ~ ~ kill @e[type=pk:roll_entity,c=1]
execute @a[tag=rollback,tag=down] ~ ~ ~ tag @s remove rollback
execute @a[tag=down] ~ ~ ~ tag @s remove down

replaceitem entity @a[tag=!rtimer,x=0,y=219,z=0,r=100] slot.hotbar 8 pk:restart


scoreboard players add @a[tag=rtimer] rtimer 1
execute @a[scores={rtimer=100}] ~ ~ ~ tag @s remove rtimer
execute @a[scores={rtimer=100}] ~ ~ ~ scoreboard players set @s rtimer 0


execute @a[tag=death] ~ ~ ~ kill @e[type=minecart,r=140]
execute @a[tag=death] ~ ~ ~ tag @e[type=pk:msummoner,r=140] add dead
execute @a[tag=death] ~ ~ ~ tp @s @e[type=pk:spawn]
execute @a[tag=death,scores={level=20}] ~ ~ ~ scoreboard players set @e[type=pk:gorrille] life 0
execute @a[tag=death,scores={level=20}] ~ ~ ~ tag @e[type=pk:cannon] remove boom
execute @a[tag=death] ~ ~ ~ tag @s remove death

execute @e[type=pk:shuffle,tag=!ingame] ~ ~ ~ execute @p[r=2] ~ ~ ~ kill @e[type=pk:spawn]
execute @e[type=pk:shuffle,tag=!ingame] ~ ~ ~ execute @p[r=2] ~ ~ ~ scoreboard players random @a level 1 17
execute @e[type=pk:shuffle,tag=!ingame] ~ ~ ~ execute @p[r=2] ~ ~ ~ function ingame/nextlevel
execute @e[type=pk:shuffle,tag=!ingame] ~ ~ ~ execute @p[r=2] ~ ~ ~ tag @e[type=pk:shuffle,r=2] add ingame

execute @a[tag=!join] ~ ~ ~ scoreboard objectives add jointime dummy
execute @a[tag=!join] ~ ~ ~ scoreboard players add @p jointime 1
tellraw @a[tag=!join,scores={jointime=210}] {"rawtext":[{"text":"§7[§fParkour Universe§7] §7- §fWelcome! There are 4 different parkour worlds, use your skills, and the many powerups to complete them. Every 10 coins you collect you get a random powerup. Will you be able to finish them?"}]}
tag @a[tag=!join,scores={jointime=210}] add join

execute @e[type=pk:portal] ~ ~ ~ execute @p[r=2] ~ ~ ~ scoreboard players set @a level 0
execute @e[type=pk:portal] ~ ~ ~ execute @p[r=2] ~ ~ ~ function ingame/nextlevel