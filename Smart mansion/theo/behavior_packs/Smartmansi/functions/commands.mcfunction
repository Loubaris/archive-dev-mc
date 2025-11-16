scoreboard objectives add garagetime dummy

scoreboard players add @p[tag=garageanim] garagetime 1
execute as @p[tag=garageanim,scores={garagetime=1}] run fill -444 98 -1098 -444 98 -1088 quartz_block ["chisel_type":"lines"]
execute as @p[tag=garageanim,scores={garagetime=10}] run fill -444 97 -1098 -444 97 -1088 quartz_block ["chisel_type":"lines"]
execute as @p[tag=garageanim,scores={garagetime=20}] run fill -444 96 -1098 -444 96 -1088 quartz_block ["chisel_type":"lines"]
execute as @p[tag=garageanim,scores={garagetime=30}] run fill -444 95 -1098 -444 95 -1088 quartz_block ["chisel_type":"lines"]
execute as @p[tag=garageanim,scores={garagetime=40}] run fill -444 94 -1098 -444 94 -1088 quartz_block ["chisel_type":"lines"]
execute as @p[tag=garageanim,scores={garagetime=50}] run fill -444 93 -1098 -444 93 -1088 quartz_block ["chisel_type":"lines"]
execute as @p[tag=garageanim,scores={garagetime=52}] run tag @a[tag=garageanim] remove garageanim
scoreboard players set @a[scores={garagetime=52..}] garagetime 0

scoreboard players add @p[tag=garageclose] garagetime 1
execute as @p[tag=garageclose,scores={garagetime=50}] run fill -444 98 -1098 -444 98 -1088 air
execute as @p[tag=garageclose,scores={garagetime=40}] run fill -444 97 -1098 -444 97 -1088 air
execute as @p[tag=garageclose,scores={garagetime=30}] run fill -444 96 -1098 -444 96 -1088 air
execute as @p[tag=garageclose,scores={garagetime=20}] run fill -444 95 -1098 -444 95 -1088 air
execute as @p[tag=garageclose,scores={garagetime=10}] run fill -444 94 -1098 -444 94 -1088 air
execute as @p[tag=garageclose,scores={garagetime=1}] run fill -444 93 -1098 -444 93 -1088 air
execute as @p[tag=garageclose,scores={garagetime=52}] run tag @a[tag=garageclose] remove garageclose
scoreboard players set @a[scores={garagetime=52..}] garagetime 0


execute as @p[tag=hottub] run particle nitric:bubble -503 92 -1109

execute as @p[tag=hottub1] run particle nitric:bubble -445 92 -1043
execute as @p[tag=hottub1] run particle nitric:bubble -445 92 -1041