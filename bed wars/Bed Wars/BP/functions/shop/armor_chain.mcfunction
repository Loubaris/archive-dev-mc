execute @p[r=5,hasitem={item=iron_ingot,quantity=32..}] ~ ~ ~ replaceitem entity @s slot.armor.legs 0 chainmail_leggings 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=iron_ingot,quantity=32..}] ~ ~ ~ replaceitem entity @s slot.armor.head 0 chainmail_helmet 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=iron_ingot,quantity=32..}] ~ ~ ~ replaceitem entity @s slot.armor.chest 0 chainmail_chestplate 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=iron_ingot,quantity=32..}] ~ ~ ~ replaceitem entity @s slot.armor.feet 0 chainmail_boots 1 0 {"keep_on_death":{}}
execute @p[r=5,hasitem={item=iron_ingot,quantity=32..}] ~ ~ ~ playsound random.orb @s
execute @p[r=5,hasitem={item=iron_ingot,quantity=..31}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§cYou don't have enough resources"}]}
execute @p[r=5,hasitem={item=iron_ingot,quantity=..31}] ~ ~ ~ playsound block.turtle_egg.break @s
execute @p[r=5,hasitem={item=iron_ingot,quantity=32..}] ~ ~ ~ clear @s iron_ingot 0 32
dialogue open @s @initiator armor