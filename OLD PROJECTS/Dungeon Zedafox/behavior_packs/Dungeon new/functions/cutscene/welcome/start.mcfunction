scoreboard players set @e[type=zedafox:help] cutscene3 1

summon zedafox:cutscene 
summon zedafox:camera

effect @a slowness 999999 4 true
effect @a invisibility 999999 1 true

event entity @e[name=kaley] removename

effect @e[name=grayson] invisibility 40 1 true


// CLEAR TALKYWALKY

clear @a zedafox:talkywalky