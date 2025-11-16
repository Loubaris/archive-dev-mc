execute @e[type=armor_stand,tag=distance] ~ ~ ~ tp @s ^ ^ ^1 facing @e[tag=d-owner]
scoreboard players add @e[type=armor_stand,tag=distance] distance 1
titleraw @a actionbar {"rawtext":[{"text":"La distance est de "},{"score":{"name":"@e[type=armor_stand,tag=distance]","objective":"distance"}},{"text":" bloc(s)"}]
execute @e[tag=d-owner] ~ ~ ~ kill @e[type=armor_stand,tag=distance,r=1] 