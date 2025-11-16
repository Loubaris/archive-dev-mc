execute as @p[tag=!garageanim,tag=!garageclose] if block -444 95 -1088 minecraft:quartz_block run tag @p add garageclose
execute as @p[tag=!garageanim,tag=!garageclose] if block -444 95 -1088 minecraft:air run tag @p add garageanim
playsound tile.piston.in @a[r=10]
