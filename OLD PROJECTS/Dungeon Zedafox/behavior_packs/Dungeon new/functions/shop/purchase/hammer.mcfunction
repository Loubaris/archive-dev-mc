execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..39}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..39}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=40..}] zedafox:hammer
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=40..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=40..}] {"rawtext":[{"text":"§aYou bought a §lHammer"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=40..}] coin 40


