scoreboard players add @s cutscene13 1

//

execute @s[scores={cutscene13=2}] ~ ~ ~ function cutscene/raxly_death/scene1

execute @s[scores={cutscene13=4}] ~ ~ ~ scoreboard players set @e[type=zedafox:raxly_sad] dialog 99
execute @s[scores={cutscene13=4}] ~ ~ ~ scoreboard players set @e[type=zedafox:raxly_sad] timedialog 1

execute @s[scores={cutscene13=380}] ~ ~ ~ function transition/size6

execute @s[scores={cutscene13=420}] ~ ~ ~ function cutscene/raxly_death/scene4
execute @s[scores={cutscene13=430}] ~ ~ ~ tp @a 412 110 498 90 0
execute @s[scores={cutscene13=430}] ~ ~ ~ time set sunset

execute @s[scores={cutscene13=450}] ~ ~ ~ execute @a ~ ~ ~ function load_inventory
execute @s[scores={cutscene13=455}] ~ ~ ~ give @a[tag=owner] zedafox:crystal4
execute @s[scores={cutscene13=455}] ~ ~ ~ event entity @e[type=zedafox:raxly_sad] to_death


scoreboard players set @s[scores={cutscene13=460}] cutscene13 0


// SETBLOCK OPTIMIZATION

execute @s[scores={cutscene13=459}] ~ ~ ~ setblock 371 58 485 redstone_block
execute @s[scores={cutscene13=459}] ~ ~ ~ setblock 374 58 496 air