playsound bucket.fill_water @a ~ ~ ~ 1 0.7
playsound bucket.empty_lava @a ~ ~ ~ 1 1.5
particle zedafox:acid_impact ~ ~ ~
event entity @s in_acid

playanimation @e[type=zedafox:myzombie,c=1,rm=2] animation.wave.sad