execute as @p run execute if block -464 106 -1098 minecraft:end_rod run setblock -464 106 -1098 barrier

execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -463 106 -1097 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run fill -462 107 -1094 -465 107 -1100 end_rod ["facing_direction":3] replace chain
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -464 105 -1096 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -454 106 -1090 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -455 107 -1089 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -456 106 -1090 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -455 105 -1090 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -455 106 -1091 end_rod
execute as @p run execute if block -464 106 -1098 minecraft:chain run setblock -464 106 -1098 end_rod

execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -463 106 -1097 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run fill -462 107 -1094 -465 107 -1100 chain ["pillar_axis":"z"] replace end_rod
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -464 105 -1096 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -454 106 -1090 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -455 107 -1089 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -456 106 -1090 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -455 105 -1090 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -455 106 -1091 chain
execute as @p run execute if block -464 106 -1098 minecraft:barrier run setblock -464 106 -1098 chain
