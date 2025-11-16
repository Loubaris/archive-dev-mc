// TALKYWALKY

scoreboard players set @e[type=zedafox:help] dialog 203
scoreboard players set @e[type=zedafox:help] timedialog 1

// TP JOUEUR

execute @a[x=3065,y=78,z=0,rm=15] ~ ~ ~ tp @s 3057 77 3 -90 0
spawnpoint @a 3057 77 3

// SUMMON MUSHMAN_KING

summon zedafox:mushman_king_spawn 3065 77 0
execute @e[type=zedafox:mushman_king_spawn] ~ ~ ~ tp @s ~ ~ ~ 90

kill @e[type=zedafox:mushman]
event entity @e[type=zedafox:coin] to_death



// FILL

fill 3058 77 10 3058 81 10 zedafox:persona32 0 replace air
fill 3057 77 9 3057 81 9 zedafox:persona32 0 replace air
fill 3057 77 8 3057 81 8 zedafox:persona32 0 replace air
fill 3056 77 7 3056 81 7 zedafox:persona32 0 replace air
fill 3055 77 6 3055 81 6 zedafox:persona32 0 replace air
fill 3055 77 5 3055 81 5 zedafox:persona32 0 replace air
fill 3054 77 4 3054 81 4 zedafox:persona32 0 replace air
fill 3053 77 3 3053 81 3 zedafox:persona32 0 replace air
fill 3053 77 2 3053 81 2 zedafox:persona32 0 replace air
fill 3052 77 1 3052 81 1 zedafox:persona32 0 replace air
fill 3051 77 0 3051 81 0 zedafox:persona32 0 replace air
fill 3050 77 -1 3050 81 -1 zedafox:persona32 0 replace air
fill 3049 77 -2 3049 81 -2 zedafox:persona32 0 replace air
fill 3048 77 -3 3048 81 -3 zedafox:persona32 0 replace air