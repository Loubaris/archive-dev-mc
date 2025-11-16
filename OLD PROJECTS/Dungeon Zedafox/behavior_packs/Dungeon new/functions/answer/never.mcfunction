tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fNever!"}]}

scoreboard players set @e[type=zedafox:boss] dialog 45
execute @e[type=zedafox:boss] ~ ~ ~ function dialog

execute @a ~ ~ ~ playsound chat @s ~ ~ ~ 0.5 1.5

scoreboard players set @a forced 0


// I KNOW WHAT YOU DID

tag @e[type=zedafox:help] remove screwup
tag @e[type=zedafox:help] add not-screwup
