execute as @p run execute if block -464 98 -1096 minecraft:end_rod run setblock -464 98 -1096 barrier

execute as @p run execute if block -464 98 -1096 minecraft:chain run playsound note.pling @a[r=10]

execute as @p run execute if block -464 98 -1096 minecraft:chain run setblock -464 96 -1098 end_rod
execute as @p run execute if block -464 98 -1096 minecraft:barrier run setblock -464 96 -1098 chain


execute as @p run execute if block -464 98 -1096 minecraft:chain run setblock -464 97 -1100 end_rod
execute as @p run execute if block -464 98 -1096 minecraft:barrier run setblock -464 97 -1100 chain


execute as @p run execute if block -464 98 -1096 minecraft:chain run fill -466 99 -1095 -466 99 -1096 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -464 98 -1096 minecraft:barrier run fill -466 99 -1095 -466 99 -1096 chain ["pillar_axis":"z"] replace end_rod


execute as @p run execute if block -464 98 -1096 minecraft:chain run fill -466 99 -1100 -466 99 -1101 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -464 98 -1096 minecraft:barrier run fill -466 99 -1100 -466 99 -1101 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -464 98 -1096 minecraft:chain run fill -462 99 -1101 -462 99 -1100 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -464 98 -1096 minecraft:barrier run fill -462 99 -1101 -462 99 -1100 chain ["pillar_axis":"z"] replace end_rod

execute as @p run execute if block -464 98 -1096 minecraft:chain run fill -462 99 -1096 -462 99 -1095 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -464 98 -1096 minecraft:barrier run fill -462 99 -1096 -462 99 -1095 chain ["pillar_axis":"z"] replace end_rod


execute as @p run execute if block -464 98 -1096 minecraft:chain run setblock -464 99 -1093 end_rod ["facing_direction":4]
execute as @p run execute if block -464 98 -1096 minecraft:barrier run setblock -464 99 -1093 chain ["pillar_axis":"x"]

execute as @p run execute if block -464 98 -1096 minecraft:chain run setblock -464 99 -1103 end_rod ["facing_direction":4]
execute as @p run execute if block -464 98 -1096 minecraft:barrier run setblock -464 99 -1103 chain ["pillar_axis":"x"]


execute as @p run execute if block -464 98 -1096 minecraft:chain run setblock -464 98 -1096 end_rod
execute as @p run execute if block -464 98 -1096 minecraft:barrier run setblock -464 98 -1096 chain




