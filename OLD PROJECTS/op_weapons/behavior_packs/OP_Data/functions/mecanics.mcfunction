execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 151 62 927 151 4 995 snow
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 151 62 926 236 4 926 snow
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 236 62 926 236 3 995 snow
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 236 62 996 151 4 995 snow
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 235 4 994 152 4 926 snow
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 235 62 994 152 62 926 snow
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ setblock 191 11 963 crafting_table
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 199 5 960 199 10 961 ladder 5
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 188 5 960 188 10 961 ladder 4
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 193 5 966 194 10 966 ladder
execute @a[x=193,y=12,z=961,r=250] ~ ~ ~ fill 193 5 955 194 10 955 ladder 2
execute @a[x=193,y=12,z=961,r=80] ~ ~ ~ effect @p night_vision 8 25 true
execute @a[x=193,y=12,z=961,r=80,tag=!tutofinished] ~ ~ ~ effect @p resistance 5 255 true

execute @e[type=ninja:instanttnt,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:instanttnt] ~ ~ ~ effect @a[r=30] resistance 3 255 true
execute @e[type=ninja:instanttnt,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:fire_n_star,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:fire_n_star,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:instanttntmedium,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:instanttntmedium] ~ ~ ~ effect @a[r=30] resistance 3 255 true
execute @e[type=ninja:instanttntmedium,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:instanttnttwo,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:instanttnttwo] ~ ~ ~ effect @a[r=30] resistance 3 255 true
execute @e[type=ninja:instanttnttwo,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:instanttntthree,x=397,y=153,z=-52,r=130] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:instanttntthree] ~ ~ ~ effect @a[r=30] resistance 3 255 true
execute @e[type=ninja:instanttntthree,x=397,y=153,z=-52,r=130] ~ ~ ~ kill @s

