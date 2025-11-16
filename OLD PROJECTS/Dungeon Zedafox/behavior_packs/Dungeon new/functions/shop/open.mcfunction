summon zedafox:button_previous 372 108 471
summon zedafox:button_next 379 108 471
summon zedafox:shop 376 109 469
event entity @e[name=kaley] removename
event entity @e[name=§rKernel] removename

// ARTICLE

summon zedafox:article 373.45 109 469.6 article1
summon zedafox:article 375.11 109 469.6 article2
summon zedafox:article 376.77 109 469.6 article3
summon zedafox:article 378.47 109 469.6 article4

// PAGE 1

scoreboard players set @e[type=zedafox:help] page 1

playsound xylophone @a ~ ~ ~ 0.2
playanimation @e[name=kaley] animation.wave.presentation 

//

tag @a add in_shop
tag @e[name=kaley] add is_shopping