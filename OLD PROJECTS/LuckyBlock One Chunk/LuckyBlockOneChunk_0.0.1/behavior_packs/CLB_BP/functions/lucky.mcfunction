scoreboard players random @a random 0 35
execute @r ~ ~ ~ execute @s[scores={random=0..5}] ~ ~ ~ fill -60 192 27 -60 192 27 iron_ore 0 replace air
execute @r ~ ~ ~ execute @s[scores={random=6..11}] ~ ~ ~ fill -60 192 27 -60 192 27 nitric:luckyore 0 replace air
execute @r ~ ~ ~ execute @s[scores={random=12..18}] ~ ~ ~ fill -60 192 27 -60 192 27 nitric:commonore 0 replace air
execute @r ~ ~ ~ execute @s[scores={random=19..24}] ~ ~ ~ fill -60 192 27 -60 192 27 nitric:rareore 0 replace air
execute @r ~ ~ ~ execute @s[scores={random=25}] ~ ~ ~ fill -60 192 27 -60 192 27 nitric:legendaryore 0 replace air
execute @r ~ ~ ~ execute @s[scores={random=26..30}] ~ ~ ~ fill -60 192 27 -60 192 27 coal_ore 0 replace air
execute @r ~ ~ ~ execute @s[scores={random=31..35}] ~ ~ ~ fill -60 192 27 -60 192 27 stone 0 replace air

scoreboard objectives add random dummy random
scoreboard players random @e[name="item.nitric:lucky_loot.name"] random 0 26
execute @e[name="item.nitric:lucky_loot.name",scores={random=0}] ~ ~ ~ summon zombie
execute @e[name="item.nitric:lucky_loot.name",scores={random=0}] ~ ~ ~ summon zombie
execute @e[name="item.nitric:lucky_loot.name",scores={random=1}] ~ ~ ~ summon chicken
execute @e[name="item.nitric:lucky_loot.name",scores={random=1}] ~ ~ ~ summon chicken
execute @e[name="item.nitric:lucky_loot.name",scores={random=1}] ~ ~ ~ summon chicken
execute @e[name="item.nitric:lucky_loot.name",scores={random=2}] ~ ~ ~ structure load coal ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=3}] ~ ~ ~ structure load poisonous_potato ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=4}] ~ ~ ~ structure load log ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=5}] ~ ~ ~ structure load carrot ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=6}] ~ ~ ~ structure load bonemeal ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=7}] ~ ~ ~ structure load wooden_pickaxe ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=8}] ~ ~ ~ structure load beetroot ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=9}] ~ ~ ~ structure load slimeball ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=10}] ~ ~ ~ structure load flower ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=11}] ~ ~ ~ structure load iron_ore ~ ~ ~
execute @e[name="item.nitric:lucky_loot.name",scores={random=12}] ~ ~ ~ effect @a[r=7] nausea 10 0
execute @e[name="item.nitric:lucky_loot.name",scores={random=13}] ~ ~ ~ effect @a[r=7] blindness 10 0
execute @e[name="item.nitric:lucky_loot.name",scores={random=14}] ~ ~ ~ effect @a[r=7] slowness 10 0
execute @e[name="item.nitric:lucky_loot.name",scores={random=15}] ~ ~ ~ summon animal:badger
execute @e[name="item.nitric:lucky_loot.name",scores={random=16}] ~ ~ ~ summon animal:bear
execute @e[name="item.nitric:lucky_loot.name",scores={random=17}] ~ ~ ~ summon nitric:big_zombie
execute @e[name="item.nitric:lucky_loot.name",scores={random=18}] ~ ~ ~ summon nitric:cyclops
execute @e[name="item.nitric:lucky_loot.name",scores={random=19}] ~ ~ ~ summon animal:deer
execute @e[name="item.nitric:lucky_loot.name",scores={random=19}] ~ ~ ~ summon animal:deer
execute @e[name="item.nitric:lucky_loot.name",scores={random=20}] ~ ~ ~ summon animal:duck
execute @e[name="item.nitric:lucky_loot.name",scores={random=20}] ~ ~ ~ summon animal:duck
execute @e[name="item.nitric:lucky_loot.name",scores={random=21}] ~ ~ ~ summon animal:eagle
execute @e[name="item.nitric:lucky_loot.name",scores={random=21}] ~ ~ ~ summon animal:eagle
execute @e[name="item.nitric:lucky_loot.name",scores={random=22}] ~ ~ ~ summon animal:moose
execute @e[name="item.nitric:lucky_loot.name",scores={random=22}] ~ ~ ~ summon animal:moose
execute @e[name="item.nitric:lucky_loot.name",scores={random=23}] ~ ~ ~ summon animal:panther
execute @e[name="item.nitric:lucky_loot.name",scores={random=24}] ~ ~ ~ summon animal:raccoon
execute @e[name="item.nitric:lucky_loot.name",scores={random=25}] ~ ~ ~ summon animal:salamander
execute @e[name="item.nitric:lucky_loot.name",scores={random=26}] ~ ~ ~ summon animal:squirrel
execute @e[name="item.nitric:lucky_loot.name",scores={random=26}] ~ ~ ~ summon animal:squirrel
execute @e[name="item.nitric:lucky_loot.name",scores={random=26}] ~ ~ ~ summon animal:squirrel

