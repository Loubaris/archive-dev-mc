scoreboard players set @e[type=zedafox:help] cutscene3 0

kill @e[type=zedafox:cutscene]
kill @e[type=zedafox:camera]

effect @a slowness 0 0
effect @a[tag=!OQP] invisibility 0 0

tp @a 407 110 498 -90 0
tp @e[name=grayson] 412 110 498
effect @e[name=grayson] invisibility 0 0

kill @e[type=zedafox:blind]



// GIVE TALKYWALKY

give @a zedafox:talkywalky