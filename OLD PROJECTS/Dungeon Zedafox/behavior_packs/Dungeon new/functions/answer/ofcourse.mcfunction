tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fOf course!"}]}

scoreboard players set @e[type=zedafox:character2,name=julia] dialog 24
execute @e[type=zedafox:character2,name=julia] ~ ~ ~ function dialog

// A ECOUTER L'HISTOIRE

scoreboard players set @e[type=zedafox:help] heardstory 1