scoreboard players random @e[name="item.nitric:common_loot.name"] random 0 26
execute @e[name="item.nitric:common_loot.name",scores={random=0}] ~ ~ ~ summon creeper
execute @e[name="item.nitric:common_loot.name",scores={random=0}] ~ ~ ~ summon creeper
execute @e[name="item.nitric:common_loot.name",scores={random=1}] ~ ~ ~ summon ghast
execute @e[name="item.nitric:common_loot.name",scores={random=2}] ~ ~ ~ summon pig
execute @e[name="item.nitric:common_loot.name",scores={random=2}] ~ ~ ~ summon pig
execute @e[name="item.nitric:common_loot.name",scores={random=3}] ~ ~ ~ summon sheep
execute @e[name="item.nitric:common_loot.name",scores={random=4}] ~ ~ ~ summon tnt
execute @e[name="item.nitric:common_loot.name",scores={random=5}] ~ ~ ~ structure load iron_nugget ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=6}] ~ ~ ~ structure load cookie ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=7}] ~ ~ ~ structure load gold_nugget ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=8}] ~ ~ ~ structure load stone_tools ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=9}] ~ ~ ~ structure load iron_tools ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=10}] ~ ~ ~ structure load iron_armor ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=11}] ~ ~ ~ structure load bottle_enchanting ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=12}] ~ ~ ~ structure load trident ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=13}] ~ ~ ~ structure load coal_block ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=14}] ~ ~ ~ structure load ender_pearl ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=15}] ~ ~ ~ structure load nametag ~ ~ ~
execute @e[name="item.nitric:common_loot.name",scores={random=16}] ~ ~ ~ execute @p ~ ~ ~ summon lightning_bolt
execute @e[name="item.nitric:common_loot.name",scores={random=17}] ~ ~ ~ effect @a[r=7] nausea 20 0
execute @e[name="item.nitric:common_loot.name",scores={random=18}] ~ ~ ~ effect @a[r=7] blindness 20 0
execute @e[name="item.nitric:common_loot.name",scores={random=19}] ~ ~ ~ effect @a[r=7] slowness 20 0
execute @e[name="item.nitric:common_loot.name",scores={random=20}] ~ ~ ~ effect @a[r=7] speed 20 0
execute @e[name="item.nitric:common_loot.name",scores={random=21}] ~ ~ ~ effect @a[r=7] night_vision 20 0
execute @e[name="item.nitric:common_loot.name",scores={random=22}] ~ ~ ~ effect @a[r=7] weakness 20 0
execute @e[name="item.nitric:common_loot.name",scores={random=23}] ~ ~ ~ summon nitric:cute_fairy
execute @e[name="item.nitric:common_loot.name",scores={random=24}] ~ ~ ~ summon nitric:fairy
execute @e[name="item.nitric:common_loot.name",scores={random=25}] ~ ~ ~ summon nitric:insect_fairy
execute @e[name="item.nitric:common_loot.name",scores={random=26}] ~ ~ ~ summon nitric:monster_fairy


