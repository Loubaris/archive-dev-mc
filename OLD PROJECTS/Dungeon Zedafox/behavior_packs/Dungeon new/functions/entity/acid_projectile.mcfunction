scoreboard players add @s time 1
tp @s ^-0.15 ^ ^
playanimation @s[scores={time=80}] animation.wave.disparition
event entity @s[scores={time=90..}] to_death
kill @s[scores={time=110..}]


effect @a[r=1] fatal_poison 1 255 true