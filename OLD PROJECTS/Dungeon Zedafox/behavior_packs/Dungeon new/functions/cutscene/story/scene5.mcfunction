tp @e[type=zedafox:cutscene] 402 60 474
tp @e[type=zedafox:camera] 402 60 496

scoreboard players set @e[type=zedafox:cutscene] cutscene 1
scoreboard players set @e[type=zedafox:camera] cutscene 0

event entity @e[family=text] to_death
playanimation @e[type=zedafox:boss] animation.wave.head_grow