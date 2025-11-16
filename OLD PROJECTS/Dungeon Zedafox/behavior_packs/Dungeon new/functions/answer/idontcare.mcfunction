tellraw @a{"rawtext":[{"text":"§8[ §cYou§8 ]: §fI don't care."}]}

scoreboard players set @e[type=zedafox:character1,name=kaley] dialog 12
execute @e[type=zedafox:character1,name=kaley] ~ ~ ~ function dialog

// AUGMENTATION DE MECHANCETE

scoreboard players set @e[type=zedafox:help] kaleycrush 2
scoreboard players set @a forced 0