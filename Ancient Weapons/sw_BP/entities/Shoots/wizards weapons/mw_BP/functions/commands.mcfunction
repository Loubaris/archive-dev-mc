

scoreboard players add @p[r=1,tag=ice_wand] icetime 1
execute @p[tag=ice_wand,scores={icetime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=ice_wand,scores={icetime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=ice_wand,scores={icetime=1}] ~ ~ ~ say icee
tag @p[tag=ice_wand,scores={icetime=25}] add removetimeone
tag @p[tag=ice_wand,scores={icetime=25}] remove ice_wand
scoreboard players set @p[tag=removetimeone,scores={icetime=25}] icetime 0
tag @p remove removetimeone


scoreboard players add @p[r=1,tag=fire_wand] firetime 1
execute @p[tag=fire_wand,scores={firetime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=fire_wand,scores={firetime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=fire_wand,scores={firetime=1}] ~ ~ ~ say fiire
tag @p[tag=fire_wand,scores={firetime=25}] add removetimetwo
tag @p[tag=fire_wand,scores={firetime=25}] remove fire_wand
scoreboard players set @p[tag=removetimetwo,scores={firetime=25}] firetime 0
tag @p remove removetimetwo

scoreboard players add @p[r=1,tag=wind_wand] windtime 1
execute @p[tag=wind_wand,scores={windtime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=wind_wand,scores={windtime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=wind_wand,scores={windtime=1}] ~ ~ ~ say wind
tag @p[tag=wind_wand,scores={windtime=25}] add removetimethree
tag @p[tag=wind_wand,scores={windtime=25}] remove wind_wand
scoreboard players set @p[tag=removetimethree,scores={windtime=25}] windtime 0
tag @p remove removetimethree

scoreboard players add @p[r=1,tag=lightning_wand] lighttime 1
execute @p[tag=lightning_wand,scores={lighttime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=lightning_wand,scores={lighttime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=lightning_wand,scores={lighttime=1}] ~ ~ ~ say light
tag @p[tag=lightning_wand,scores={lighttime=25}] add removetimefour
tag @p[tag=lightning_wand,scores={lighttime=25}] remove lightning_wand
scoreboard players set @p[tag=removetimefour,scores={lighttime=25}] lighttime 0
tag @p remove removetimefour

scoreboard players add @p[r=1,tag=tnt_wand] tnttime 1
execute @p[tag=tnt_wand,scores={tnttime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=tnt_wand,scores={tnttime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=tnt_wand,scores={tnttime=1}] ~ ~ ~ say tnt
tag @p[tag=tnt_wand,scores={tnttime=25}] add removetime5
tag @p[tag=tnt_wand,scores={tnttime=25}] remove tnt_wand
scoreboard players set @p[tag=removetime5,scores={tnttime=25}] tnttime 0
tag @p remove removetime5

scoreboard players add @p[r=1,tag=gravity_wand] gravtime 1
execute @p[tag=gravity_wand,scores={gravtime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=gravity_wand,scores={gravtime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=gravity_wand,scores={gravtime=1}] ~ ~ ~ say grav
tag @p[tag=gravity_wand,scores={gravtime=25}] add removetime6
tag @p[tag=gravity_wand,scores={gravtime=25}] remove gravity_wand
scoreboard players set @p[tag=removetime6,scores={gravtime=25}] gravtime 0
tag @p remove removetime6