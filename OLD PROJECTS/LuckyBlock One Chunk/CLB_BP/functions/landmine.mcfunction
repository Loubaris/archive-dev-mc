scoreboard objectives add tntwait dummy tntwait
scoreboard players add @s tntwait 1
execute @s[scores={tntwait=20..}] ~ ~ ~ playsound block.alarm @a[r=3]
execute @a[r=1] ~ ~ ~ execute @r[type=tnt:landmine,r=1] ~ ~ ~ summon tnt:landminelit
execute @a[r=1] ~ ~ ~ execute @r[type=tnt:landmine,r=1] ~ ~ ~ tp @s ~ -5 ~
scoreboard players set @s[scores={tntwait=20..}] tntwait 0