scoreboard players random @e[name="item.nitric:rare_loot.name"] random 0 31
execute @e[name="item.nitric:rare_loot.name",scores={random=0}] ~ ~ ~ summon wither_skeleton
execute @e[name="item.nitric:rare_loot.name",scores={random=0}] ~ ~ ~ summon wither_skeleton
execute @e[name="item.nitric:rare_loot.name",scores={random=1}] ~ ~ ~ summon pillager
execute @e[name="item.nitric:rare_loot.name",scores={random=1}] ~ ~ ~ summon pillager
execute @e[name="item.nitric:rare_loot.name",scores={random=2}] ~ ~ ~ summon minecraft:bee
execute @e[name="item.nitric:rare_loot.name",scores={random=2}] ~ ~ ~ summon minecraft:bee
execute @e[name="item.nitric:rare_loot.name",scores={random=2}] ~ ~ ~ summon minecraft:bee
execute @e[name="item.nitric:rare_loot.name",scores={random=3}] ~ ~ ~ structure load diamond ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=4}] ~ ~ ~ structure load emerald ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=5}] ~ ~ ~ structure load diamond_tools ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=6}] ~ ~ ~ structure load diamond_armor ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=7}] ~ ~ ~ structure load cake ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=8}] ~ ~ ~ structure load golden_apple ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=9}] ~ ~ ~ structure load heart_of_the_sea ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=10}] ~ ~ ~ structure load elytra ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=11}] ~ ~ ~ structure load diamond ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=12}] ~ ~ ~ structure load gold_ingot ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=13}] ~ ~ ~ structure load enchanted_book ~ ~ ~
execute @e[name="item.nitric:rare_loot.name",scores={random=14}] ~ ~ ~ execute @p ~ ~ ~ summon lightning_bolt
execute @e[name="item.nitric:rare_loot.name",scores={random=15}] ~ ~ ~ effect @a[r=7] nausea 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=16}] ~ ~ ~ effect @a[r=7] blindness 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=17}] ~ ~ ~ effect @a[r=7] slowness 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=18}] ~ ~ ~ effect @a[r=7] speed 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=19}] ~ ~ ~ effect @a[r=7] night_vision 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=20}] ~ ~ ~ effect @a[r=7] weakness 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=21}] ~ ~ ~ effect @a[r=7] absorption 25 0
execute @e[name="item.nitric:rare_loot.name",scores={random=22}] ~ ~ ~ summon nitric:cyclone
execute @e[name="item.nitric:rare_loot.name",scores={random=23}] ~ ~ ~ summon nitric:laurri
execute @e[name="item.nitric:rare_loot.name",scores={random=24}] ~ ~ ~ summon nitric:lavetti
execute @e[name="item.nitric:rare_loot.name",scores={random=25}] ~ ~ ~ summon nitric:mclauren
execute @e[name="item.nitric:rare_loot.name",scores={random=26}] ~ ~ ~ summon nitric:murran
execute @e[name="item.nitric:rare_loot.name",scores={random=27}] ~ ~ ~ summon nitric:rival
execute @e[name="item.nitric:rare_loot.name",scores={random=28}] ~ ~ ~ summon nitric:roys_ice
execute @e[name="item.nitric:rare_loot.name",scores={random=29}] ~ ~ ~ summon nitric:sige
execute @e[name="item.nitric:rare_loot.name",scores={random=30}] ~ ~ ~ summon nitric:steed
execute @e[name="item.nitric:rare_loot.name",scores={random=31}] ~ ~ ~ summon nitric:super

