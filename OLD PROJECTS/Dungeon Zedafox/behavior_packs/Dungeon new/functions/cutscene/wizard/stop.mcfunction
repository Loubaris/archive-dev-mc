scoreboard players set @e[type=zedafox:help] cutscene6 0

kill @e[type=zedafox:cutscene]
kill @e[type=zedafox:camera]

kill @e[type=zedafox:wizard2]
kill @e[type=zedafox:elevator_wizard]
kill @e[type=zedafox:crystals]
kill @e[type=zedafox:big_energy]
kill @e[family=text]

effect @a slowness 0 0
effect @a invisibility 0 0


stopsound @a ending2


effect @e[type=zedafox:wizard] invisibility 0 0
fill 450 65 541 450 65 543 carpet 14

// setblock

fill 449 64 541 450 64 543 beehive
setblock 451 64 543 planks 1
setblock 451 64 541 planks 1
setblock 451 64 542 barrel 1

playanimation @e[type=zedafox:3x3door] animation.wave.closedoor


// BUTTON

tag @e[type=zedafox:button] add ended
scoreboard players set @e[type=zedafox:button] time 0