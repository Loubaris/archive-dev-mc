tellraw @a {"rawtext":[{"text":"§7§oYou don't give the crystals."}]}

scoreboard players set @e[type=zedafox:boss,scores={dialog=86}] dialog 88
scoreboard players set @e[type=zedafox:boss,scores={dialog=85}] dialog 89
execute @e[type=zedafox:boss] ~ ~ ~ function dialog

execute @a ~ ~ ~ playsound chat @s ~ ~ ~ 0.5 1.5

scoreboard players set @a forced 0
