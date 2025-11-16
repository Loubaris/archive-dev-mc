execute as @p run execute if block -468 107 -1065 minecraft:end_rod run setblock -468 107 -1065 barrier


execute as @p run execute if block -468 107 -1065 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -469 106 -1073 end_rod 
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -469 106 -1073 chain

execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -465 105 -1073 end_rod 
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -465 105 -1073 chain

execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -469 105 -1077 end_rod 
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -469 105 -1077 chain

execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -465 106 -1077 end_rod 
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -465 106 -1077 chain

execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -461 105 -1077 end_rod 
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -461 105 -1077 chain


execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -461 104 -1073 end_rod 
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -461 104 -1073 chain



execute as @p run execute if block -468 107 -1065 minecraft:chain run fill -463 107 -1086 -463 107 -1085 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -468 107 -1065 minecraft:barrier run fill -463 107 -1086 -463 107 -1085 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -468 107 -1065 minecraft:chain run fill -467 107 -1083 -465 107 -1083 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -468 107 -1065 minecraft:barrier run fill -467 107 -1083 -465 107 -1083 chain ["pillar_axis":"x"] replace end_rod



execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -461 107 -1067 end_rod ["facing_direction":2]
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -461 107 -1067 chain ["pillar_axis":"z"]

execute as @p run execute if block -468 107 -1065 minecraft:chain run setblock -470 107 -1067 end_rod ["facing_direction":2]
execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -470 107 -1067 chain ["pillar_axis":"z"]

execute as @p run execute if block -468 107 -1065 minecraft:chain run fill -468 107 -1069 -463 107 -1069 end_rod ["facing_direction":4] replace chain
execute as @p run execute if block -468 107 -1065 minecraft:barrier run fill -468 107 -1069 -463 107 -1069 chain ["pillar_axis":"x"] replace end_rod

execute as @p run execute if block -468 107 -1065 minecraft:chain run fill -468 107 -1065 -463 107 -1065 end_rod ["facing_direction":4] replace chain


execute as @p run execute if block -468 107 -1065 minecraft:barrier run setblock -483 106 -1126 chain ["pillar_axis":"x"]
execute as @p run execute if block -468 107 -1065 minecraft:barrier run fill -468 107 -1065 -463 107 -1065 chain ["pillar_axis":"x"]
