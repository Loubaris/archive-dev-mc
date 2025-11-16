scoreboard players set @a forced 0

//

tellraw @a {"rawtext":[{"text":"§cWrong!\n§7The answer was Motorcycle Race."}]}
playsound error @a

stopsound @a quiz
scoreboard players set @e[type=zedafox:help] cutscene8 700