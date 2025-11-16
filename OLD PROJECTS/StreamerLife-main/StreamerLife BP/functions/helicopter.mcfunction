scoreboard players set @s plane_tilt 0

execute @p ~ ~ ~ execute @s[rx=-70,rxm=-90] ~ ~ ~ scoreboard players set plane plane_tilt 5
execute @p ~ ~ ~ execute @s[rx=-35,rxm=-70] ~ ~ ~ scoreboard players set plane plane_tilt 4
execute @p ~ ~ ~ execute @s[rx=-10,rxm=-35] ~ ~ ~ scoreboard players set plane plane_tilt 3
execute @p ~ ~ ~ execute @s[rx=5,rxm=-10] ~ ~ ~ scoreboard players set plane plane_tilt 2
execute @p ~ ~ ~ execute @s[rx=75,rxm=6] ~ ~ ~ scoreboard players set plane plane_tilt 1
execute @p ~ ~ ~ execute @s[rx=90,rxm=75] ~ ~ ~ scoreboard players set plane plane_tilt 0

scoreboard players operation @s plane_tilt = plane plane_tilt


execute @s[scores={plane_tilt=5}] ~ ~ ~ effect @s levitation 1 15 true
execute @s[scores={plane_tilt=5}] ~ ~ ~ scoreboard players set @s plane_yvelocity 4


execute @s[scores={plane_tilt=4}] ~ ~ ~ effect @s levitation 1 9 true
execute @s[scores={plane_tilt=4}] ~ ~ ~ scoreboard players set @s plane_yvelocity 3
execute @s[scores={plane_tilt=3}] ~ ~ ~ effect @s[scores={plane_yvelocity=3..}] levitation 0 0
execute @s[scores={plane_tilt=3}] ~ ~ ~ effect @s levitation 1 5 true
execute @s[scores={plane_tilt=3}] ~ ~ ~ scoreboard players set @s plane_yvelocity 2
execute @s[scores={plane_tilt=2}] ~ ~ ~ effect @s[scores={plane_yvelocity=2..}] levitation 0 0
execute @s[scores={plane_tilt=2}] ~ ~ ~ effect @s levitation 1 2 true
execute @s[scores={plane_tilt=2}] ~ ~ ~ scoreboard players set @s plane_yvelocity 1
execute @s[scores={plane_tilt=2..5}] ~ ~ ~ effect @s slow_falling 0 0 true


execute @s[scores={plane_tilt=0..1}] ~ ~ ~ effect @s levitation 0 0 true
execute @s[scores={plane_tilt=1}] ~ ~ ~ effect @s slow_falling 1 0 true
execute @s[scores={plane_tilt=0}] ~ ~ ~ effect @s slow_falling 0 0 true

function helicopterslowness