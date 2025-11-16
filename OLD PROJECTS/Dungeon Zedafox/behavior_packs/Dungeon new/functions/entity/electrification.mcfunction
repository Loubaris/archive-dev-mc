execute @s[tag=!verified] ~ ~ ~ playanimation @s animation.wave.orb_impact
event entity @s[tag=!verified] electrification
execute @s[tag=!verified] ~ ~ ~ scoreboard players set @a[r=1] electrification 10
tag @s add verified