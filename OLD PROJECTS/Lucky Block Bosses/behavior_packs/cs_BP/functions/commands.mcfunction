execute @e[type = item, name = resource] ~ ~ ~ summon villager ~ ~ ~
kill @e[type = item, name = resource]
execute @e[type = item, name = giant_zombie] ~ ~ ~ summon cs:giant_zombie ~ ~ ~
kill @e[type = item, name = giant_zombie]
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
execute @e[type = item, name = bats] ~ ~ ~ summon bat ~ ~ ~
kill @e[type = item, name = bats]
execute @e[type = item, name = charged] ~ ~ ~ summon creeper ~ ~ ~ minecraft:become_charged
kill @e[type = item, name = charged]
execute @e[type = item, name = cake] ~ ~ ~ setblock ~ ~ ~ cake
kill @e[type = item, name = cake]
execute @e[type = item, name = cows] ~ ~ ~ summon cow ~ ~ ~
execute @e[type = item, name = cows] ~ ~ ~ summon cow ~ ~ ~
execute @e[type = item, name = cows] ~ ~ ~ summon cow ~ ~ ~
execute @e[type = item, name = cows] ~ ~ ~ summon cow ~ ~ ~
execute @e[type = item, name = cows] ~ ~ ~ tag @e[type=cow,r=5] add tntcow
scoreboard players add @e[tag=tntcow] tnttime 1
execute @e[tag=tntcow,scores={tnttime=100}] ~ ~ ~ summon cs:instanttnt
execute @e[tag=tntcow,scores={tnttime=100}] ~ ~ ~ kill @s
execute @e[type = item, name = cows] ~ ~ ~ title @a actionbar §cRUN!
kill @e[type = item, name = cows]
execute @e[type = item, name = witch] ~ ~ ~ summon witch ~ ~ ~
execute @e[type = item, name = witch] ~ ~ ~ summon witch ~ ~ ~
execute @e[type = item, name = witch] ~ ~ ~ summon witch ~ ~ ~
kill @e[type = item, name = witch]
execute @e[type = item, name = lightning] ~ ~ ~ summon lightning_bolt ~ ~ ~
kill @e[type = item, name = lightning]
execute @e[type = item, name = blindness] ~ ~ ~ effect @e[r=4] blindness 10 25 true
kill @e[type = item, name = blindness]
execute @e[type = item, name = turtle] ~ ~ ~ summon turtle ~ ~ ~
kill @e[type = item, name = turtle]
execute @e[type = item, name = horse_spawn] ~ ~ ~ summon horse ~ ~ ~
kill @e[type = item, name = horse_spawn]
execute @e[type = item, name = zombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[type = item, name = zombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[type = item, name = zombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[type = item, name = zombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[type = item, name = zombie] ~ ~ ~ summon zombie ~ ~ ~
kill @e[type = item, name = zombie]
execute @e[type = item, name = skeleton] ~ ~ ~ summon skeleton ~ ~ ~
execute @e[type = item, name = skeleton] ~ ~ ~ summon skeleton ~ ~ ~
execute @e[type = item, name = skeleton] ~ ~ ~ summon skeleton ~ ~ ~
execute @e[type = item, name = skeleton] ~ ~ ~ summon skeleton ~ ~ ~
execute @e[type = item, name = skeleton] ~ ~ ~ summon skeleton ~ ~ ~
kill @e[type = item, name = skeleton]
execute @e[type = item, name = loup] ~ ~ ~ summon wolf ~ ~ ~
kill @e[type = item, name = loup]
execute @e[type = item, name = slim] ~ ~ ~ summon iron_golem ~ ~ ~
kill @e[type = item, name = slim]
execute @e[type = item, name = tnt_flying] ~ ~ ~ summon tnt ~ ~ ~
kill @e[type = item, name = tnt_flying]

execute @e[type = item, name = ores] ~ ~ ~ setblock ~ ~3 ~ diamond_block
execute @e[type = item, name = ores] ~ ~ ~ setblock ~ ~2 ~ emerald_block
execute @e[type = item, name = ores] ~ ~ ~ setblock ~ ~1 ~ iron_block
execute @e[type = item, name = ores] ~ ~ ~ setblock ~ ~ ~ gold_block
kill @e[type = item, name = ores]

execute @e[type = item, name = trap] ~ ~ ~ fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 iron_block
execute @e[type = item, name = trap] ~ ~ ~ fill ~1 ~-1 ~1 ~-1 ~3 ~-1 iron_bars 0 replace air
execute @e[type = item, name = trap] ~ ~ ~ fill ~ ~ ~ ~ ~4 ~ air
execute @e[type = item, name = trap] ~ ~ ~ setblock ~ ~4 ~ lava
kill @e[type = item, name = trap]

execute @e[type = item, name = anvil_trap] ~ ~ ~ fill ~1 ~30 ~1 ~-1 ~30 ~-1 anvil
kill @e[type = item, name = anvil_trap]






execute @e[type = item, name = particle] ~ ~ ~ particle minecraft:example_flipbook ~ ~ ~
execute @e[type = item, name = play_sound] ~ ~ ~ playsound note.pling @a[r=7] ~ ~ ~ 0.8 1.96
kill @e[type = item, name = particle]
kill @e[type = item, name = play_sound]


scoreboard players add @e[type=cs:autobridger] time 1
execute @e[type=cs:autobridger,scores={time=1}] ~ ~ ~ tp @s ~ ~ ~ facing @p
execute @e[type=cs:autobridger,scores={time=1}] ~ ~ ~ tp @s ~ ~ ~ facing ^ ^ ^-2
execute @e[type=cs:autobridger,scores={time=1}] ~ ~ ~ fill ^ ^-1 ^1 ^ ^-1 ^1 concrete 4 replace air
execute @e[type=cs:autobridger] ~ ~ ~ tp @s ^ ^ ^1
execute @e[type=cs:autobridger] ~ ~ ~ fill ^ ^-1 ^1 ^ ^-1 ^1 concrete 4 replace air
execute @e[type=cs:autobridger,scores={time=20}] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=cs:autobridger,scores={time=21}] ~ ~ ~ kill @s

scoreboard players add @p[tag=autowait] wait 1
title @a[tag=autowait,scores={wait=0}] actionbar §7[§cIIIII§7]
title @a[tag=autowait,scores={wait=10}] actionbar §7[§eI§cIIII§7]
title @a[tag=autowait,scores={wait=20}] actionbar §7[§eII§cIII§7]
title @a[tag=autowait,scores={wait=30}] actionbar §7[§eIII§cII§7]
title @a[tag=autowait,scores={wait=40}] actionbar §7[§eIIII§cI§7]
title @a[tag=autowait,scores={wait=50}] actionbar §7[§eIIIII§7]
tag @a[tag=autowait,scores={wait=50}] remove autowait
scoreboard players set @a[scores={wait=50..}] wait 0

execute @e[type=cs:coin] ~ ~ ~ scoreboard players add @a[r=1.3] coins 1
execute @e[type=cs:coin] ~ ~ ~ execute @a[r=1.3] ~ ~ ~ execute @e[type=cs:coin,r=1.3] ~ ~ ~ playsound random.levelup @a[r=1.3]
execute @e[type=cs:coin] ~ ~ ~ execute @a[r=1.3] ~ ~ ~ execute @e[type=cs:coin,r=1.3] ~ ~ ~ tp @s ~ ~-1000 ~
execute @a[scores={coins=8},tag=!done] ~ ~ ~ title @a title §aNice job!
execute @a[scores={coins=8},tag=!done] ~ ~ ~ tellraw @a {"rawtext":[{"text":"All of the trophies has been found!"}]}
execute @a[scores={coins=8},tag=!done] ~ ~ ~ give @a cs:lucky_block 128
execute @a[scores={coins=8},tag=!done] ~ ~ ~ tag @a add done

titleraw @s actionbar {"rawtext":[{"text":"§eTrophies: §g"},{"score":{"name":"@s","objective":"coins"}}]}
scoreboard players add @a coins 0
fill -32 -55 14 -45 -63 43 air
