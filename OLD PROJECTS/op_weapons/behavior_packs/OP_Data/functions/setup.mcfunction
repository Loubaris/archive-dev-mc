scoreboard objectives add timetnt dummy
scoreboard objectives add time dummy
scoreboard objectives add timetalk dummy
scoreboard objectives add timeshulker dummy
scoreboard objectives add timeasteroid dummy
scoreboard objectives add timechicken dummy
scoreboard objectives add timeslime dummy
scoreboard objectives add swordused dummy
scoreboard objectives add timecreeper dummy
scoreboard objectives add timemountain dummy
scoreboard objectives add timefire dummy
scoreboard objectives add timeop dummy
scoreboard objectives add trainingtime dummy
scoreboard objectives add random dummy
scoreboard objectives add timeswift dummy
scoreboard objectives add timethor dummy
scoreboard objectives add timevortex dummy
scoreboard objectives add timeportal dummy
scoreboard objectives add sound dummy
scoreboard objectives add fixbugs dummy
scoreboard objectives add dancetime dummy
scoreboard objectives add trtp dummy
gamerule commandblockoutput false
gamerule sendcommandfeedback false
gamerule falldamage true
gamerule showcoordinates false
gamerule dotiledrops false
gamerule domobloot false
gamerule domobspawning false
difficulty normal

execute @e[tag=talker,type=armor_stand,c=1] ~ ~ ~ kill @e[type=armor_stand,rm=0.0001]
summon armor_stand 398 219 -53
tag @e[type=armor_stand,c=1,x=398,y=219,z=-53,r=3] add talker
effect @e[type=armor_stand] invisibility 99999 255 true
