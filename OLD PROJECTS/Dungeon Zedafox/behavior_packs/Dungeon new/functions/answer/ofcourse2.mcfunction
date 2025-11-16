tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fYeah, of course!"}]}

scoreboard players set @e[name=grayson] dialog 61
execute @e[name=grayson] ~ ~ ~ function dialog

scoreboard players set @a forced 0

execute @e[type=zedafox:help,scores={insist=1..5}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 69
execute @e[type=zedafox:help,scores={insist=6}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 70