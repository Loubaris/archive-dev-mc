

execute @p[scores={resistance=8},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ tag @p[r=5] add resistance9
execute @p[scores={resistance=8},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=8},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=8},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=8},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ clear @s emerald 0 96

execute @p[scores={resistance=7},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ tag @p[r=5] add resistance8
execute @p[scores={resistance=7},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=7},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=7},hasitem={item=emerald,quantity=..127},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=7},hasitem={item=emerald,quantity=128..},r=5] ~ ~ ~ clear @s emerald 0 96

execute @p[scores={resistance=6},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ tag @p[r=5] add resistance7
execute @p[scores={resistance=6},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=6},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=6},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=6},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ clear @s emerald 0 96

execute @p[scores={resistance=5},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ tag @p[r=5] add resistance6
execute @p[scores={resistance=5},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=5},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=5},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=5},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ clear @s emerald 0 80

execute @p[scores={resistance=4},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ tag @p[r=5] add resistance5
execute @p[scores={resistance=4},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=4},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=4},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=4},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ clear @s emerald 0 80

execute @p[scores={resistance=3},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ tag @p[r=5] add resistance4
execute @p[scores={resistance=3},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=3},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=3},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=3},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ clear @s emerald 0 80

execute @p[scores={resistance=2},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ tag @p[r=5] add resistance3
execute @p[scores={resistance=2},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=2},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=2},hasitem={item=emerald,quantity=..95},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=2},hasitem={item=emerald,quantity=96..},r=5] ~ ~ ~ clear @s emerald 0 64

execute @p[scores={resistance=1},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ tag @p[r=5] add resistance2
execute @p[scores={resistance=1},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=1},hasitem={item=emerald,quantity=..63},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=1},hasitem={item=emerald,quantity=..63},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=1},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ clear @s emerald 0 64

execute @p[scores={resistance=0},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ tag @p[r=5] add resistance1
execute @p[scores={resistance=0},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[scores={resistance=0},hasitem={item=emerald,quantity=..64},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[scores={resistance=0},hasitem={item=emerald,quantity=..63},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[scores={resistance=0},hasitem={item=emerald,quantity=64..},r=5] ~ ~ ~ clear @s emerald 0 64

scoreboard players set @p[r=5,tag=resistance1] resistance 1
scoreboard players set @p[r=5,tag=resistance2] resistance 2
scoreboard players set @p[r=5,tag=resistance3] resistance 3
scoreboard players set @p[r=5,tag=resistance4] resistance 4
scoreboard players set @p[r=5,tag=resistance5] resistance 5
scoreboard players set @p[r=5,tag=resistance6] resistance 6
scoreboard players set @p[r=5,tag=resistance7] resistance 7
scoreboard players set @p[r=5,tag=resistance8] resistance 8
scoreboard players set @p[r=5,tag=resistance9] resistance 9

tag @a[tag=resistance1] remove resistance1
tag @a[tag=resistance2] remove resistance2
tag @a[tag=resistance3] remove resistance3
tag @a[tag=resistance4] remove resistance4
tag @a[tag=resistance5] remove resistance5
tag @a[tag=resistance6] remove resistance6
tag @a[tag=resistance7] remove resistance7
tag @a[tag=resistance8] remove resistance8
tag @a[tag=resistance9] remove resistance9


dialogue open @s @p main
