execute as @p run execute if block -483 106 -1126 minecraft:end_rod run setblock -483 106 -1126 barrier

execute as @p run execute if block -483 106 -1126 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -483 106 -1126 minecraft:chain run setblock -489 106 -1127 end_rod ["facing_direction":2]
execute as @p run execute if block -483 106 -1126 minecraft:barrier run setblock -489 106 -1127 chain ["pillar_axis":"z"]

execute as @p run execute if block -483 106 -1126 minecraft:chain run setblock -481 106 -1124 end_rod ["facing_direction":2]
execute as @p run execute if block -483 106 -1126 minecraft:barrier run setblock -481 106 -1124 chain ["pillar_axis":"z"]

execute as @p run execute if block -483 106 -1126 minecraft:chain run fill -487 106 -1124 -488 106 -1124 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -483 106 -1126 minecraft:barrier run fill -487 106 -1124 -488 106 -1124 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -483 106 -1126 minecraft:chain run fill -484 106 -1122 -483 106 -1122 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -483 106 -1126 minecraft:barrier run fill -484 106 -1122 -483 106 -1122 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -483 106 -1126 minecraft:chain run fill -483 106 -1126 -486 106 -1126 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -483 106 -1126 minecraft:barrier run fill -483 106 -1126 -486 106 -1126 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -483 106 -1126 minecraft:barrier run setblock -483 106 -1126 chain ["pillar_axis":"x"]
