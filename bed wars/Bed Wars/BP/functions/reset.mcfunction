
tag @e[type=nitric:game] remove greendestroyed
tag @e[type=nitric:game] remove purpledestroyed
tag @e[type=nitric:game] remove reddestroyed
tag @e[type=nitric:game] remove yellowdestroyed
tag @a remove purple
tag @a remove yellow
tag @a remove red
tag @a remove green
tag @a remove dead
tag @a remove lost

clear @a


kill @e[type=nitric:irongoldgen]
kill @e[type=nitric:diamondgen]
kill @e[type=nitric:emeraldgen]
kill @e[type=npc,name="§bShop Villager"]
kill @e[type=item]

scoreboard players reset @a killcounter
scoreboard objectives setdisplay sidebar killcounter


