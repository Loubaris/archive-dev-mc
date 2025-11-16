execute @e[type=pk:msummoner,tag=dead] ~ ~ ~ kill @e[type=item,r=50]
execute @e[type=pk:msummoner,tag=dead] ~ ~ ~ summon minecart ~ ~ ~
execute @e[type=pk:msummoner,tag=dead] ~ ~ ~ tag @e[type=minecart,r=2] add tpminecart
execute @e[type=pk:msummoner,tag=dead] ~ ~ ~ tag @s remove dead

execute @e[type=minecart,tag=tpminecart] ~ ~ ~ tag @a[r=2] add tpplayer
execute @e[tag=tpminecart] ~ ~ ~ ride @p[tag=tpplayer,r=5] start_riding @s teleport_rider
execute @e[type=minecart,tag=tpminecart] ~ ~ ~ detect ~ ~-1 ~ stained_glass 14 title @p subtitle §aYou can now jump from the minecart!
execute @e[type=minecart,tag=tpminecart] ~ ~ ~ detect ~ ~-1 ~ stained_glass 14 title @p title §cJump!
execute @e[type=minecart,tag=tpminecart] ~ ~ ~ detect ~ ~-1 ~ stained_glass 14 tag @s remove tpplayer
execute @e[type=minecart,tag=tpminecart] ~ ~ ~ detect ~ ~-1 ~ stained_glass 14 tag @s remove tpminecart
