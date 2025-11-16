gamerule spawnradius 0
gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule doimmediaterespawn true
scoreboard objectives add gens dummy
scoreboard objectives add map dummy
scoreboard objectives add timer dummy
scoreboard objectives add counter dummy
scoreboard objectives add ingamecounter dummy
scoreboard objectives add killcounter dummy

summon nitric:floatingtext "§cBedwars - Click to start" 0 70.50 8
summon nitric:game 0 68.50 8
dialogue change @e[type=nitric:game] players @a
setworldspawn 0 69 0
tickingarea add circle 0 69 0 1 spawn

