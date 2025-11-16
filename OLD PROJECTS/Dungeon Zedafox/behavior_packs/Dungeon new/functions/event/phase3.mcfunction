tag @e[family=character] remove chat


// JULIA

execute @e[type=zedafox:help,scores={heardstory=0}] ~ ~ ~ scoreboard players set @e[name=julia] dialog 83
execute @e[type=zedafox:help,scores={heardstory=1}] ~ ~ ~ scoreboard players set @e[name=julia] dialog 30

tag @e[name=julia] add chat



// KALEY

execute @e[type=zedafox:help,scores={kaleycrush=0}] ~ ~ ~ scoreboard players set @e[name=kaley] dialog 80
execute @e[type=zedafox:help,scores={kaleycrush=1}] ~ ~ ~ scoreboard players set @e[name=kaley] dialog 13
execute @e[type=zedafox:help,scores={kaleycrush=2}] ~ ~ ~ scoreboard players set @e[name=kaley] dialog 20
tag @e[name=kaley] add chat


// GRAYSON

scoreboard players set @e[name=grayson] dialog 91
tag @e[name=grayson] add chat




//

time set 12500