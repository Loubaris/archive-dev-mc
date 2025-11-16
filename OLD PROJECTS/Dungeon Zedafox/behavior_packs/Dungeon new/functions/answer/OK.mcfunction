tellraw @a {"rawtext":[{"text":"§8[ §cYou§8 ]: §fOK!"}]}

scoreboard players set @e[type=zedafox:character1,name=kaley] dialog 15
execute @e[type=zedafox:character1,name=kaley] ~ ~ ~ function dialog

scoreboard players set @a forced 0

//

function objective/reset
tag @e[type=zedafox:help] remove lovewaiting