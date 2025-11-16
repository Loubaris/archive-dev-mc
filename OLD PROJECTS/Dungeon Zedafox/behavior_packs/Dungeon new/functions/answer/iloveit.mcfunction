tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fYeah, I love it!"}]}

scoreboard players set @e[name=grayson] dialog 49
execute @e[name=grayson] ~ ~ ~ function dialog

// LIKE CAKE?

scoreboard players set @e[type=zedafox:help] likecake 1

scoreboard players set @a forced 0