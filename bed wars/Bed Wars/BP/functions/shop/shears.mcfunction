execute @p[hasitem={item=iron_ingot,quantity=20..},r=5] ~ ~ ~ give @s shears 1 0 {"keep_on_death":{}}
execute @p[hasitem={item=iron_ingot,quantity=20..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=iron_ingot,quantity=..19},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=iron_ingot,quantity=..19},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[hasitem={item=iron_ingot,quantity=20..},r=5] ~ ~ ~ clear @s iron_ingot 0 20
dialogue open @s @initiator tools