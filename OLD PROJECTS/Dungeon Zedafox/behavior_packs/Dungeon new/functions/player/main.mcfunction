// GENERAL

effect @s saturation 10 10 true


//

execute @s[scores={border=1..}] ~ ~ ~ function entity/border

execute @s[tag=levitation] ~ ~ ~ function entity/levitation

execute @s[scores={forced=1..}] ~ ~ ~ function entity/forced_to_answer

execute @e[type=zedafox:coin,r=1,tag=!verified] ~ ~ ~ function entity/coin


// ACID

execute @s[m=!c] ~ ~ ~ detect ~ ~ ~ zedafox:acid 0 function entity/acid_player
function random/optimize6

//

titleraw @s[tag=in_shop] actionbar {"rawtext":[{"text":"§eYou currently have §l"},{"score":{"name":"*","objective":"coin"}},{"text":" §r§ecoin(s)"}]}

execute @s[x=375,y=108,z=470,r=8] ~ ~ ~ scoreboard players set @e[type=zedafox:help] in_shop 10

event entity @e[type=zedafox:point,r=5] disparition


// START EVENT

execute @s ~ ~ ~ detect ~ 0 ~ stained_glass 14 scoreboard players add @e[type=zedafox:help,scores={startdungeon=..10}] startdungeon 1

// MEET GRAYSON

tag @e[name=grayson,r=5] add meetgrayson


// DIRECTION

execute @s[x=376,y=108,z=472,rm=3.5,scores={direction=1..}] ~ ~ ~ function player/direction_give

// NIGHT-VISION // KILL

execute @s ~ ~ ~ detect ~ ~-1 ~ concrete 15 kill @s

effect @s[tag=!new] night_vision 99999 255 true
tag @s add new


// HURT

execute @s[scores={hurt=1..}] ~ ~ ~ function entity/crocroc_hit
