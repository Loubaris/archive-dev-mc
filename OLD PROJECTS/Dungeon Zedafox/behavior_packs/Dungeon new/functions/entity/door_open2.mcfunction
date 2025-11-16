stopsound @a

playanimation @s animation.wave.dooropen2
playsound woodopendoor @a
function transition/size0

execute @s[tag=door1] ~ ~ ~ tp @a 593.99 53 304.91 180 0
execute @s[tag=door2] ~ ~ ~ tp @a 412 118 484 -90 0

execute @s[tag=door1] ~ ~ ~ playsound ourhome @a
execute @s[tag=door2] ~ ~ ~ stopsound @a ourhome

scoreboard players set @e[type=zedafox:help] song 0
scoreboard players set @e[type=zedafox:help] musictime 0