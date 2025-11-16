summon zedafox:acid_projectile ~ ~ ~
summon zedafox:acid_projectile ~ ~ ~
summon zedafox:acid_projectile ~ ~ ~
summon zedafox:acid_projectile ~ ~ ~

tag @r[type=zedafox:acid_projectile,r=1] add side1
tag @r[type=zedafox:acid_projectile,r=1,tag=!side1] add side2
tag @r[type=zedafox:acid_projectile,r=1,tag=!side1,tag=!side2] add side3
tag @r[type=zedafox:acid_projectile,r=1,tag=!side1,tag=!side2,tag=!side3] add side4

execute @e[type=zedafox:acid_projectile,r=1,tag=side1] ~ ~ ~ tp @s ~ ~ ~ 90
execute @e[type=zedafox:acid_projectile,r=1,tag=side2] ~ ~ ~ tp @s ~ ~ ~ 180
execute @e[type=zedafox:acid_projectile,r=1,tag=side3] ~ ~ ~ tp @s ~ ~ ~ -90