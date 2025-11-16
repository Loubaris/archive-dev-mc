execute @p[hasitem={item=diamond,quantity=1..},r=5] ~ ~ ~ give @p planks 4 0 
execute @p[hasitem={item=diamond,quantity=1..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=diamond,quantity=..0},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=diamond,quantity=..0},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[hasitem={item=diamond,quantity=1..},r=5] ~ ~ ~ clear @s diamond 0 1
dialogue open @s @p blocks