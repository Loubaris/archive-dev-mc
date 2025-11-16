scoreboard players add @e[type=zedafox:help] cutscene11 1

//

execute @s[scores={cutscene11=50}] ~ ~ ~ summon zedafox:big_energy 388 120 511
execute @s[scores={cutscene11=50}] ~ ~ ~ function cutscene/afterend/scene1

execute @s[scores={cutscene11=55}] ~ ~ ~ execute @a ~ ~ ~ playsound laser_impact @s ~ ~ ~ 0.5 0.1

execute @s[scores={cutscene11=130}] ~ ~ ~ summon zedafox:impact 390 112 511
execute @s[scores={cutscene11=130}] ~ ~ ~ execute @a ~ ~ ~ playsound hit @s ~ ~ ~ 1 0.3
execute @s[scores={cutscene11=130}] ~ ~ ~ camerashake add @a 0.5 1

execute @s[scores={cutscene11=200}] ~ ~ ~ function transition/size4

execute @s[scores={cutscene11=250}] ~ ~ ~ function cutscene/afterend/stop