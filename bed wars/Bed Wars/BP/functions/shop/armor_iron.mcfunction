execute @p[r=5,hasitem={item=diamond,quantity=9..}] ~ ~ ~ replaceitem entity @s slot.armor.legs 0 iron_leggings 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=diamond,quantity=9..}] ~ ~ ~ replaceitem entity @s slot.armor.head 0 iron_helmet 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=diamond,quantity=9..}] ~ ~ ~ replaceitem entity @s slot.armor.chest 0 iron_chestplate 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=diamond,quantity=9..}] ~ ~ ~ replaceitem entity @s slot.armor.feet 0 iron_boots 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=diamond,quantity=9..}] ~ ~ ~ playsound random.orb @s
execute @p[r=5,hasitem={item=diamond,quantity=..8}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[r=5,hasitem={item=diamond,quantity=..8}] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[r=5,hasitem={item=diamond,quantity=9..}] ~ ~ ~ clear @s diamond 0 9
dialogue open @s @initiator armor