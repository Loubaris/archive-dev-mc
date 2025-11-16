tellraw @a{"rawtext":[{"text":"§8[ §cYou§8 ]: §fOffer her a date, it will make her happy."}]}

scoreboard players set @e[type=zedafox:character1,name=kaley] dialog 11
execute @e[type=zedafox:character1,name=kaley] ~ ~ ~ function dialog

// AUGMENTATION DE LA GENTILLESSE

scoreboard players set @e[type=zedafox:help] kaleycrush 1

scoreboard players set @a forced 0