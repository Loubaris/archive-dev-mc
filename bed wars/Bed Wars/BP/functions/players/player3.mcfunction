execute @e[type=nitric:game,scores={counter=3..}] ~ ~ ~ tag @e[type=nitric:game] add 3players
execute @e[type=nitric:game,scores={counter=3..}] ~ ~ ~ playsound note.harp @a[r=10]
execute @e[type=nitric:game,scores={counter=3..}] ~ ~ ~ dialogue open @e[type=nitric:game] @p maps
execute @e[type=nitric:game,scores={counter=..2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cThere aren't 3 players!"}]}
execute @e[type=nitric:game,scores={counter=..2}] ~ ~ ~ playsound note.bassattack @a[r=10]