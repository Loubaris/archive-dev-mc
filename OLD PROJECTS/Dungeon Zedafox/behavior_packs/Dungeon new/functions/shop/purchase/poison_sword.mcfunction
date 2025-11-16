execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..19}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..19}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=20..}] zedafox:poisonsword
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=20..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=20..}] {"rawtext":[{"text":"§aYou bought a §lPoison Sword."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=20..}] coin 20


// NEXT OBJECTIVE

execute @p[x=375,y=108,z=471,scores={coin=20..}] ~ ~ ~ execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ scoreboard players set @e[name=kaley] dialog 90
execute @p[x=375,y=108,z=471,scores={coin=20..}] ~ ~ ~ execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ scoreboard players set @e[name=kaley] timedialog 1
execute @p[x=375,y=108,z=471,scores={coin=20..}] ~ ~ ~ execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ function shop/close
execute @p[x=375,y=108,z=471,scores={coin=20..}] ~ ~ ~ tag @e[type=zedafox:help] add purchased


