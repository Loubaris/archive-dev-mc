execute as @p run execute if block -483 93 -1130 minecraft:cauldron ["fill_level":0] run setblock -483 93 -1130 barrier
execute as @p run execute if block -483 93 -1130 minecraft:cauldron ["fill_level":6] run setblock -483 93 -1130 cauldron ["fill_level":0]
execute as @p run execute if block -483 93 -1130 minecraft:barrier run setblock -483 93 -1130 cauldron ["fill_level":6]
playsound bucket.fill_water @a[r=10]