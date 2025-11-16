summon zedafox:acid_projectile
summon zedafox:acid_projectile
summon zedafox:acid_projectile
summon zedafox:acid_projectile
summon zedafox:acid_projectile
summon zedafox:acid_projectile
summon zedafox:acid_projectile
summon zedafox:acid_projectile

scoreboard players set @e[type=zedafox:acid_projectile,r=2] side 0
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 1
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 2
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 3
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 4
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 5
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 6
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 7
execute @r[type=zedafox:acid_projectile,r=2,scores={side=0}] ~ ~ ~ scoreboard players set @s side 8

execute @e[type=zedafox:acid_projectile,r=2,scores={side=1}] ~ ~ ~ tp @s ~ ~ ~ 0
execute @e[type=zedafox:acid_projectile,r=2,scores={side=2}] ~ ~ ~ tp @s ~ ~ ~ 45
execute @e[type=zedafox:acid_projectile,r=2,scores={side=3}] ~ ~ ~ tp @s ~ ~ ~ 90
execute @e[type=zedafox:acid_projectile,r=2,scores={side=4}] ~ ~ ~ tp @s ~ ~ ~ 135
execute @e[type=zedafox:acid_projectile,r=2,scores={side=5}] ~ ~ ~ tp @s ~ ~ ~ 180
execute @e[type=zedafox:acid_projectile,r=2,scores={side=6}] ~ ~ ~ tp @s ~ ~ ~ -90
execute @e[type=zedafox:acid_projectile,r=2,scores={side=7}] ~ ~ ~ tp @s ~ ~ ~ -45
execute @e[type=zedafox:acid_projectile,r=2,scores={side=8}] ~ ~ ~ tp @s ~ ~ ~ -135
