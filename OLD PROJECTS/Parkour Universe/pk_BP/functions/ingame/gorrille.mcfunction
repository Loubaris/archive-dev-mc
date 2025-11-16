execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ title @a subtitle §aNice job! §eShuffle Mode Unlocked
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ title @a title 
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ tp @a 15 89 13
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ scoreboard players set @a level 0
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ summon pk:shuffle "§eShuffle Mode" 10 89 7
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ structure load "clear" 0 219 0
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ structure load "clear" 0 219 64
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ kill @e[type=pk:msummoner]
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ kill @e[type=pk:bsummoner]
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ kill @e[type=minecart]
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ kill @e[type=pk:portal]
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ tag @a remove playing
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ tag @a add end
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ clear @a pk:restart
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=pk:gorrille,scores={life=4..},tag=!death] ~ ~ ~ kill @s