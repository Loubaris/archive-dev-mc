fill 1903 101 -93 1903 104 -96 zedafox:persona32
event entity @e[type=zedafox:acid_boss] is_down

// TALKYWALKY

scoreboard players set @e[type=zedafox:help] dialog 200
scoreboard players set @e[type=zedafox:help] timedialog 1

// TP JOUEUR

spawnpoint @a 1906 101 -95
execute @a[x=1906,y=101,z=-95,rm=2] ~ ~ ~ tp @s 1906 101 -95

// KILL

kill @e[type=zedafox:myzombie]
kill @e[type=zedafox:coin]
kill @e[type=zedafox:acid_box]


// REMOVE MUSIC

scoreboard players set @e[type=zedafox:help] musictime 0
