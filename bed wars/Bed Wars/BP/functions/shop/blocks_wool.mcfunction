execute @p[hasitem={item=iron_ingot,quantity=5..},r=5,tag=purple] ~ ~ ~ give @p purple_wool 16 0 
execute @p[hasitem={item=iron_ingot,quantity=5..},r=5,tag=yellow] ~ ~ ~ give @p yellow_wool 16 0 
execute @p[hasitem={item=iron_ingot,quantity=5..},r=5,tag=green] ~ ~ ~ give @p green_wool 16 0 
execute @p[hasitem={item=iron_ingot,quantity=5..},r=5,tag=red] ~ ~ ~ give @p red_wool 16 0 
execute @p[hasitem={item=iron_ingot,quantity=5..},r=5] ~ ~ ~ playsound random.orb @s
execute @p[hasitem={item=iron_ingot,quantity=..4},r=5] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[hasitem={item=iron_ingot,quantity=..4},r=5] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources!"}]}
execute @p[hasitem={item=iron_ingot,quantity=5..},r=5] ~ ~ ~ clear @s iron_ingot 0 5
dialogue open @s @p blocks