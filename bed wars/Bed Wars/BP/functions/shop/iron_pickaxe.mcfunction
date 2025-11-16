execute @p[hasitem={item=diamond,quantity=5..},r=5] ~ ~ ~ give @s iron_pickaxe 1 0 {"keep_on_death":{}}
execute @p[hasitem={item=diamond,quantity=5..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=diamond,quantity=..4},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=diamond,quantity=..4},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[hasitem={item=diamond,quantity=5..},r=5] ~ ~ ~ clear @s diamond 0 5
dialogue open @s @initiator tools