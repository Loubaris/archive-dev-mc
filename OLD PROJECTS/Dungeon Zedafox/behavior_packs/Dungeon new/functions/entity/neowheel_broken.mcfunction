particle zedafox:oxygen5 ~ ~1.5 ~ 

// ONCE

playanimation @s[tag=!verified] animation.wave.neowheel_broken
execute @s[tag=!verified] ~ ~ ~ particle zedafox:explosion ~ ~ ~
execute @s[tag=!verified] ~ ~ ~ playsound steam @a ~ ~ ~
execute @s[tag=!verified] ~ ~ ~ playsound neowheel_boom @a ~ ~ ~
tag @s add verified