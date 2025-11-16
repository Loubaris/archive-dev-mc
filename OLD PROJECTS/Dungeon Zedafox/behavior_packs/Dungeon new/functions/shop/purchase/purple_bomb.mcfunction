execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=..17}] {"rawtext":[{"text":"§c§lWOOPS! §r§cYou don't have enough money!"}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound error @s[scores={coin=..17}] 

execute @p[x=375,y=108,z=471] ~ ~ ~ give @s[scores={coin=18..}] zedafox:purple_bomb_spawn_egg
execute @p[x=375,y=108,z=471] ~ ~ ~ playsound purchase @s[scores={coin=18..}]
execute @p[x=375,y=108,z=471] ~ ~ ~ tellraw @s[scores={coin=18..}] {"rawtext":[{"text":"§aYou bought a §lPurple Bomb."}]}
execute @p[x=375,y=108,z=471] ~ ~ ~ scoreboard players remove @s[scores={coin=18..}] coin 18



