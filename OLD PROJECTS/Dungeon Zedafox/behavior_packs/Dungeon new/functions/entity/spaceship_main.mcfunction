execute @s[x=6024,y=56,z=2,r=1] ~ ~ ~ scoreboard players set @e[type=zedafox:help] locationtime1 30
execute @s[x=6038,y=58,z=-52,r=1] ~ ~ ~ scoreboard players set @e[type=zedafox:help] locationtime2 30
execute @s[x=6150,y=65,z=-37,r=1] ~ ~ ~ scoreboard players set @e[type=zedafox:help] locationtime3 30
execute @s[x=6144,y=66,z=-119,r=1] ~ ~ ~ scoreboard players set @e[type=zedafox:help] locationtime4 30
execute @s[x=6053,y=74,z=-119,r=1] ~ ~ ~ scoreboard players set @e[type=zedafox:help] locationtime5 30




// DESPAWN

scoreboard players set @s time3 11


// RIDE

scoreboard players set @s[tag=!verified2] time 1
execute @s[tag=!over] ~ ~ ~ ride @a[r=3] start_riding @s
execute @s[tag=!verified2,tag=shorttrip] ~ ~ ~ playsound spaceship_short @p
execute @s[tag=!verified2,tag=!shorttrip] ~ ~ ~ playsound spaceship @p
tag @s add verified2

execute @s ~ ~ ~ detect ~ ~-3 ~ wool 11 tag @s add over
execute @s ~ ~ ~ detect ~ ~-3 ~ wool 4 tag @s remove verified



execute @s ~ ~ ~ detect ~ ~-3 ~ wool 14 function entity/spaceship_start_deceleration

// SIDE

execute @s ~ ~ ~ detect ~ ~-3 ~ gold_block 0 scoreboard players set @s side 5
execute @s ~ ~ ~ detect ~ ~-3 ~ magenta_glazed_terracotta 3 scoreboard players set @s side 4
execute @s ~ ~ ~ detect ~ ~-3 ~ magenta_glazed_terracotta 2 scoreboard players set @s side 3
execute @s ~ ~ ~ detect ~ ~-3 ~ magenta_glazed_terracotta 4 scoreboard players set @s side 1
execute @s ~ ~ ~ detect ~ ~-3 ~ magenta_glazed_terracotta 5 scoreboard players set @s side 2

// SUMMON SQUIDHAND

execute @s[tag=!verified] ~ ~ ~ detect ~ ~-3 ~ wool 3 execute @e[type=zedafox:summoner_squidhand,c=1] ~ ~ ~ summon zedafox:squidhand_up ~ ~ ~
execute @s[tag=!verified] ~ ~ ~ detect ~ ~-3 ~ wool 3  execute @e[type=zedafox:squidhand_up,c=1] ~ ~ ~ tp @s ~ ~ ~ 90
execute @s[tag=!verified] ~ ~ ~ detect ~ ~-3 ~ wool 3  tag @s add verified