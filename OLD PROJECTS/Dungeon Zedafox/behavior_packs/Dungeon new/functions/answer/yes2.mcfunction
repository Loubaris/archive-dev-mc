tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fYes."}]}

scoreboard players set @e[name=grayson] dialog 61
execute @e[name=grayson] ~ ~ ~ function dialog

scoreboard players set @a forced 0

execute @e[type=zedafox:help,scores={insist=1..5}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 69
execute @e[type=zedafox:help,scores={insist=6}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 70


// EASTER EGG - MONEY

execute @e[type=zedafox:help,scores={insist=5}] ~ ~ ~ scoreboard players set @a coin 24
execute @e[type=zedafox:help,scores={insist=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§o§7Grayson gave you 24 coins."}]}
execute @e[type=zedafox:help,scores={insist=5}] ~ ~ ~ playsound purchase @a