execute @e[type=ninja:creeper,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:creeper,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:slimeball,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:slimeball,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:shulker_bullet,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:shulker_bullet,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:ln_star,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:ln_star,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:vortexball,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:vortexball,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:op_star,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:op_star,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[type=ninja:lightning_n_star,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @e[type=ninja:lightning_n_star,x=397,y=153,z=-52,r=100] ~ ~ ~ kill @s

execute @e[tag=mountainsword,x=397,y=153,z=-52,r=100] ~ ~ ~ title @p actionbar §cDon't use that here!
execute @a[tag=mountainsword,x=397,y=153,z=-52,r=100] ~ ~ ~ scoreboard players set @p timemountain 0
execute @e[tag=mountainsword,x=397,y=153,z=-52,r=100] ~ ~ ~ tag @s remove mountainsword

execute @a[x=397,y=153,z=-52,r=100] ~ ~ ~ detect ~ ~1 ~1 barrier 0 title @p actionbar §aFinish the tutorial to access the village
execute @a[x=397,y=153,z=-52,r=100] ~ ~ ~ detect ~ ~1 ~-1 barrier 0 title @p actionbar §aFinish the tutorial to access the village
execute @a[x=397,y=153,z=-52,r=100] ~ ~ ~ detect ~-1 ~1 ~ barrier 0 title @p actionbar §aFinish the tutorial to access the village
execute @a[x=397,y=153,z=-52,r=100] ~ ~ ~ detect ~1 ~1 ~ barrier 0 title @p actionbar §aFinish the tutorial to access the village

execute @a[x=394,y=153,z=-53,r=150,tag=tutofinished,tag=!barriernotopen] ~ ~ ~ function mecanics/barrieropen
execute @a[x=394,y=153,z=-53,r=150,tag=tutofinished,tag=!barriernotopen] ~ ~ ~ tag @a add barriernotopen


execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ effect @a[r=2] blindness 3 255 true
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ title @a[r=2] actionbar §7[§6Teleporting§7]
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ tag @a[r=2] add trainingroom
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ execute @a[r=2,tag=trainingroom] ~ ~ ~ kill @e[type=zombie]
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ execute @a[r=2,tag=trainingroom] ~ ~ ~ kill @e[type=vindicator]
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ execute @a[r=2,tag=trainingroom] ~ ~ ~ kill @e[type=skeleton]
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ execute @a[r=2,tag=trainingroom] ~ ~ ~ kill @e[type=item]
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ scoreboard players set @a[r=2] swordused 0
execute @e[x=394,y=153,z=-53,r=30,type=ninja:masterportal,tag=portallevel2] ~ ~ ~ tp @a[r=2] 193 12 960 facing 193 10 960

execute @e[type=ninja:masterportal,x=-2.50,y=4,z=0.61,r=3,tag=tpplayer] ~ ~ ~ tag @a[r=2] add join
execute @e[type=ninja:masterportal,x=-2.50,y=4,z=0.61,r=3,tag=tpplayer] ~ ~ ~ tag @a[r=2] add firsttalkok
execute @e[type=ninja:masterportal,x=-2.50,y=4,z=0.61,r=3] ~ ~ ~ tp @a[r=2] 390 153 -53

execute @e[type=vindicator] ~ ~ ~ setblock 193 65 961 gold_block
execute @e[type=zombie] ~ ~ ~ setblock 193 65 961 gold_block
execute @e[type=skeleton] ~ ~ ~ setblock 193 65 961 gold_block

execute @a[scores={trtp=2500}] ~ ~ ~ scoreboard players set @a[scores={trtp=2500}] swordused 35
execute @a[scores={trtp=2500}] ~ ~ ~ scoreboard players set @a[scores={trtp=2500}] trtp 3000


scoreboard players add @p[x=192,y=11,z=960,r=100,tag=givekit] trtp 1
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Nice job!"}]}
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ tp @p 375 156 -53
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ stopsound @p
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ effect @p clear
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ kill @e[type=zombie]
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ kill @e[type=vindicator]
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ kill @e[type=skeleton]
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ kill @e[type=item]
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ tag @p remove reset
execute @a[tag=givekit,scores={swordused=35,random=1}] ~ ~ ~ clear @p ninja:ninja_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=2}] ~ ~ ~ clear @p ninja:explosion_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=2}] ~ ~ ~ clear @p ninja:shulker_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=2}] ~ ~ ~ clear @p ninja:explosion_n_startwo -1 32
execute @a[tag=givekit,scores={swordused=35,random=3}] ~ ~ ~ clear @p ninja:asteroid_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=3}] ~ ~ ~ clear @p ninja:chicken_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=3}] ~ ~ ~ clear @p ninja:swift_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=3}] ~ ~ ~ clear @p ninja:explosion_n_startwo -1 32
execute @a[tag=givekit,scores={swordused=35,random=4}] ~ ~ ~ clear @p ninja:vortex_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=4}] ~ ~ ~ clear @p ninja:creeper_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=4}] ~ ~ ~ clear @p ninja:explosion_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=4}] ~ ~ ~ clear @p ninja:lightning_n_star -1 32
execute @a[tag=givekit,scores={swordused=35,random=4}] ~ ~ ~ clear @p ninja:shulker_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=5}] ~ ~ ~ clear @p ninja:fire_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=5}] ~ ~ ~ clear @p ninja:asteroid_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=5}] ~ ~ ~ clear @p ninja:fire_n_star -1 32
execute @a[tag=givekit,scores={swordused=35,random=5}] ~ ~ ~ clear @p ninja:explosion_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=6}] ~ ~ ~ clear @p ninja:lightning_n_star -1 16
execute @a[tag=givekit,scores={swordused=35,random=6}] ~ ~ ~ clear @p ninja:n_star -1 16
execute @a[tag=givekit,scores={swordused=35,random=6}] ~ ~ ~ clear @p ninja:explosion_n_star -1 16
execute @a[tag=givekit,scores={swordused=35,random=6}] ~ ~ ~ clear @p ninja:explosion_n_startwo -1 16
execute @a[tag=givekit,scores={swordused=35,random=6}] ~ ~ ~ clear @p ninja:explosion_n_starthree -1 16
execute @a[tag=givekit,scores={swordused=35,random=6}] ~ ~ ~ clear @p ninja:fire_n_star -1 16
execute @a[tag=givekit,scores={swordused=35,random=7}] ~ ~ ~ clear @p ninja:shulker_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=7}] ~ ~ ~ clear @p ninja:tank_hammer -1 1
execute @a[tag=givekit,scores={swordused=35,random=7}] ~ ~ ~ clear @p ninja:chicken_sword -1 1
execute @a[tag=givekit,scores={swordused=35,random=7}] ~ ~ ~ clear @p ninja:n_star -1 16
execute @a[tag=givekit,scores={swordused=35,random=8}] ~ ~ ~ clear @p ninja:explosion_n_starthree -1 10
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ replaceitem entity @p slot.armor.head 1 air
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ gamerule domobspawning true
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ gamerule dotiledrops true
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ gamerule domobloot true
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ scoreboard players set @p random 0
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ scoreboard players set @p trainingtime 0
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ tag @s remove trainingdetect
execute @a[tag=givekit,scores={swordused=35}] ~ ~ ~ tag @s remove givekit