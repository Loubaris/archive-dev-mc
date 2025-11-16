scoreboard players set @e[type=zedafox:help] cutscene5 0

kill @e[type=zedafox:cutscene]
kill @e[type=zedafox:camera]

effect @a slowness 0 0
effect @a[tag=!OQP] invisibility 0 0

effect @e[family=character,name=!theblueman] invisibility 0 0 true

kill @e[family=text]
kill @e[tag=fake1]
kill @e[type=zedafox:map_zedafoxium]
kill @e[type=zedafox:boss]
kill @e[type=zedafox:character_inanimate]
kill @e[type=zedafox:character_inanimate2]
kill @e[type=zedafox:gravestone]

stopsound @a story

// FILL
 
fill 390 109 493 388 108 495 air 0 replace stone
fill 390 108 492 389 108 492 air 0 replace stone
fill 391 110 495 390 108 496 air 0 replace stone

tp @a 377 108 494 -90 0
time set day