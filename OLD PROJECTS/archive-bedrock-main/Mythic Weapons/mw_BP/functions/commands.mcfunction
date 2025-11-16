

scoreboard players add @p[tag=ice_wand,r=1] icetime 1
execute @p[tag=ice_wand,scores={icetime=1}] ~ ~ ~ playsound fire.ignite @p
execute @p[tag=ice_wand,scores={icetime=1}] ~ ~ ~ effect @p fire_resistance 5 255 true
execute @p[tag=ice_wand] ~ ~ ~ function fire
tag @p[tag=ice_wand,scores={icetime=25}] add removetimeone
tag @p[tag=ice_wand,scores={icetime=25}] remove ice_wand
scoreboard players set @p[tag=removetimeone,scores={icetime=25}] icetime 0
tag @p remove removetimeone
