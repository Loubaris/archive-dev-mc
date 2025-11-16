execute @e[type=pk:cannonball] ~ ~ ~ particle pk:oxygen5 ^ ^0.5 ^-1
execute @e[type=pk:cannonball] ~ ~ ~ tp @s ^ ^ ^0.45 facing @e[type=pk:gorrille]
execute @e[type=pk:cannonball] ~ ~ ~ scoreboard players add @e[type=pk:gorrille,r=4] life 1
execute @e[type=pk:cannonball] ~ ~ ~ execute @e[type=pk:gorrille,r=4] ~ ~ ~ execute @e[type=pk:cannonball,c=1,r=4] ~ ~ ~ particle pk:boulder ~ ~ ~
execute @e[type=pk:cannonball] ~ ~ ~ execute @e[type=pk:gorrille,r=4] ~ ~ ~ playanimation @s animation.gorrille.attack
execute @e[type=pk:cannonball] ~ ~ ~ execute @e[type=pk:gorrille,r=4] ~ ~ ~ playsound random.explode @a
execute @e[type=pk:cannonball] ~ ~ ~ execute @e[type=pk:gorrille,r=4] ~ ~ ~ execute @e[type=pk:cannonball,c=1,r=4] ~ ~ ~ kill @s