tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fNot now."}]}

scoreboard players set @e[type=zedafox:character1,name=kaley] dialog 16
execute @e[type=zedafox:character1,name=kaley] ~ ~ ~ function dialog

scoreboard players set @a forced 0

tag @e[type=zedafox:help] add lovewaiting