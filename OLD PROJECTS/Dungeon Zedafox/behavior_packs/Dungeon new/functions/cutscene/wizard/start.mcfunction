scoreboard players set @e[type=zedafox:help] cutscene6 1

summon zedafox:cutscene
summon zedafox:camera

effect @a slowness 999999 3 true
effect @a invisibility 999999 1 true
effect @a night_vision 0 0

effect @e[type=zedafox:wizard] invisibility 99999 1 true
fill 450 65 541 450 65 543 air

summon zedafox:crystals 460 38 517
execute @e[type=zedafox:crystals] ~ ~ ~ tp @s ~ ~ ~ -90



clear @a[tag=!OQP]