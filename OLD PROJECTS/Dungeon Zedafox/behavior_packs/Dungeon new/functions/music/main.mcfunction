execute @s[scores={song=1,musictime=5}] ~ ~ ~ execute @a ~ ~ ~ playsound underworld @s ~ ~ ~ 0.5
execute @s[scores={song=2,musictime=5}] ~ ~ ~ playsound mushroom3 @a
execute @s[scores={song=3,musictime=5}] ~ ~ ~ playsound dark @a
execute @s[scores={song=4,musictime=5}] ~ ~ ~ playsound ambient @a
execute @s[scores={song=5,musictime=5}] ~ ~ ~ playsound sneak @a
execute @s[scores={song=6,musictime=5}] ~ ~ ~ execute @a ~ ~ ~ playsound battle1 @s ~ ~ ~ 0.1
execute @s[scores={song=7,musictime=5}] ~ ~ ~ execute @a ~ ~ ~ playsound battle3 @s ~ ~ ~ 0.2
execute @s[scores={song=8,musictime=5}] ~ ~ ~ execute @a ~ ~ ~ playsound village2 @s ~ ~ ~ 0.5
execute @s[scores={song=9,musictime=5}] ~ ~ ~ playsound hide @a
execute @s[scores={song=10,musictime=5}] ~ ~ ~ playsound lastfight @a
execute @s[scores={song=11,musictime=5}] ~ ~ ~ playsound battle2 @a

scoreboard players set @s[scores={song=1,musictime=1783}] musictime 1
scoreboard players set @s[scores={song=2,musictime=2343}] musictime 1
scoreboard players set @s[scores={song=3,musictime=2563}] musictime 1
scoreboard players set @s[scores={song=4,musictime=1023}] musictime 1
scoreboard players set @s[scores={song=5,musictime=1023}] musictime 1
scoreboard players set @s[scores={song=6,musictime=2393}] musictime 1
scoreboard players set @s[scores={song=7,musictime=1203}] musictime 1
scoreboard players set @s[scores={song=8,musictime=883}] musictime 1
scoreboard players set @s[scores={song=9,musictime=1363}] musictime 1
scoreboard players set @s[scores={song=10,musictime=2603}] musictime 1
scoreboard players set @s[scores={song=11,musictime=1143}] musictime 1

scoreboard players add @s musictime 1