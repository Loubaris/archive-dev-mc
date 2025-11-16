summon sw:start_raid "§4Start the extraction" 366.48 66.00 -132.59
setworldspawn 366.53 64.06 -147.53

# MAYBE OPTION TO CHOOSE DIFFICULTY AT START
difficulty n

tickingarea add circle 366.43 66.00 -132.42 1 spawn
tickingarea add circle 200 18 -188 4 mainbuilding
tickingarea add circle 94.24 15.00 -246.10 4 map1
tickingarea add circle 95.74 15.30 -70.04 4 map2
tickingarea add circle 87.16 15.00 -154.37 4 map3


scoreboard objectives add location dummy
scoreboard objectives add extractiontime dummy
scoreboard objectives add timer dummy
scoreboard objectives add mobcounter dummy
scoreboard objectives add mobtimer dummy
scoreboard objectives add nbextraction dummy
scoreboard objectives add strength dummy
scoreboard objectives add health dummy
scoreboard objectives add resistance dummy
scoreboard objectives add tnttime dummy
scoreboard objectives add hoppertime dummy
scoreboard objectives add rockettime dummy
scoreboard objectives add firetraptime dummy
scoreboard objectives add soultraptime dummy
scoreboard objectives add freezetime dummy

gamerule mobgriefing false
gamerule domobspawning false
gamerule commandblockoutput false
gamerule sendcommandfeedback false
gamerule dofiretick false
tag @a remove tutorial
tag @a remove level2
tag @a remove level3
tag @a remove level4
tag @a remove level5

# NPCS
summon sw:weapons_trader "§2Trader" 359.59 64.00 -142.60
summon sw:specials_trader "§2Merchant" 358.68 64.00 -144.48
summon sw:upgrades_trader "§2Upgrader" 372.69 64.00 -143.57
dialogue change @e[type=sw:upgrades_trader] main @a

summon sw:normal 360.55 64.00 -158.84 smith
summon sw:normal 366.08 64.06 -160.28 farmer
summon sw:normal 372.82 64.00 -164.64 butcher
summon sw:normal 366.60 64.06 -173.34 priest
summon sw:normal 359.46 64.00 -174.13 librarian

function spawns