tellraw @a{"rawtext":[{"text":"§8[ §cYou§8 ]: §fNice to meet you!"}]}

playanimation @e[type=zedafox:character1,name=Bruno] animation.wave.happy2
scoreboard players set @e[type=zedafox:character1,name=Bruno] dialog 8
execute @e[type=zedafox:character1,name=Bruno] ~ ~ ~ function dialog