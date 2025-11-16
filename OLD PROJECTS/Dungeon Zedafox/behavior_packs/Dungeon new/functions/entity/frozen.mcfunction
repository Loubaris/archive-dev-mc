scoreboard players add @s frozen 1
playanimation @s[scores={frozen=100}] animation.wave.frozen
execute @s[scores={frozen=160}] ~ ~ ~ playsound random.glass @a ~ ~ ~
event entity @s[scores={frozen=160}] unfreeze

scoreboard players set @e[type=zedafox:ice_cube,r=1.5] icecube 0
tp @e[type=zedafox:ice_cube,c=1] ~ ~0.5 ~

// DIFFERENCE DE RAPIDITE DE DEGLACAGE - DUMMY

playanimation @s[family=dummy,scores={frozen=40}] animation.wave.frozen
execute @s[family=dummy,scores={frozen=100}] ~ ~ ~ playsound random.glass @a ~ ~ ~
event entity @s[family=dummy,scores={frozen=100}] unfreeze