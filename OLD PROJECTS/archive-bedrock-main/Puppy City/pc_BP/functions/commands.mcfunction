

scoreboard players add @e[type=pc:puppy_coin,tag=!get] puppycoinanim 1
execute @e[type=pc:puppy_coin,scores={puppycoinanim=38}] ~ ~ ~ playanimation @s animation.puppy_coin.idle
scoreboard players set @e[type=pc:puppy_coin,scores={puppycoinanim=38}] puppycoinanim 0

scoreboard players add @e[type=pc:fire_hydrant,tag=broken,scores={brokentime=..20}] brokentime 1
execute @e[type=pc:fire_hydrant,tag=broken,scores={brokentime=18}] ~ ~ ~ playsound random.anvil_land @a[r=10]
execute @e[type=pc:fire_hydrant,tag=broken,scores={brokentime=1}] ~ ~ ~ playanimation @s animation.fire_hydrant.broken f 500
execute @e[type=pc:fire_hydrant,tag=broken,scores={brokentime=18..}] ~ ~ ~ particle pc:fire_hydrant ~ ~ ~
execute @e[type=pc:fire_hydrant,tag=broken,scores={brokentime=18}] ~ ~ ~ particle pc:fire_explode ~ ~ ~
execute @e[type=pc:fire_hydrant,tag=broken] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~5 ~-2 air 0 replace fire
execute @e[type=pc:fire_hydrant,tag=broken] ~ ~ ~ title @a[r=6] actionbar §cThis fire hydrant is broken!

execute @e[type=pc:fire_hydrant,tag=!position] ~ ~ ~ tp @s ~ ~ ~ facing ~1 ~ ~
execute @e[type=pc:fire_hydrant,tag=!position] ~ ~ ~ scoreboard players add @s brokentime 0
execute @e[type=pc:fire_hydrant,tag=!position] ~ ~ ~ tag @s add position