execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..15}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..15}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=16..}] diamond_sword
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=16..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=16..}] {"rawtext":[{"text":"§aYou bought a §lDiamond Sword."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=16..}] coin 16



// NEXT OBJECTIVE

execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ scoreboard players set @e[name=kaley] dialog 90
execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ scoreboard players set @e[name=kaley] timedialog 1
execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ function shop/close
tag @e[type=zedafox:help] add purchased