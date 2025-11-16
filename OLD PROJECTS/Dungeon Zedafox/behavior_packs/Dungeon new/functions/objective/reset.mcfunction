scoreboard objectives remove objective
scoreboard objectives add objective dummy

scoreboard players set @a objective2 0

// DIRECTION REMOVE

event entity @e[type=zedafox:direction] to_death
event entity @e[type=zedafox:direction2] to_death

kill @e[type=zedafox:direction]
kill @e[type=zedafox:direction2]

scoreboard players set @a direction 0
title @a actionbar §r


// SETBLOCK - OPTIMIZATION

setblock 371 58 488 air