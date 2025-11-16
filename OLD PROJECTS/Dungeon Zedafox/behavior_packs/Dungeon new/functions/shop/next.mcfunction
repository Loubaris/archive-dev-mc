playanimation @s animation.wave.button_clicked
playsound click_button @a ~ ~ ~ 1 1.5

// SCOREBOARD NEXT PAGE

scoreboard players add @e[type=zedafox:help,scores={page=1}] page 1

// PAGE DETECTOR

execute @e[type=zedafox:help,scores={page=2}] ~ ~ ~ function shop/interface2
execute @e[type=zedafox:help,scores={page=3}] ~ ~ ~ function shop/interface3