execute @p[hasitem={item=iron_ingot,quantity=10..},r=5] ~ ~ ~ give @s stone_sword 1 
execute @p[hasitem={item=iron_ingot,quantity=10..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=iron_ingot,quantity=..9},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=iron_ingot,quantity=..9},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[hasitem={item=iron_ingot,quantity=10..},r=5] ~ ~ ~ clear @s iron_ingot 0 10
dialogue open @s @initiator weapons