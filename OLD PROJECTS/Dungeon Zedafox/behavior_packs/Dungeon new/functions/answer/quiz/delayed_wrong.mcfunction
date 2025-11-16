scoreboard players set @a forced 0

//

tellraw @a {"rawtext":[{"text":"§cWrong!\n§7The answer was: Because Zedafox got a Minecraft Bug."}]}
playsound error @a

//

stopsound @a quiz
scoreboard players set @e[type=zedafox:help] cutscene8 700