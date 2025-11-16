// HELP MAIN

execute @e[type=zedafox:help] ~ ~ ~ function entity/help

// ENTITY - DUNGEONS

execute @e[type=zedafox:soul] ~ ~ ~ function soul
execute @e[family=frozen] ~ ~ ~ function entity/frozen
execute @e[family=monster,scores={fire=1..}] ~ ~ ~ function entity/on_fire

// PLAYER

execute @e[scores={electrification=1..10}] ~ ~ ~ function entity/electrification_player
execute @r[tag=!OQP] ~ ~ ~ function player/main
execute @a[tag=!OQP] ~ ~ ~ function player/main2