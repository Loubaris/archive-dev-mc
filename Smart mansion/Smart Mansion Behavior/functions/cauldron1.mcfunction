execute as @p run execute if block -500 93 -1072 minecraft:cauldron ["fill_level":0] run setblock -500 93 -1072 barrier
execute as @p run execute if block -500 93 -1072 minecraft:cauldron ["fill_level":6] run setblock -500 93 -1072 cauldron ["fill_level":0]
execute as @p run execute if block -500 93 -1072 minecraft:barrier run setblock -500 93 -1072 cauldron ["fill_level":6]
playsound bucket.fill_water @a[r=10]