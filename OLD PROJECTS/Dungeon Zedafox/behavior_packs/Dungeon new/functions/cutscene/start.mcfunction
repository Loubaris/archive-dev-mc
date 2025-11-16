summon zedafox:cutscene
summon zedafox:camera
scoreboard players set @e[type=zedafox:help] cutscene 1

tag @e[family=character] remove chat

execute @a ~ ~ ~ function save_inventory


// FIX WIZARD BUG

scoreboard players set @e[type=zedafox:help] musictime 0
stopsound @a sneak
function objective/reset