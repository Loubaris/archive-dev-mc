scoreboard players set @a forced 0

//

tellraw @a {"rawtext":[{"text":"§aCorrect!\n§7You passed the test!"}]}
playsound success @a

stopsound @a quiz
scoreboard players set @e[type=zedafox:help] cutscene8 700