tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fDo you know the future?"}]}

scoreboard players set @e[type=zedafox:wizard] dialog 33
execute @e[type=zedafox:wizard] ~ ~ ~ function dialog

scoreboard players set @a forced 0