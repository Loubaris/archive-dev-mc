// FLYING TEXT

kill @e[type=zedafox:flying_text]

summon zedafox:flying_text 308 44.5 545 text "§c§lSTART"
summon zedafox:flying_text 308 44.25 545 text "§7Click to start"

summon zedafox:flying_text 300 44.5 545 text "§a§lCredits"
summon zedafox:flying_text 300 44.25 545 text "§7Click to see"




scoreboard players reset @e[type=zedafox:help] mean
scoreboard players reset @e[type=zedafox:help] kind
scoreboard players reset @e[type=zedafox:help] timedoor
scoreboard players reset @e[type=zedafox:help] insist
scoreboard players reset @e[type=zedafox:help] likecake
scoreboard players set @e[type=zedafox:help] partner 0
scoreboard players set @e[type=zedafox:help] kaleycrush 0
scoreboard players set @e[type=zedafox:help] heardstory 0
scoreboard players set @e[type=zedafox:help] startboss 0
scoreboard players set @e[type=zedafox:help] cutscene 0
scoreboard players set @e[type=zedafox:help] dungeon 1
scoreboard players set @e[type=zedafox:help] cutscene12 0
scoreboard players set @e[type=zedafox:help] startdungeon 20
scoreboard players set @e[type=zedafox:help] cutscene8 0
scoreboard players set @e[type=zedafox:help] levelcheck 0
scoreboard players set @e[type=zedafox:wood_door] door 0

scoreboard players reset @a coin

tag @e[family=character] remove chat

tag @e[type=zedafox:help] remove not-screwup
tag @e[type=zedafox:help] remove screwup
tag @e[type=zedafox:help] remove meetwizard
tag @e[type=zedafox:help] remove screwup
tag @e[type=zedafox:help] remove purchased
tag @e[type=zedafox:button] remove ended

summon zedafox:blind 375 109 469
event entity @e[name=kaley] removename

// GRAYSON

tp @e[name=grayson] 381 108 494 
scoreboard players set @e[name=grayson] dialog 48
tag @e[name=grayson] remove meetgrayson
tag @e[name=grayson] remove verified

// TURNIP

event entity @e[type=zedafox:big_vegetable] is_huggable

// PLAYER TAG

tag @a remove octopus-know



kill @e[type=zedafox:cutscene]
kill @e[type=zedafox:camera]


time set day