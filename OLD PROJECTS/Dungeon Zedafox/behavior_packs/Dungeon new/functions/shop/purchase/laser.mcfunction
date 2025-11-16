execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..998}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..998}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=999..}] zedafox:soulsword
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=999..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=999..}] {"rawtext":[{"text":"§aYou bought a §lLaser."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=999..}] coin 10



