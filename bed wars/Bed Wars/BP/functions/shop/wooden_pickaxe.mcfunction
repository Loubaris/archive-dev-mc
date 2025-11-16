execute @p[hasitem={item=iron_ingot,quantity=16..},r=5] ~ ~ ~ give @s wooden_pickaxe 1 0 {"keep_on_death":{}}
execute @p[hasitem={item=iron_ingot,quantity=16..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=iron_ingot,quantity=..15},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=iron_ingot,quantity=..15},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[hasitem={item=iron_ingot,quantity=16..},r=5] ~ ~ ~ clear @s iron_ingot 0 16
dialogue open @s @initiator tools