playanimation @s[tag=!verified] animation.wave.soulspawn

scoreboard players add @s soul 1

particle zedafox:dust ~ ~0.5 ~
execute @s ~ ~ ~ tp @s[scores={soul=1..5}] ^ ^ ^0.01 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=6..10}] ^ ^ ^0.05 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=11..15}] ^ ^ ^0.1 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=16..20}] ^ ^ ^0.15 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=21..25}] ^ ^ ^0.2 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=26..30}] ^ ^ ^0.25 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=31..35}] ^ ^ ^0.3 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=36..40}] ^ ^ ^0.35 facing @p
execute @s ~ ~ ~ tp @s[scores={soul=40..}] ^ ^ ^0.4 facing @p

execute @s ~ ~ ~ execute @a[r=1] ~ ~ ~ xp 1 @a
execute @s ~ ~ ~ playsound mob.vex.death @a[r=1] ~ ~ ~ 0.05 1.3
execute @s ~ ~ ~ playsound random.pop @a[r=1] ~ ~ ~ 1 1.5
execute @a ~ ~ ~ execute @e[type=zedafox:soul,r=1] ~ ~ ~ particle zedafox:soul_impact1 ~ ~0.5 ~
execute @a ~ ~ ~ event entity @e[type=zedafox:soul,r=1] to_death

tag @s[scores={soul=2}] add verified