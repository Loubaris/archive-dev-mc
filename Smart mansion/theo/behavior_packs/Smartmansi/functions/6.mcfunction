execute as @p run execute if block -463 97 -1117 minecraft:end_rod run setblock -463 97 -1117 barrier


execute as @p run execute if block -463 97 -1117 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -463 97 -1117 minecraft:chain run setblock -463 96 -1109 end_rod
execute as @p run execute if block -463 97 -1117 minecraft:barrier run setblock -463 96 -1109 chain

execute as @p run execute if block -463 97 -1117 minecraft:chain run setblock -464 97 -1111 end_rod
execute as @p run execute if block -463 97 -1117 minecraft:barrier run setblock -464 97 -1111 chain

execute as @p run execute if block -463 97 -1117 minecraft:chain run setblock -464 96 -1115 end_rod
execute as @p run execute if block -463 97 -1117 minecraft:barrier run setblock -464 96 -1115 chain

execute as @p run execute if block -463 97 -1117 minecraft:chain run setblock -463 97 -1113 end_rod
execute as @p run execute if block -463 97 -1117 minecraft:barrier run setblock -463 97 -1113 chain


execute as @p run execute if block -463 97 -1117 minecraft:chain run fill -461 99 -1117 -461 99 -1115 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -463 97 -1117 minecraft:barrier run fill -461 99 -1117 -461 99 -1115 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -463 97 -1117 minecraft:chain run fill -461 99 -1111 -461 99 -1109 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -463 97 -1117 minecraft:barrier run fill -461 99 -1111 -461 99 -1109 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -463 97 -1117 minecraft:chain run fill -466 99 -1109 -466 99 -1111 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -463 97 -1117 minecraft:barrier run fill -466 99 -1109 -466 99 -1111 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -463 97 -1117 minecraft:chain run fill -466 99 -1115 -466 99 -1117 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -463 97 -1117 minecraft:barrier run fill -466 99 -1115 -466 99 -1117 chain ["pillar_axis":"z"] replace end_rod


execute as @p run execute if block -463 97 -1117 minecraft:chain run fill -464 99 -1119 -463 99 -1119 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -463 97 -1117 minecraft:barrier run fill -464 99 -1119 -463 99 -1119 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -463 97 -1117 minecraft:chain run fill -463 99 -1107 -464 99 -1107 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -463 97 -1117 minecraft:barrier run fill -463 99 -1107 -464 99 -1107 chain ["pillar_axis":"x"] replace end_rod



execute as @p run execute if block -463 97 -1117 minecraft:chain run setblock -463 97 -1117 end_rod
execute as @p run execute if block -463 97 -1117 minecraft:barrier run setblock -463 97 -1117 chain
