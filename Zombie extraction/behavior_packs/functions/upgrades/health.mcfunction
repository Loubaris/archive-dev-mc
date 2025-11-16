
execute @p[scores={health=7},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ tag @p[r=5] add health8
execute @p[scores={health=7},hasitem={item=emerald,quantity=127..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=7},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=7},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=7},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ clear @s emerald 0 96

execute @p[scores={health=6},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ tag @p[r=5] add health7
execute @p[scores={health=6},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=6},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=6},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=6},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ clear @s emerald 0 96

execute @p[scores={health=5},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ tag @p[r=5] add health6
execute @p[scores={health=5},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=5},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=5},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=5},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ clear @s emerald 0 80

execute @p[scores={health=4},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ tag @p[r=5] add health5
execute @p[scores={health=4},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=4},hasitem={item=emerald,quantity=..79},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=4},hasitem={item=emerald,quantity=..79},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=4},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ clear @s emerald 0 80

execute @p[scores={health=3},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ tag @p[r=5] add health4
execute @p[scores={health=3},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=3},hasitem={item=emerald,quantity=..79},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=3},hasitem={item=emerald,quantity=..79},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=3},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ clear @s emerald 0 80

execute @p[scores={health=2},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ tag @p[r=5] add health3
execute @p[scores={health=2},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=2},hasitem={item=emerald,quantity=..79},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=2},hasitem={item=emerald,quantity=..79},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=2},hasitem={item=emerald,quantity=80..},r=5] ~ ~ ~ clear @s emerald 0 64

execute @p[scores={health=1},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ tag @p[r=5] add health2
execute @p[scores={health=1},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=1},hasitem={item=emerald,quantity=..63},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=1},hasitem={item=emerald,quantity=..63},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=1},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ clear @s emerald 0 64

execute @p[scores={health=0},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ tag @p[r=5] add health1
execute @p[scores={health=0},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={health=0},hasitem={item=emerald,quantity=..64},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={health=0},hasitem={item=emerald,quantity=..63},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={health=0},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ clear @s emerald 0 64

scoreboard players set @p[r=5,tag=health1] health 1
scoreboard players set @p[r=5,tag=health2] health 2
scoreboard players set @p[r=5,tag=health3] health 3
scoreboard players set @p[r=5,tag=health4] health 4
scoreboard players set @p[r=5,tag=health5] health 5
scoreboard players set @p[r=5,tag=health6] health 6
scoreboard players set @p[r=5,tag=health7] health 7
scoreboard players set @p[r=5,tag=health8] health 8

tag @a[tag=health1] remove health1
tag @a[tag=health2] remove health2
tag @a[tag=health3] remove health3
tag @a[tag=health4] remove health4
tag @a[tag=health5] remove health5
tag @a[tag=health6] remove health6
tag @a[tag=health7] remove health7
tag @a[tag=health8] remove health8


dialogue open @s @p main
