execute as @p run execute if block -468 100 -1062 minecraft:end_rod run setblock -468 100 -1062 barrier
execute as @p run execute if block -468 100 -1062 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -463 100 -1063 end_rod ["facing_direction":5]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -463 100 -1065 end_rod ["facing_direction":5]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -465 100 -1065 end_rod ["facing_direction":5]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -464 100 -1065 end_rod ["facing_direction":4]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -466 100 -1065 end_rod ["facing_direction":4]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -468 100 -1063 end_rod ["facing_direction":2]
execute as @p run execute if block -468 100 -1062 minecraft:chain run setblock -468 100 -1062 end_rod ["facing_direction":3]



execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -468 100 -1063 chain ["pillar_axis":"z"]
execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -466 100 -1065 chain ["pillar_axis":"x"]
execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -465 100 -1065 chain ["pillar_axis":"x"]
execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -464 100 -1065 chain ["pillar_axis":"x"]
execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -463 100 -1065 chain ["pillar_axis":"x"]
execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -463 100 -1063 chain ["pillar_axis":"x"]
execute as @p run execute if block -468 100 -1062 minecraft:barrier run setblock -468 100 -1062 chain ["pillar_axis":"z"]
