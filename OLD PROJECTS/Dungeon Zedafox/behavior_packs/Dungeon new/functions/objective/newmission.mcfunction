event entity @e[type=zedafox:point] disparition

//

tellraw @a {"rawtext":[{"text":"§d---------------\nA new mission awaits you!\nHead to the dungeon elevator.\n---------------"}]}
playsound newmission @a

scoreboard players set @e[type=zedafox:help] startdungeon 0


// OBJECTIVE

function objective/reset
scoreboard players set "§6Head to the dungeon elevator for a new mission." objective 0
scoreboard objectives setdisplay sidebar objective

// DIRECTION
 
summon zedafox:direction 423 111 498
summon zedafox:direction2 423 111 498

summon zedafox:point 423 112 498



// SETBLOCK - OPTIMIZATION

setblock 371 58 488 redstone_block