playanimation @s animation.wave.takecoin
execute @s ~ ~ ~ playsound coin @a ~ ~ ~
particle zedafox:coins ~ ~ ~
event entity @s takecoin
tag @s add verified

scoreboard players add @a coin 1
titleraw @a actionbar {"rawtext":[{"text":"§e"},{"score":{"name":"*","objective":"coin"}},{"text":" §r§ecoin(s)"}]}

// BOUNCE

execute @s ~ ~ ~ detect ~ ~-0.1 ~ air 0 tag @s remove nm
execute @s ~ ~ ~ detect ~ ~-0.1 ~ air 0 playanimation @s animation.wave.bounce2