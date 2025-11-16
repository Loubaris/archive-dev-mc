execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..25}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..25}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=26..}] zedafox:electricitysword
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=26..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=26..}] {"rawtext":[{"text":"§aYou bought an §lElectric Sword."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=26..}] coin 26


