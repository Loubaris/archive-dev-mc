execute as @p run execute if block -481 97 -1125 minecraft:end_rod run setblock -481 97 -1125 barrier

execute as @p run execute if block -481 97 -1125 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -481 97 -1125 minecraft:chain run setblock -485 97 -1125 end_rod
execute as @p run execute if block -481 97 -1125 minecraft:barrier run setblock -483 96 -1125 chain


execute as @p run execute if block -481 97 -1125 minecraft:chain run setblock -483 96 -1125 end_rod
execute as @p run execute if block -481 97 -1125 minecraft:barrier run setblock -485 97 -1125 chain


execute as @p run execute if block -481 97 -1125 minecraft:chain run fill -486 99 -1122 -488 99 -1122 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -481 97 -1125 minecraft:barrier run fill -486 99 -1122 -488 99 -1122 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -481 97 -1125 minecraft:chain run fill -488 99 -1126 -486 99 -1126 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -481 97 -1125 minecraft:barrier run fill -488 99 -1126 -486 99 -1126 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -481 97 -1125 minecraft:chain run fill -482 99 -1128 -478 99 -1128 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -481 97 -1125 minecraft:barrier run fill -482 99 -1128 -478 99 -1128 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -481 97 -1125 minecraft:chain run setblock -478 99 -1125 end_rod ["facing_direction":4]
execute as @p run execute if block -481 97 -1125 minecraft:barrier run setblock -478 99 -1125 chain ["pillar_axis":"x"]

execute as @p run execute if block -481 97 -1125 minecraft:chain run setblock -483 99 -1120 end_rod ["facing_direction":4]
execute as @p run execute if block -481 97 -1125 minecraft:barrier run setblock -483 99 -1120 chain ["pillar_axis":"x"]

execute as @p run execute if block -481 97 -1125 minecraft:chain run setblock -490 99 -1124 end_rod ["facing_direction":3]
execute as @p run execute if block -481 97 -1125 minecraft:barrier run setblock -490 99 -1124 chain ["pillar_axis":"z"]

execute as @p run execute if block -481 97 -1125 minecraft:chain run setblock -481 97 -1125 end_rod
execute as @p run execute if block -481 97 -1125 minecraft:barrier run setblock -481 97 -1125 chain
