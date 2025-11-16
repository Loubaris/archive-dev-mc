tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fDo you know when the world will end and how?"}]}

scoreboard players set @e[type=zedafox:wizard] dialog 34
execute @e[type=zedafox:wizard] ~ ~ ~ function dialog

scoreboard players set @a forced 0