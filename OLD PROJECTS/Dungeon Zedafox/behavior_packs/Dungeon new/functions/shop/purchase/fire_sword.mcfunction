execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..23}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..23}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=24..}] zedafox:firesword
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=24..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=24..}] {"rawtext":[{"text":"§aYou bought a §lFire Sword."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=24..}] coin 24


// NEXT OBJECTIVE

execute @p[x=375,y=108,z=471,scores={coin=24..}] ~ ~ ~ execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ scoreboard players set @e[name=kaley] dialog 90
execute @p[x=375,y=108,z=471,scores={coin=24..}] ~ ~ ~ execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ scoreboard players set @e[name=kaley] timedialog 1
execute @p[x=375,y=108,z=471,scores={coin=24..}] ~ ~ ~ execute @e[type=zedafox:help,tag=!purchased] ~ ~ ~ function shop/close
execute @p[x=375,y=108,z=471,scores={coin=24..}] ~ ~ ~ tag @e[type=zedafox:help] add purchased


