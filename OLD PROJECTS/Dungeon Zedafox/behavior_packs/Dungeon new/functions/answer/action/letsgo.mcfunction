function stop_talking

//

summon zedafox:elevator 423 110 498

// TELEPORT

execute @a[x=423,y=110,z=498,rm=2] ~ ~ ~ tp @s 423 111 498
fill 420 111 500 420 112 496 barrier
scoreboard players set @e[type=zedafox:help] dialog 202
scoreboard players set @e[type=zedafox:help] timedialog 1

scoreboard players set @e[type=zedafox:help] musictime 0
stopsound @a

//

scoreboard players set @a forced 0


// PLAYSOUND

playsound elevator @a
playsound transition @a

function objective/reset


// SETBLOCK - OPTIMIZATION

setblock 371 58 490 redstone_block