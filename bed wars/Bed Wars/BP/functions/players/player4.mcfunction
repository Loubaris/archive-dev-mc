execute @e[type=nitric:game,scores={counter=4..}] ~ ~ ~ tag @e[type=nitric:game] add 4players
execute @e[type=nitric:game,scores={counter=4..}] ~ ~ ~ playsound note.harp @a[r=10]
execute @e[type=nitric:game,scores={counter=4..}] ~ ~ ~ dialogue open @e[type=nitric:game] @p maps
execute @e[type=nitric:game,scores={counter=..3}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cThere aren't 4 players!"}]}
execute @e[type=nitric:game,scores={counter=..3}] ~ ~ ~ playsound note.bassattack @a[r=10]