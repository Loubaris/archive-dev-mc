
execute as @p run execute if block -466 98 -1082 minecraft:end_rod run setblock -466 98 -1082 barrier

execute as @p run execute if block -466 98 -1082 minecraft:chain run playsound note.pling @a[r=10]
execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -467 97 -1083 end_rod
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -467 97 -1083 chain

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -468 99 -1084 end_rod
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -468 99 -1084 chain

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -469 100 -1079 end_rod ["facing_direction":4]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -469 100 -1079 chain ["pillar_axis":"x"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -465 100 -1079 end_rod ["facing_direction":4]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -465 100 -1079 chain ["pillar_axis":"x"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -469 100 -1087 end_rod ["facing_direction":4]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -469 100 -1087 chain ["pillar_axis":"x"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -465 100 -1087 end_rod ["facing_direction":4]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -465 100 -1087 chain ["pillar_axis":"x"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -471 100 -1081 end_rod ["facing_direction":3]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -471 100 -1081 chain ["pillar_axis":"z"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -471 100 -1085 end_rod ["facing_direction":3]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -471 100 -1085 chain ["pillar_axis":"z"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -463 100 -1085 end_rod ["facing_direction":3]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -463 100 -1085 chain ["pillar_axis":"z"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -463 100 -1081 end_rod ["facing_direction":3]
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -463 100 -1081 chain ["pillar_axis":"z"]

execute as @p run execute if block -466 98 -1082 minecraft:chain run setblock -466 98 -1082 end_rod
execute as @p run execute if block -466 98 -1082 minecraft:barrier run setblock -466 98 -1082 chain
