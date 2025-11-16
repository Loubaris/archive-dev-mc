tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fNo."}]}

scoreboard players set @a forced 0

scoreboard players add @e[type=zedafox:help] insist 1
scoreboard players set @e[type=zedafox:help,scores={insist=7}] insist 6

execute @e[type=zedafox:help,scores={insist=1}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 63
execute @e[type=zedafox:help,scores={insist=2}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 64
execute @e[type=zedafox:help,scores={insist=3}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 65
execute @e[type=zedafox:help,scores={insist=4}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 66
execute @e[type=zedafox:help,scores={insist=5}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 67
execute @e[type=zedafox:help,scores={insist=6}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 68

execute @e[name=grayson] ~ ~ ~ function dialog