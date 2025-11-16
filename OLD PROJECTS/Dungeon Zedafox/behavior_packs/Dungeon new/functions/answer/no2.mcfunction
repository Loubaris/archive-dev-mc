tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fNo."}]}

scoreboard players set @e[name=grayson] dialog 50
execute @e[name=grayson] ~ ~ ~ function dialog

// LIKE CAKE?

scoreboard players set @e[type=zedafox:help] likecake 2

scoreboard players set @a forced 0