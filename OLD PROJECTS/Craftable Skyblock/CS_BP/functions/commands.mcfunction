execute @e[type=cs:stand,tag=!sound] ~ ~ ~ playsound random.orb @a[r=20]
execute @e[type=cs:stand,tag=!sound] ~ ~ ~ tag @s add sound

scoreboard players add @e[type=cs:acacia_forest] spawntime 1
execute @e[type=cs:acacia_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:acacia_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:acacia_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:acacia_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:acacia_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:acacia_forest,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Acacia Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:acacia_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aAcacia Forest placed!
execute @e[type=cs:acacia_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:acacia_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:flower_forest] spawntime 1
execute @e[type=cs:flower_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:flower_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:flower_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:flower_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:flower_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:flower_forest,scores={spawntime=60}] ~-14 ~-17 ~-9 structure load "Flower Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:flower_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aFlower Field placed!
execute @e[type=cs:flower_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:flower_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:spruce_forest] spawntime 1
execute @e[type=cs:spruce_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:spruce_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:spruce_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~-14 ~-17 ~-9 structure load "Spruce Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aSpruce Forest placed!
execute @e[type=cs:spruce_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:spruce_forest,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:birch_forest] spawntime 1
execute @e[type=cs:birch_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:birch_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:birch_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:birch_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:birch_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:birch_forest,scores={spawntime=60}] ~-14 ~-17 ~-9 structure load "Birch Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:birch_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aBirch Forest placed!
execute @e[type=cs:birch_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:birch_forest,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:oak_forest] spawntime 1
execute @e[type=cs:oak_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:oak_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:oak_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:oak_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:oak_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:oak_forest,scores={spawntime=60}] ~-12 ~-17 ~-8 structure load "Oak Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:oak_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aOak Forest placed!
execute @e[type=cs:oak_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:oak_forest,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:swamp] spawntime 1
execute @e[type=cs:swamp] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:swamp,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:swamp] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:swamp,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:swamp,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:swamp,scores={spawntime=60}] ~-12 ~-17 ~-8 structure load "Swamp" ~ ~ ~ 0_degrees
execute @e[type=cs:swamp,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aSwamp placed!
execute @e[type=cs:swamp,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:swamp,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:jungle_forest] spawntime 1
execute @e[type=cs:jungle_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:jungle_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:jungle_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:jungle_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:jungle_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:jungle_forest,scores={spawntime=60}] ~-12 ~-18 ~-8 structure load "Jungle Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:jungle_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aJungle Forest placed!
execute @e[type=cs:jungle_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:jungle_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:mesa_forest] spawntime 1
execute @e[type=cs:mesa_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:mesa_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:mesa_forest] ~ ~ ~ tp @s ^ ^ ^-1 facing @e[type=cs:stand]
execute @e[type=cs:mesa_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:mesa_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:mesa_forest,scores={spawntime=60}] ~-4 ~-28 ~-4 structure load "Mesa Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:mesa_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aMesa Forest placed!
execute @e[type=cs:mesa_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:mesa_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:spruce_forest] spawntime 1
execute @e[type=cs:spruce_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:spruce_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:spruce_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~-12 ~-17 ~-8 structure load "Spruce Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:spruce_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aSpruce Forest placed!
execute @e[type=cs:spruce_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:spruce_forest,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:dark_oak_forest] spawntime 1
execute @e[type=cs:dark_oak_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:dark_oak_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:dark_oak_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:dark_oak_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:dark_oak_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:dark_oak_forest,scores={spawntime=60}] ~-12 ~-17 ~-8 structure load "Dark Oak Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:dark_oak_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aDark Oak Forest placed!
execute @e[type=cs:dark_oak_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:dark_oak_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:bamboo_forest] spawntime 1
execute @e[type=cs:bamboo_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:bamboo_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:bamboo_forest] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:bamboo_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:bamboo_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:bamboo_forest,scores={spawntime=60}] ~-14 ~-17 ~-8 structure load "Bamboo Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:bamboo_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aBamboo Jungle placed!
execute @e[type=cs:bamboo_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:bamboo_forest,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:mooshroom_island] spawntime 1
execute @e[type=cs:mooshroom_island] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:mooshroom_island,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:mooshroom_island] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:mooshroom_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:mooshroom_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:mooshroom_island,scores={spawntime=60}] ~-12 ~-17 ~-12 structure load "Mooshroom Island" ~ ~ ~ 0_degrees
execute @e[type=cs:mooshroom_island,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aMushroom Island placed!
execute @e[type=cs:mooshroom_island,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:mooshroom_island,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:beach_island] spawntime 1
execute @e[type=cs:beach_island] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:beach_island,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:beach_island] ~ ~ ~ tp @s ^ ^ ^-1 facing @e[type=cs:stand]
execute @e[type=cs:beach_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:beach_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:beach_island,scores={spawntime=60}] ~-12 ~-25 ~-12 structure load "Beach Island" ~ ~ ~ 0_degrees
execute @e[type=cs:beach_island,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aBeach Island placed!
execute @e[type=cs:beach_island,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:beach_island,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:frozen_lake] spawntime 1
execute @e[type=cs:frozen_lake] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:frozen_lake,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:frozen_lake] ~ ~ ~ tp @s ^ ^ ^-0.5 facing @e[type=cs:stand]
execute @e[type=cs:frozen_lake,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:frozen_lake,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:frozen_lake,scores={spawntime=60}] ~-12 ~-17 ~-12 structure load "Frozen Lake" ~ ~ ~ 0_degrees
execute @e[type=cs:frozen_lake,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aFrozen Lake placed!
execute @e[type=cs:frozen_lake,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:frozen_lake,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:igloo_island] spawntime 1
execute @e[type=cs:igloo_island] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:igloo_island,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:igloo_island] ~ ~ ~ tp @s ^ ^ ^-0.7 facing @e[type=cs:stand]
execute @e[type=cs:igloo_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:igloo_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:igloo_island,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Igloo Island" ~ ~ ~ 0_degrees
execute @e[type=cs:igloo_island,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aIgloo placed!
execute @e[type=cs:igloo_island,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:igloo_island,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:volcano] spawntime 1
execute @e[type=cs:volcano] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:volcano,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:volcano] ~ ~ ~ tp @s ^ ^ ^-1.1 facing @e[type=cs:stand]
execute @e[type=cs:volcano,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:volcano,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:volcano,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Volcano" ~ ~ ~ 0_degrees
execute @e[type=cs:volcano,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aVolcano placed!
execute @e[type=cs:volcano,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:volcano,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:village_one] spawntime 1
execute @e[type=cs:village_one] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:village_one,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:village_one] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:village_one,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:village_one,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:village_one,scores={spawntime=60}] ~-12 ~-17 ~-12 structure load "Village One" ~ ~ ~ 0_degrees
execute @e[type=cs:village_one,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aVillage placed!
execute @e[type=cs:village_one,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:village_one,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:village_two] spawntime 1
execute @e[type=cs:village_two] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:village_two,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:village_two] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:village_two,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:village_two,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:village_two,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Village Two" ~ ~ ~ 0_degrees
execute @e[type=cs:village_two,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aVillage placed!
execute @e[type=cs:village_two,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:village_two,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:basalt_delta] spawntime 1
execute @e[type=cs:basalt_delta] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:basalt_delta,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:basalt_delta] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:basalt_delta,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:basalt_delta,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:basalt_delta,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Basalt Delta" ~ ~ ~ 0_degrees
execute @e[type=cs:basalt_delta,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aBasalt Delta placed!
execute @e[type=cs:basalt_delta,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:basalt_delta,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:bastion_remnant] spawntime 1
execute @e[type=cs:bastion_remnant] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:bastion_remnant,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:bastion_remnant] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:bastion_remnant,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:bastion_remnant,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:bastion_remnant,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Bastion Remnant" ~ ~ ~ 0_degrees
execute @e[type=cs:bastion_remnant,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aBastion Remnant placed!
execute @e[type=cs:bastion_remnant,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:bastion_remnant,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:crimson_forest] spawntime 1
execute @e[type=cs:crimson_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:crimson_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:crimson_forest] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:crimson_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:crimson_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:crimson_forest,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Crimson Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:crimson_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aCrimon Forest placed!
execute @e[type=cs:crimson_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:crimson_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:end_city] spawntime 1
execute @e[type=cs:end_city] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:end_city,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:end_city] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:end_city,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_city,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_city,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "End City" ~ ~ ~ 0_degrees
execute @e[type=cs:end_city,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aEnd City placed!
execute @e[type=cs:end_city,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:end_city,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:end_ship] spawntime 1
execute @e[type=cs:end_ship] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:end_ship,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:end_ship] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:end_ship,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_ship,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_ship,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "End Ship" ~ ~ ~ 0_degrees
execute @e[type=cs:end_ship,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aEnd Ship placed!
execute @e[type=cs:end_ship,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:end_ship,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:nether] spawntime 1
execute @e[type=cs:nether] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:nether,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:nether] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:nether,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Nether" ~ ~ ~ 0_degrees
execute @e[type=cs:nether,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aNether Wasteland placed!
execute @e[type=cs:nether,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:nether,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:pillager_outpost] spawntime 1
execute @e[type=cs:pillager_outpost] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:pillager_outpost,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:pillager_outpost] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:pillager_outpost,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:pillager_outpost,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:pillager_outpost,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Pillager Outpost" ~ ~ ~ 0_degrees
execute @e[type=cs:pillager_outpost,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aPillager Outpost placed!
execute @e[type=cs:pillager_outpost,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:pillager_outpost,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:soul_sand_valley] spawntime 1
execute @e[type=cs:soul_sand_valley] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:soul_sand_valley,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:soul_sand_valley] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:soul_sand_valley,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:soul_sand_valley,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:soul_sand_valley,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Soul Sand Valley" ~ ~ ~ 0_degrees
execute @e[type=cs:soul_sand_valley,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aSoulsand Valley placed!
execute @e[type=cs:soul_sand_valley,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:soul_sand_valley,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:warped_forest] spawntime 1
execute @e[type=cs:warped_forest] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:warped_forest,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:warped_forest] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:warped_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:warped_forest,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:warped_forest,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Warped Forest" ~ ~ ~ 0_degrees
execute @e[type=cs:warped_forest,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aWarped Forest placed!
execute @e[type=cs:warped_forest,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:warped_forest,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:floating_ship] spawntime 1
execute @e[type=cs:floating_ship] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:floating_ship,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:floating_ship] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:floating_ship,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:floating_ship,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:floating_ship,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Floating Ship" ~ ~ ~ 0_degrees
execute @e[type=cs:floating_ship,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aSky Ship placed!
execute @e[type=cs:floating_ship,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:floating_ship,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:giant_tree] spawntime 1
execute @e[type=cs:giant_tree] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:giant_tree,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:giant_tree] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:giant_tree,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:giant_tree,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:giant_tree,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Giant Tree" ~ ~ ~ 0_degrees
execute @e[type=cs:giant_tree,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aGiant Tree placed!
execute @e[type=cs:giant_tree,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:giant_tree,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:castle] spawntime 1
execute @e[type=cs:castle] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:castle,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:castle] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:castle,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:castle,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:castle,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "castle" ~ ~ ~ 0_degrees
execute @e[type=cs:castle,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aCastle placed!
execute @e[type=cs:castle,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:castle,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:mesa_village] spawntime 1
execute @e[type=cs:mesa_village] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:mesa_village,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:mesa_village] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:mesa_village,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:mesa_village,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:mesa_village,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Mesa Village" ~ ~ ~ 0_degrees
execute @e[type=cs:mesa_village,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aMesa Village placed!
execute @e[type=cs:mesa_village,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:mesa_village,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:nether_fortress] spawntime 1
execute @e[type=cs:nether_fortress] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:nether_fortress,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:nether_fortress] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:nether_fortress,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether_fortress,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether_fortress,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Nether Fortress" ~ ~ ~ 0_degrees
execute @e[type=cs:nether_fortress,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aNether Fortress placed!
execute @e[type=cs:nether_fortress,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:nether_fortress,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:nether_parkour] spawntime 1
execute @e[type=cs:nether_parkour] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:nether_parkour,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:nether_parkour] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Nether Parkour" ~ ~ ~ 0_degrees
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aNether placed!
execute @e[type=cs:nether_parkour,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:nether_parkour,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:cloud_city] spawntime 1
execute @e[type=cs:cloud_city] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:cloud_city,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:cloud_city] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:cloud_city,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:cloud_city,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:cloud_city,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Snow End" ~ ~ ~ 0_degrees
execute @e[type=cs:cloud_city,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aCloud City placed!
execute @e[type=cs:cloud_city,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:cloud_city,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:cloud_parkour] spawntime 1
execute @e[type=cs:cloud_parkour] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:cloud_parkour,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:cloud_parkour] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:cloud_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:cloud_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:cloud_parkour,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Snow Parkour" ~ ~ ~ 0_degrees
execute @e[type=cs:cloud_parkour,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aCloud Parkour placed!
execute @e[type=cs:cloud_parkour,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:cloud_parkour,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:water_oasis] spawntime 1
execute @e[type=cs:water_oasis] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:water_oasis,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:water_oasis] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:water_oasis,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:water_oasis,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:water_oasis,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Water Island" ~ ~ ~ 0_degrees
execute @e[type=cs:water_oasis,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aOasis placed!
execute @e[type=cs:water_oasis,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:water_oasis,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:ocean] spawntime 1
execute @e[type=cs:ocean] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:ocean,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:ocean] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:ocean,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:ocean,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:ocean,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Water Oasis" ~ ~ ~ 0_degrees
execute @e[type=cs:ocean,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aOcean placed!
execute @e[type=cs:ocean,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:ocean,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:water_ruin] spawntime 1
execute @e[type=cs:water_ruin] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:water_ruin,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:water_ruin] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:water_ruin,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:water_ruin,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:water_ruin,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Water Ruin" ~ ~ ~ 0_degrees
execute @e[type=cs:water_ruin,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aCove placed!
execute @e[type=cs:water_ruin,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:water_ruin,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:end_island_two] spawntime 1
execute @e[type=cs:end_island_two] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:end_island_two,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:end_island_two] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:end_island_two,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_island_two,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_island_two,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "End Island Two" ~ ~ ~ 0_degrees
execute @e[type=cs:end_island_two,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aChorus Plants placed!
execute @e[type=cs:end_island_two,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:end_island_two,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:nether_parkour] spawntime 1
execute @e[type=cs:nether_parkour] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:nether_parkour,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:nether_parkour] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Nether Parkour" ~ ~ ~ 0_degrees
execute @e[type=cs:nether_parkour,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aNether Parkour placed!
execute @e[type=cs:nether_parkour,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:nether_parkour,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:end_island_one] spawntime 1
execute @e[type=cs:end_island_one] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:end_island_one,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:end_island_one] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:end_island_one,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_island_one,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_island_one,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "End Island One" ~ ~ ~ 0_degrees
execute @e[type=cs:end_island_one,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aChorus Cluster placed!
execute @e[type=cs:end_island_one,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:end_island_one,scores={spawntime=61}] ~ ~ ~ kill @s


scoreboard players add @e[type=cs:end_parkour] spawntime 1
execute @e[type=cs:end_parkour] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:end_parkour,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:end_parkour] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:end_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_parkour,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:end_parkour,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "End Parkour" ~ ~ ~ 0_degrees
execute @e[type=cs:end_parkour,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aEnd Parkour placed!
execute @e[type=cs:end_parkour,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:end_parkour,scores={spawntime=61}] ~ ~ ~ kill @s



scoreboard players add @e[type=cs:cactus_island] spawntime 1
execute @e[type=cs:cactus_island] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:cactus_island,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:cactus_island] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:cactus_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:cactus_island,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:cactus_island,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Cactus Island" ~ ~ ~ 0_degrees
execute @e[type=cs:cactus_island,scores={spawntime=60}] ~ ~ ~ title @a actionbar §aDesert Cluser placed!
execute @e[type=cs:cactus_island,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:cactus_island,scores={spawntime=61}] ~ ~ ~ kill @s

scoreboard players add @e[type=cs:lcicles] spawntime 1
execute @e[type=cs:lcicles] ~ ~ ~ particle cs:bridge ~ ~ ~
execute @e[type=cs:lcicles,scores={spawntime=1}] ~ ~ ~ execute @p ~ ~ ~ summon cs:stand
execute @e[type=cs:lcicles] ~ ~ ~ tp @s ^ ^ ^-0.9 facing @e[type=cs:stand]
execute @e[type=cs:lcicles,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:lcicles,scores={spawntime=60}] ~ ~ ~ particle cs:island_craft ~ ~ ~
execute @e[type=cs:lcicles,scores={spawntime=60}] ~-12 ~-21 ~-8 structure load "Ice_Spikes" ~ ~ ~ 0_degrees
execute @e[type=cs:lcicles,scores={spawntime=60}] ~ ~ ~ title @a actionbar §alcicles placed!
execute @e[type=cs:lcicles,scores={spawntime=61}] ~ ~ ~ kill @e[type=cs:stand]
execute @e[type=cs:lcicles,scores={spawntime=61}] ~ ~ ~ kill @s




