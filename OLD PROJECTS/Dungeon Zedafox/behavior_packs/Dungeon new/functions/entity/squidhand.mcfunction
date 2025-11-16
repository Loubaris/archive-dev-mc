execute @s ~ ~1 ~ event entity @e[type=zedafox:spaceship,r=1.5] to_death
execute @s ~ ~1 ~ tellraw @a[r=1.5,tag=!octopus-know] {"rawtext":[{"text":"§8[§c§l!§r§8] §7Use your §aLaser§7 to kill octopus."}]}
execute @s ~ ~1 ~ tag @a[r=1.5,tag=!octopus-know] add octopus-know
execute @s ~ ~1 ~ kill @a[r=1.5]


execute @s[tag=!verified] ~ ~ ~ playsound mob.squid.ambient @a
tag @s add verified