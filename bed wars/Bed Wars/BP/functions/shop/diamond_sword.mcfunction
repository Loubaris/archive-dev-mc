execute @p[hasitem={item=emerald,quantity=4..},r=5] ~ ~ ~ give @s diamond_sword 1
execute @p[hasitem={item=emerald,quantity=4..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=emerald,quantity=..3},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=emerald,quantity=..3},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[hasitem={item=emerald,quantity=4..},r=5] ~ ~ ~ clear @s emerald 0 4
dialogue open @s @initiator weapons