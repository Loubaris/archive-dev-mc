scoreboard players add @e[type=zedafox:help] cutscene10 1

//

execute @s[scores={cutscene10=2}] ~ ~ ~ function cutscene/getcrystal2/scene1
execute @s[scores={cutscene10=15}] ~ ~ ~ execute @a ~ ~ ~ playsound victory @s ~ ~ ~ 0.3
execute @s[scores={cutscene10=20}] ~ ~ ~ summon zedafox:crystal 3065 79 0 skin2
execute @s[scores={cutscene10=20}] ~ ~ ~ execute @e[type=zedafox:crystal] ~ ~ ~ tp @s ~ ~ ~ 45

execute @s[scores={cutscene10=180}] ~ ~ ~ function transition/size4

// TALKYWALKY

execute @s[scores={cutscene10=50}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] dialog 206
execute @s[scores={cutscene10=50}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] timedialog 1

// TELEPORTATION AU VILLAGE

execute @e[scores={cutscene10=234}] ~ ~ ~ function event/phase3
execute @e[scores={cutscene10=234}] ~ ~ ~ time set 12500
execute @e[scores={cutscene10=234}] ~ ~ ~ scoreboard players set @s dungeon 3
execute @e[scores={cutscene10=234}] ~ ~ ~ function cutscene/getcrystal2/stop
execute @s[scores={cutscene10=234}] ~ ~ ~ summon zedafox:point 387 111 487

