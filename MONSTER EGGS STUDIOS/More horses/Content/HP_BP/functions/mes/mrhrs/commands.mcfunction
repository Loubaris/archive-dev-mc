
scoreboard players add @a mes_mrhrs_pgs 0
scoreboard players add @a[tag=mes_mrhrs_pgs] mes_mrhrs_pgs 1

effect @a[tag=mes_mrhrs_pgs,scores={mes_mrhrs_pgs=2}] levitation 1 25 true
effect @a[tag=mes_mrhrs_pgs,scores={mes_mrhrs_pgs=9}] levitation 0

tag @a[tag=mes_mrhrs_pgs,scores={mes_mrhrs_pgs=200}] remove mes_mrhrs_pgs
scoreboard players set @a[scores={mes_mrhrs_pgs=200}] mes_mrhrs_pgs 0


scoreboard players add @a mes_mrhrs_gst 0
scoreboard players add @a[tag=mes_mrhrs_gst] mes_mrhrs_gst 1

tag @a[tag=mes_mrhrs_gst,scores={mes_mrhrs_gst=600}] remove mes_mrhrs_gst
scoreboard players set @a[scores={mes_mrhrs_gst=600}] mes_mrhrs_gst 0


scoreboard players add @a[tag=mes_mrhrs_lmt] mes_mrhrs_lmt 1
scoreboard players add @a mes_mrhrs_lmt 0

tag @a[tag=mes_mrhrs_lmt,scores={mes_mrhrs_lmt=200}] remove mes_mrhrs_lmt
scoreboard players set @a[scores={mes_mrhrs_lmt=200}] mes_mrhrs_lmt 0

execute as @e[type=mes_mrhrs:arcane_shoot] at @s run particle mes_mrhrs:arcane_shoot ~ ~ ~

scoreboard players add @e[type=mes_mrhrs:arcane_shoot] mes_mrhrs_art 1
execute as @e[type=mes_mrhrs:arcane_shoot] at @s run effect @e[family=mob,family=!mes_mrhs] fatal_poison 2 255 true
kill @e[type=mes_mrhrs:arcane_shoot,scores={mes_mrhrs_art=60}] 




scoreboard players add @a[tag=mes_mrhrs_shw] mes_mrhrs_shw 1
scoreboard players add @a mes_mrhrs_shw 0

execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=2}] at @s run camera @p fade time 0.1 1 0.1
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s if block ^ ^0.2 ^1 air run tp @s ^ ^0.1 ^1 facing ^ ^ ^10
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s run tp @e[type=mes_mrhrs:shadow_horse,c=1] ~ ~ ~
execute as @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=3}] at @s run ride @s start_riding @e[type=mes_mrhrs:shadow_horse,c=1]

tag @a[tag=mes_mrhrs_shw,scores={mes_mrhrs_shw=200}] remove mes_mrhrs_shw
scoreboard players set @a[scores={mes_mrhrs_shw=200}] mes_mrhrs_shw 0