playsound lastpunch @a
stopsound @a lastfight
scoreboard players set @e[type=zedafox:help] musictime 0

//

summon zedafox:cutscene 6166 116 17
summon zedafox:camera 6166 117 1

//

scoreboard players set @e[type=zedafox:help] cutscene13 1

effect @a slowness 999999 4 true
effect @a invisibility 99999 255 true



event entity @e[type=zedafox:raxly] to_death
event entity @e[type=zedafox:purplebomb] to_death
event entity @e[type=zedafox:raxly_bubble] to_death
event entity @e[type=zedafox:raxly_projectile] to_death
event entity @e[type=zedafox:crocroc] to_death

kill @e[type=zedafox:purplebomb]



execute @a ~ ~ ~ function save_inventory

// SETBLOCK OPTIMIZATION

setblock 374 58 488 air
setblock 374 58 490 air
setblock 374 58 492 air
setblock 374 58 494 air

setblock 374 58 496 air
setblock 371 58 485 redstone_block

