// TALKYWALKY

scoreboard players set @e[type=zedafox:help] dialog 204
scoreboard players set @e[type=zedafox:help] timedialog 1

// TP JOUEUR

execute @a[x=4048,y=62,z=35,rm=5] ~ ~ ~ tp @s 4048 62 34

fill 4046 62 30 4048 64 30 zedafox:persona32
kill @e[type=zedafox:robot]
event entity @e[type=zedafox:coin] to_death

spawnpoint @a 4047 62 32