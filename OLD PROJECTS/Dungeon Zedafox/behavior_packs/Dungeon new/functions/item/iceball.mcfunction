execute @s ~ ~ ~ tp @s ^ ^ ^0.4

event entity @e[type=zedafox:myzombie,r=1.5] frozen
execute @e[type=zedafox:myzombie_frozen] ~ ~ ~ event entity @e[type=zedafox:iceball,r=1.5] to_death 