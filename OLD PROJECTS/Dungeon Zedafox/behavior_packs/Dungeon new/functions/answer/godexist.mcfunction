tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fIs God real?"}]}

scoreboard players set @e[type=zedafox:wizard] dialog 35
execute @e[type=zedafox:wizard] ~ ~ ~ function dialog

scoreboard players set @a forced 0