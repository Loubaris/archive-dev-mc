playsound icesword @a ~ ~ ~ 
execute @e[family=monster,family=!frozen,c=1,r=9] ~ ~ ~ summon zedafox:ice_cube ~ ~0.5 ~
event entity @e[type=!player,c=1] frozen

execute @e[type=zedafox:dummy,r=4] ~ ~ ~ summon zedafox:ice_cube 