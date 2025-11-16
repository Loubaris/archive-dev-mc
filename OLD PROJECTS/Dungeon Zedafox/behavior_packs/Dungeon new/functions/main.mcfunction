// HELP MAIN

execute @e[type=zedafox:help] ~ ~ ~ function entity/help


// ENTITY - DUNGEONS

execute @e[type=zedafox:soul] ~ ~ ~ function soul
execute @e[family=frozen] ~ ~ ~ function entity/frozen
execute @e[family=monster,scores={fire=1..}] ~ ~ ~ function entity/on_fire

execute @e[type=zedafox:laser] ~ ~ ~ function laser/laser3

execute @e[family=pineapple] ~ ~ ~ function entity/pineapple
execute @e[type=zedafox:fireworks] ~ ~ ~ function entity/fireworks
execute @e[type=zedafox:wizard,tag=!verified4] ~ ~ ~ function entity/wizardspawn

scoreboard players remove @e[type=zedafox:wood_door,scores={door=1..}] door 1
scoreboard players remove @e[type=zedafox:wood_door2,scores={door=1..}] door 1


// PLAYER

execute @e[scores={electrification=1..10}] ~ ~ ~ function entity/electrification_player
execute @r[tag=!OQP] ~ ~ ~ function player/main
execute @a[tag=!OQP] ~ ~ ~ function player/main2


// ICE CUBE - A OPTIMISER

execute @e[type=zedafox:dummy_frozen] ~ ~ ~ scoreboard players set @e[type=zedafox:ice_cube,r=1.5] icecube 0
execute @e[type=zedafox:dummy_frozen] ~ ~ ~ tp @e[type=zedafox:ice_cube,c=1] ~ ~0.5 ~


// CUTSCENE

execute @e[family=camera] ~ ~ ~ function cutscene
execute @e[family=character] ~ ~ ~ function entity/character 
