execute @e[type=nitric:game,scores={counter=2..}] ~ ~ ~ tag @e[type=nitric:game] add 2players
execute @e[type=nitric:game,scores={counter=2..}] ~ ~ ~ playsound note.harp @a[r=10]
execute @e[type=nitric:game,scores={counter=2..}] ~ ~ ~ dialogue open @e[type=nitric:game] @p maps
execute @e[type=nitric:game,scores={counter=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cThere aren't 2 players!"}]}
execute @e[type=nitric:game,scores={counter=1}] ~ ~ ~ playsound note.bassattack @a[r=10]