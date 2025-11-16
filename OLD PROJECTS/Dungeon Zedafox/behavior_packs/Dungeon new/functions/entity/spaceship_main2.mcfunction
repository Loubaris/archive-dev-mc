execute @s[scores={time=1..}] ~ ~ ~ function entity/spaceship
execute @s[scores={time2=1..}] ~ ~ ~ function entity/spaceship_deceleration
scoreboard players remove @s[tag=over,scores={time3=-10..12}] time3 1
event entity @s[tag=over,scores={time3=-8}] to_death
playanimation @s[scores={time3=1..2}] animation.wave.spaceship_down