scoreboard players random @e[name="item.nitric:legendary_loot.name"] random 0 41
execute @e[name="item.nitric:legendary_loot.name",scores={random=0}] ~ ~ ~ summon ghast
execute @e[name="item.nitric:legendary_loot.name",scores={random=1}] ~ ~ ~ summon creeper ~ ~ ~ minecraft:become_charged
execute @e[name="item.nitric:legendary_loot.name",scores={random=2}] ~ ~ ~ summon wither_skeleton
execute @e[name="item.nitric:legendary_loot.name",scores={random=2}] ~ ~ ~ summon wither_skeleton
execute @e[name="item.nitric:legendary_loot.name",scores={random=3}] ~ ~ ~ summon enderman
execute @e[name="item.nitric:legendary_loot.name",scores={random=4}] ~ ~ ~ summon pillager
execute @e[name="item.nitric:legendary_loot.name",scores={random=4}] ~ ~ ~ summon pillager
execute @e[name="item.nitric:legendary_loot.name",scores={random=5}] ~ ~ ~ summon skeleton_horse
execute @e[name="item.nitric:legendary_loot.name",scores={random=6}] ~ ~ ~ summon blaze
execute @e[name="item.nitric:legendary_loot.name",scores={random=6}] ~ ~ ~ summon blaze
execute @e[name="item.nitric:legendary_loot.name",scores={random=7}] ~ ~ ~ execute @p ~ ~ ~ summon lightning_bolt
execute @e[name="item.nitric:legendary_loot.name",scores={random=8}] ~ ~ ~ effect @a[r=7] nausea 25 1
execute @e[name="item.nitric:legendary_loot.name",scores={random=9}] ~ ~ ~ effect @a[r=7] blindness 25 1
execute @e[name="item.nitric:legendary_loot.name",scores={random=10}] ~ ~ ~ effect @a[r=7] slowness 25 1
execute @e[name="item.nitric:legendary_loot.name",scores={random=11}] ~ ~ ~ effect @a[r=7] speed 25 1
execute @e[name="item.nitric:legendary_loot.name",scores={random=12}] ~ ~ ~ effect @a[r=7] weakness 25 1
execute @e[name="item.nitric:legendary_loot.name",scores={random=13}] ~ ~ ~ structure load enchanted_tools ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=14}] ~ ~ ~ structure load enchanted_armor ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=15}] ~ ~ ~ structure load netherite_tools ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=16}] ~ ~ ~ structure load netherite_armor ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=17}] ~ ~ ~ structure load totem ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=18}] ~ ~ ~ structure load pufferfish ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=19}] ~ ~ ~ structure load diamond_block ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=20}] ~ ~ ~ structure load emerald_block ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=21}] ~ ~ ~ structure load iron_block ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=22}] ~ ~ ~ structure load gold_block ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=23}] ~ ~ ~ structure load honey ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=24}] ~ ~ ~ structure load turtle_shell ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=25}] ~ ~ ~ structure load beacon ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=26}] ~ ~ ~ structure load ender_pearl ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=27}] ~ ~ ~ structure load enchanted_book ~ ~ ~
execute @e[name="item.nitric:legendary_loot.name",scores={random=28}] ~ ~ ~ summon tnt:10xtnt
execute @e[name="item.nitric:legendary_loot.name",scores={random=29}] ~ ~ ~ summon tnt:25xtnt
execute @e[name="item.nitric:legendary_loot.name",scores={random=30}] ~ ~ ~ summon tnt:airstrike
execute @e[name="item.nitric:legendary_loot.name",scores={random=31}] ~ ~ ~ summon tnt:spawnairstrike
execute @e[name="item.nitric:legendary_loot.name",scores={random=32}] ~ ~ ~ summon tnt:creepertnt
execute @e[name="item.nitric:legendary_loot.name",scores={random=33}] ~ ~ ~ summon tnt:firetntlit
execute @e[name="item.nitric:legendary_loot.name",scores={random=34}] ~ ~ ~ summon tnt:fireworkstntlit
execute @e[name="item.nitric:legendary_loot.name",scores={random=35}] ~ ~ ~ summon tnt:healthtnt
execute @e[name="item.nitric:legendary_loot.name",scores={random=36}] ~ ~ ~ summon tnt:heftyboy
execute @e[name="item.nitric:legendary_loot.name",scores={random=37}] ~ ~ ~ summon tnt:landmine
execute @e[name="item.nitric:legendary_loot.name",scores={random=38}] ~ ~ ~ summon tnt:lavatntlit
execute @e[name="item.nitric:legendary_loot.name",scores={random=39}] ~ ~ ~ summon tnt:mobtnt
execute @e[name="item.nitric:legendary_loot.name",scores={random=40}] ~ ~ ~ summon tnt:particletntlit
execute @e[name="item.nitric:legendary_loot.name",scores={random=41}] ~ ~ ~ summon tnt:poisontnt
kill @e[name="item.nitric:lucky_loot.name"]
kill @e[name="item.nitric:common_loot.name"]
kill @e[name="item.nitric:rare_loot.name"]
kill @e[name="item.nitric:legendary_loot.name"]