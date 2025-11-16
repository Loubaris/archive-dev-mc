execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..49}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..49}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=50..}] zedafox:blacksword
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=50..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=50..}] {"rawtext":[{"text":"§aYou bought a §lHeavy Sword."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=50..}] coin 50


