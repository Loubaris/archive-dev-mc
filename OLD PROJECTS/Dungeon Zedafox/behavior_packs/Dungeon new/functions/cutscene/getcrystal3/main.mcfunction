scoreboard players add @e[type=zedafox:help] cutscene9 1

//

execute @s[scores={cutscene9=2}] ~ ~ ~ function cutscene/getcrystal3/scene1
execute @s[scores={cutscene9=15}] ~ ~ ~ execute @a ~ ~ ~ playsound victory @s ~ ~ ~ 0.3
execute @s[scores={cutscene9=20}] ~ ~ ~ summon zedafox:crystal 4050 64 40 skin3
execute @s[scores={cutscene9=20}] ~ ~ ~ execute @e[type=zedafox:crystal] ~ ~ ~ tp @s ~ ~ ~ -45

execute @s[scores={cutscene9=180}] ~ ~ ~ function transition/size4

// TALKYWALKY

execute @s[scores={cutscene9=50}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] dialog 205
execute @s[scores={cutscene9=50}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] timedialog 1

// TELEPORTATION AU VILLAGE

execute @e[scores={cutscene9=234}] ~ ~ ~ scoreboard players set @s dungeon 4
execute @e[scores={cutscene9=234}] ~ ~ ~ function cutscene/getcrystal3/stop

