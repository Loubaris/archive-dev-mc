execute as @p run execute if block -455 99 -1088 minecraft:end_rod run setblock -455 99 -1088 barrier
execute as @p run execute if block -455 99 -1088 minecraft:chain run fill -455 99 -1088 -446 99 -1098 end_rod ["facing_direction":2] replace chain
execute as @p run execute if block -455 99 -1088 minecraft:barrier run fill -455 99 -1088 -446 99 -1098 chain ["pillar_axis":"z"] replace end_rod
execute as @p run execute if block -455 99 -1088 minecraft:barrier run setblock -455 99 -1088 chain ["pillar_axis":"z"]