tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fHell yeah!"}]}

scoreboard players set @e[type=zedafox:boss] dialog 47
execute @e[type=zedafox:boss] ~ ~ ~ function dialog

execute @a ~ ~ ~ playsound chat @s ~ ~ ~ 0.5 1.5

scoreboard players set @a forced 0


// I KNOW WHAT YOU DID

tag @e[type=zedafox:help] remove not-screwup
tag @e[type=zedafox:help] add screwup
scoreboard players set @e[type=zedafox:help] partner 1
