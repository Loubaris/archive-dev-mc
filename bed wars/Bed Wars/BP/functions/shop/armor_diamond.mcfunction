execute @p[r=5,hasitem={item=emerald,quantity=16..}] ~ ~ ~ replaceitem entity @s slot.armor.legs 0 diamond_leggings 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=emerald,quantity=16..}] ~ ~ ~ replaceitem entity @s slot.armor.head 0 diamond_helmet 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=emerald,quantity=16..}] ~ ~ ~ replaceitem entity @s slot.armor.chest 0 diamond_chestplate 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=emerald,quantity=16..}] ~ ~ ~ replaceitem entity @s slot.armor.feet 0 diamond_boots 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=emerald,quantity=16..}] ~ ~ ~ playsound random.orb @s
execute @p[r=5,hasitem={item=emerald,quantity=..15}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[r=5,hasitem={item=emerald,quantity=..15}] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[r=5,hasitem={item=emerald,quantity=16..}] ~ ~ ~ clear @s emerald 0 16
dialogue open @s @initiator armor