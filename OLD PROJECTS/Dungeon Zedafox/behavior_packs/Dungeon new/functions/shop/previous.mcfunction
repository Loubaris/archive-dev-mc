playanimation @s animation.wave.button_clicked
playsound click_button @a ~ ~ ~ 1 1.5

scoreboard players remove @e[type=zedafox:help,scores={page=2}] page 1

// PAGE DETECTOR

execute @e[type=zedafox:help,scores={page=1}] ~ ~ ~ function shop/interface1
execute @e[type=zedafox:help,scores={page=2}] ~ ~ ~ function shop/interface2