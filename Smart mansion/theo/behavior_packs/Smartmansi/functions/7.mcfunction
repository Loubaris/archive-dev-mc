execute as @p run execute if block -470 97 -1127 minecraft:end_rod run setblock -470 97 -1127 barrier

execute as @p run execute if block -470 97 -1127 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -470 97 -1127 minecraft:chain run setblock -470 98 -1129 end_rod
execute as @p run execute if block -470 97 -1127 minecraft:barrier run setblock -470 98 -1129 chain

execute as @p run execute if block -470 97 -1127 minecraft:chain run fill -473 99 -1124 -473 99 -1129 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -470 97 -1127 minecraft:barrier run fill -473 99 -1124 -473 99 -1129 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -470 97 -1127 minecraft:chain run setblock -471 99 -1122 end_rod ["facing_direction":4]
execute as @p run execute if block -470 97 -1127 minecraft:barrier run setblock -471 99 -1122 chain ["pillar_axis":"x"]



execute as @p run execute if block -470 97 -1127 minecraft:chain run setblock -470 97 -1127 end_rod
execute as @p run execute if block -470 97 -1127 minecraft:barrier run setblock -470 97 -1127 chain
