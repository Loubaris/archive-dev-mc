execute as @p run execute if block -457 98 -1078 minecraft:end_rod run setblock -457 98 -1078 barrier

execute as @p run execute if block -457 98 -1078 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -457 98 -1078 minecraft:chain run setblock -453 98 -1078 end_rod
execute as @p run execute if block -457 98 -1078 minecraft:barrier run setblock -453 98 -1078 chain

execute as @p run execute if block -457 98 -1078 minecraft:chain run setblock -455 97 -1078 end_rod
execute as @p run execute if block -457 98 -1078 minecraft:barrier run setblock -455 97 -1078 chain

execute as @p run execute if block -457 98 -1078 minecraft:chain run setblock -459 99 -1078 end_rod
execute as @p run execute if block -457 98 -1078 minecraft:barrier run setblock -459 99 -1078 chain


execute as @p run execute if block -457 98 -1078 minecraft:chain run fill -459 100 -1080 -458 100 -1080 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -457 98 -1078 minecraft:barrier run fill -459 100 -1080 -458 100 -1080 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -457 98 -1078 minecraft:chain run fill -454 100 -1079 -453 100 -1079 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -457 98 -1078 minecraft:barrier run fill -454 100 -1079 -453 100 -1079 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -457 98 -1078 minecraft:chain run fill -453 100 -1077 -454 100 -1077 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -457 98 -1078 minecraft:barrier run fill -453 100 -1077 -454 100 -1077 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -457 98 -1078 minecraft:chain run fill -458 100 -1077 -459 100 -1077 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -457 98 -1078 minecraft:barrier run fill -458 100 -1077 -459 100 -1077 chain ["pillar_axis":"x"] replace end_rod



execute as @p run execute if block -457 98 -1078 minecraft:chain run setblock -457 98 -1078 end_rod
execute as @p run execute if block -457 98 -1078 minecraft:barrier run setblock -457 98 -1078 chain
