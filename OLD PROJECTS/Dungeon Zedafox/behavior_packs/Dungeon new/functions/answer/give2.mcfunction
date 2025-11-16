tellraw @a {"rawtext":[{"text":"§7§oYou tried to give the crystals, but..."}]}

scoreboard players set @e[type=zedafox:help] dialog 207
scoreboard players set @e[type=zedafox:help] timedialog 1

execute @a ~ ~ ~ playsound chat @s ~ ~ ~ 0.5 1.5

scoreboard players set @a forced 0
