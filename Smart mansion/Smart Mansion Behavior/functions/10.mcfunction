execute as @p run execute if block -462 106 -1108 minecraft:end_rod run setblock -462 106 -1108 barrier
execute as @p run execute if block -462 106 -1108 minecraft:chain run fill -462 106 -1108 -463 106 -1106 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -462 106 -1108 minecraft:barrier run fill -462 106 -1108 -463 106 -1106 chain ["pillar_axis":"x"] replace end_rod
execute as @p run execute if block -462 106 -1108 minecraft:barrier run setblock -462 106 -1108 chain ["pillar_axis":"x"]


execute as @p run execute if block -463 107 -1114 minecraft:end_rod run setblock -467 107 -1114 barrier

execute as @p run execute if block -463 107 -1114 minecraft:chain run setblock -461 107 -1112 end_rod ["facing_direction":4]
execute as @p run execute if block -463 107 -1114 minecraft:chain run setblock -460 107 -1112 end_rod ["facing_direction":5]
execute as @p run execute if block -463 107 -1114 minecraft:chain run setblock -463 107 -1114 end_rod ["facing_direction":2]

execute as @p run execute if block -463 107 -1114 minecraft:barrier run setblock -460 107 -1112 chain ["pillar_axis":"x"]
execute as @p run execute if block -463 107 -1114 minecraft:barrier run setblock -461 107 -1112 chain ["pillar_axis":"x"]
execute as @p run execute if block -463 107 -1114 minecraft:barrier run setblock -463 107 -1114 chain ["pillar_axis":"z"]