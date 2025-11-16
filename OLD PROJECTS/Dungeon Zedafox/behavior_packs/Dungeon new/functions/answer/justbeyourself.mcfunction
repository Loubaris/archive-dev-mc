tellraw @a{"rawtext":[{"text":"§8[ §cYou§8 ]: §fBe yourself, it's the best thing to do."}]}

scoreboard players set @e[type=zedafox:character1,name=kaley] dialog 10
execute @e[type=zedafox:character1,name=kaley] ~ ~ ~ function dialog

// AUGMENTATION DE SYMPATISME

scoreboard players set @e[type=zedafox:help] kaleycrush 1
scoreboard players set @a forced 0