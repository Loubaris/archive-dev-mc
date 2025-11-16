event entity @e[type=zedafox:camera] to_death
event entity @e[type=zedafox:cutscene] to_death

kill @e[type=zedafox:camera]
kill @e[type=zedafox:cutscene]
scoreboard players set @e[type=zedafox:help] cutscene 0
scoreboard players set @e[type=zedafox:help] noanswer 0
stopsound @a love
effect @e[family=character,name=!theblueman] invisibility 0 0
effect @a[tag=!OQP] clear
tag @e[type=zedafox:help] remove verified

// KILL

event entity @e[tag=fake1] to_death 
event entity @e[tag=fake2] to_death 

kill @e[tag=fake1]
kill @e[tag=fake2]
kill @e[tag=fake3]
kill @e[tag=fake4]
kill @e[tag=fake5]
kill @e[tag=fake6]
kill @e[type=zedafox:sandcastle]

event entity @e[name=bruno] allowname


// OTHERS

function character_tp3
tag @e[name=bruno] add chat
scoreboard players set @e[name=Bruno] dialog 97

execute @a ~ ~ ~ function load_inventory