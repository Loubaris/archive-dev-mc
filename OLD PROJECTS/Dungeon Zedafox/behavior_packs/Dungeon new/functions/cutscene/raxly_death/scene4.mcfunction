event entity @e[type=zedafox:cutscene] to_death
event entity @e[type=zedafox:camera] to_death

tp @a 412 110 498 90 0
effect @a slowness 0 0
effect @a invisibility 0 0

function character_tp4
scoreboard players set @e[type=zedafox:help] dialog 213
scoreboard players set @e[type=zedafox:help] timedialog 1