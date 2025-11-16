scoreboard players add @e[type=zedafox:help] cutscene7 1

//

execute @s[scores={cutscene7=2}] ~ ~ ~ function cutscene/getcrystal1/scene1
execute @s[scores={cutscene7=15}] ~ ~ ~ execute @a ~ ~ ~ playsound victory @s ~ ~ ~ 0.3
execute @s[scores={cutscene7=20}] ~ ~ ~ summon zedafox:crystal 1913.01 103 -93.94
execute @s[scores={cutscene7=20}] ~ ~ ~ execute @e[type=zedafox:crystal] ~ ~ ~ tp @s ~ ~ ~ 90

execute @s[scores={cutscene7=180}] ~ ~ ~ function transition/size4

// TALKYWALKY

execute @s[scores={cutscene7=50}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] dialog 201
execute @s[scores={cutscene7=50}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] timedialog 1

// TELEPORTATION AU VILLAGE

execute @s[scores={cutscene7=234}] ~ ~ ~ scoreboard players set @s dungeon 2
execute @s[scores={cutscene7=234}] ~ ~ ~ scoreboard players set @s time3 0
execute @s[scores={cutscene7=234}] ~ ~ ~ function cutscene/getcrystal1/stop
execute @s[scores={cutscene7=234}] ~ ~ ~ summon zedafox:point 387 111 487

execute @s[scores={cutscene7=233}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 8
execute @s[scores={cutscene7=233}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

