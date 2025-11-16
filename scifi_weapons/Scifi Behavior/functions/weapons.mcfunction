
scoreboard players add @p[tag=flame_thrower] flame_thrower 1
execute @p[tag=flame_thrower,scores={flame_thrower=1}] ~ ~ ~ event entity @p[tag=flame_thrower] sp:n_fireball_shoot
execute @p[tag=flame_thrower,scores={flame_thrower=1}] ~ ~ ~ playsound nitric.music.flame_thrower @a[r=20]
execute @p[tag=flame_thrower,scores={flame_thrower=1}] ~ ~ ~ particle minecraft:campfire_smoke_particle ^ ^1 ^0.5
tag @p[tag=flame_thrower,scores={flame_thrower=80}] add removetimebld
tag @p[tag=flame_thrower,scores={flame_thrower=80}] remove flame_thrower
scoreboard players set @p[tag=removetimebld,scores={flame_thrower=80}] flame_thrower 0
tag @p remove removetimebld

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
scoreboard players add @p[tag=sniper] sniper 1
execute @p[tag=sniper,scores={sniper=10}] ~ ~ ~ event entity @p[tag=sniper] sp:n_sniper_shoot
execute @p[tag=sniper,scores={sniper=10}] ~ ~ ~ playsound nitric.music.sniper @a[r=20]
execute @p[tag=sniper,scores={sniper=10}] ~ ~ ~ particle minecraft:basic_flame_particle ^ ^1.2 ^0.5
tag @p[tag=sniper,scores={sniper=60}] add removetimeblfd
tag @p[tag=sniper,scores={sniper=60}] remove sniper
scoreboard players set @p[tag=removetimeblfd,scores={sniper=60}] sniper 0
tag @p remove removetimeblfd

scoreboard players add @p[tag=executive_pistol] executive_pistol 1
execute @p[tag=executive_pistol,scores={executive_pistol=1}] ~ ~ ~ event entity @p[tag=executive_pistol] sp:n_executive_pistol_shoot
execute @p[tag=executive_pistol,scores={executive_pistol=1}] ~ ~ ~ playsound nitric.music.executive_pistol @a[r=20]
execute @p[tag=executive_pistol,scores={executive_pistol=1}] ~ ~ ~ particle minecraft:basic_flame_particle ^ ^0.5 ^0.3
tag @p[tag=executive_pistol,scores={executive_pistol=40}] add removetimeblfdg
tag @p[tag=executive_pistol,scores={executive_pistol=40}] remove executive_pistol
scoreboard players set @p[tag=removetimeblfdg,scores={executive_pistol=40}] executive_pistol 0
tag @p remove removetimeblfdg


scoreboard players add @p[tag=freeze_rifle] freeze_rifle 1
execute @p[tag=freeze_rifle,scores={freeze_rifle=1}] ~ ~ ~ event entity @p[tag=freeze_rifle] sp:n_freeze_rifle_shoot
execute @p[tag=freeze_rifle,scores={freeze_rifle=1}] ~ ~ ~ playsound nitric.music.freeze_rifle @a[r=20]
execute @p[tag=freeze_rifle,scores={freeze_rifle=1}] ~ ~ ~ particle nitric:freeze_rifle ^ ^0.5 ^0.3
tag @p[tag=freeze_rifle,scores={freeze_rifle=40}] add removeti
tag @p[tag=freeze_rifle,scores={freeze_rifle=40}] remove freeze_rifle
scoreboard players set @p[tag=removeti,scores={freeze_rifle=40}] freeze_rifle 0
tag @p remove removeti
execute @e[type=nitric:freeze_shoot] ~ ~ ~ effect @e[tag=!freeze_rifle,r=2.3,type=!player] slowness 5 255 true
execute @e[type=nitric:freeze_shoot] ~ ~ ~ effect @e[tag=!freeze_rifle,r=2.3,type=!player] speed 5 1



execute @p[tag=laser] ~ ~ ~ execute @e[type=!item,r=5,type=!player] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ fire 0 replace air
execute @p[tag=laser] ~ ~ ~ fill ^ ^1 ^2 ^ ^1 ^2 fire 0 replace air
execute @p[tag=laser] ~ ~ ~ fill ^ ^ ^2 ^ ^ ^2 fire 0 replace air
execute @p[tag=laser] ~ ~ ~ fill ^ ^2 ^2 ^ ^2 ^2 fire 0 replace air
execute @p[tag=laser] ~ ~ ~ tag @p[tag=laser] remove laser


scoreboard players add @p[tag=big_pistol] big_pistol 1
execute @p[tag=big_pistol,scores={big_pistol=1}] ~ ~ ~ event entity @p[tag=big_pistol] sp:n_big_pistol_shoot
execute @p[tag=big_pistol,scores={big_pistol=1}] ~ ~ ~ playsound nitric.music.big_pistol @a[r=20]
execute @p[tag=big_pistol,scores={big_pistol=1}] ~ ~ ~ particle minecraft:basic_flame_particle ^ ^0.5 ^0.3
tag @p[tag=big_pistol,scores={big_pistol=20}] add removetimlfdgt
tag @p[tag=big_pistol,scores={big_pistol=20}] remove big_pistol
scoreboard players set @p[tag=removetimlfdgt,scores={big_pistol=20}] big_pistol 0
tag @p remove removetimlfdgt

scoreboard players add @p[tag=mega_blaster] mega_blaster 1
execute @p[tag=mega_blaster,scores={mega_blaster=1}] ~ ~ ~ event entity @p[tag=mega_blaster] sp:n_mega_blaster_shoot
execute @p[tag=mega_blaster,scores={mega_blaster=1}] ~ ~ ~ playsound nitric.music.mega_blaster @a[r=20]
execute @p[tag=mega_blaster,scores={mega_blaster=1}] ~ ~ ~ particle nitric:mega_blaster3 ^ ^0.5 ^0.3
tag @p[tag=mega_blaster,scores={mega_blaster=40}] add removetim
tag @p[tag=mega_blaster,scores={mega_blaster=40}] remove mega_blaster
scoreboard players set @p[tag=removetim,scores={mega_blaster=40}] mega_blaster 0
tag @p remove removetim

scoreboard players add @p[tag=automatic_laser_rifle] automatic_laser_rifle 1
execute @p[tag=automatic_laser_rifle,scores={automatic_laser_rifle=1..}] ~ ~ ~ event entity @p[tag=automatic_laser_rifle] sp:n_automatic_laser_shoot
execute @p[tag=automatic_laser_rifle,scores={automatic_laser_rifle=1..}] ~ ~ ~ playsound nitric.music.automatic_laser_rifle @a[r=20]
execute @p[tag=automatic_laser_rifle,scores={automatic_laser_rifle=1}] ~ ~ ~ particle nitric:automatic_laser_rifle ^ ^0.5 ^0.3
tag @p[tag=automatic_laser_rifle,scores={automatic_laser_rifle=20}] add removetims
tag @p[tag=automatic_laser_rifle,scores={automatic_laser_rifle=20}] remove automatic_laser_rifle
scoreboard players set @p[tag=removetims,scores={automatic_laser_rifle=20}] automatic_laser_rifle 0
tag @p remove removetims

scoreboard players add @p[tag=heat_sinking_rifle] heat_sinking_rifle 1
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=1}] ^ ^1.5 ^6 tag @e[tag=!heat_sinking_rifle,type=!item,c=1,family=mob] add victim
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=1}] ~ ~ ~ event entity @p[tag=heat_sinking_rifle] sp:n_heat_sinking_rifle
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=2}] ~ ~ ~ event entity @p[tag=heat_sinking_rifle] sp:n_heat_sinking_rifle
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=3}] ~ ~ ~ event entity @p[tag=heat_sinking_rifle] sp:n_heat_sinking_rifle
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=1}] ~ ~ ~ playsound nitric.music.heat_sinking_rifle @a[r=20]
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=1}] ~ ~ ~ particle nitric:heat_sinking_rifle ^ ^0.5 ^0.3
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=2}] ~ ~ ~ playsound nitric.music.heat_sinking_rifle @a[r=20]
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=2}] ~ ~ ~ particle nitric:heat_sinking_rifle ^ ^0.5 ^0.3
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=3}] ~ ~ ~ playsound nitric.music.heat_sinking_rifle @a[r=20]
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=3}] ~ ~ ~ particle nitric:heat_sinking_rifle ^ ^0.5 ^0.3
execute @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=80}] ~ ~ ~ tag @e remove victim
tag @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=80}] add removetims
tag @p[tag=heat_sinking_rifle,scores={heat_sinking_rifle=80}] remove heat_sinking_rifle
scoreboard players set @p[tag=removetims,scores={heat_sinking_rifle=80}] heat_sinking_rifle 0
tag @p remove removetims
execute @e[tag=victim] ~ ~ ~ particle nitric:victim ~ ~ ~
execute @e[type=nitric:heat_sinking_shoot] ~ ~ ~ tp @s ^ ^ ^0.39 facing @e[tag=victim]  

scoreboard players add @p[tag=pistol] pistol 1
execute @p[tag=pistol,scores={pistol=1}] ~ ~ ~ event entity @p[tag=pistol] sp:n_pistol_shoot
execute @p[tag=pistol,scores={pistol=1}] ~ ~ ~ playsound nitric.music.pistol @a[r=20]
execute @p[tag=pistol,scores={pistol=1}] ~ ~ ~ particle minecraft:basic_flame_particle ^ ^0.5 ^0.3
tag @p[tag=pistol,scores={pistol=11}] add removetimlfdgth
tag @p[tag=pistol,scores={pistol=11}] remove pistol
scoreboard players set @p[tag=removetimlfdgth,scores={pistol=11}] pistol 0
tag @p remove removetimlfdgth

scoreboard players add @p[tag=dimensional_transporter] dimensional_transporter 1
execute @p[tag=dimensional_transporter,scores={dimensional_transporter=2}] ~ ~ ~ playsound nitric.music.dimensional_transporter @a[r=15]
execute @p[tag=dimensional_transporter,scores={dimensional_transporter=2}] ~ ~ ~ particle nitric:transportation
execute @p[tag=dimensional_transporter,scores={dimensional_transporter=2}] ~ ~ ~ spreadplayers ~ ~ 30 45 @e[rm=0.1,r=13,family=!npc]  
tag @p[tag=dimensional_transporter,scores={dimensional_transporter=250}] add removetimetrois
tag @p[tag=dimensional_transporter,scores={dimensional_transporter=250}] remove dimensional_transporter
scoreboard players set @p[tag=removetimetrois,scores={dimensional_transporter=250}] dimensional_transporter 0
tag @p remove removetimetrois

scoreboard players add @p[tag=flash_rifle] flash_rifle 1
execute @p[tag=flash_rifle,scores={flash_rifle=2}] ~ ~ ~ playsound nitric.music.flash_rifle @a[r=15]
execute @p[tag=flash_rifle,scores={flash_rifle=2}] ~ ~ ~ effect @e[rm=0.01,r=12] blindness 5 255 true
execute @p[tag=flash_rifle,scores={flash_rifle=2}] ~ ~ ~ particle nitric:flash ~ ~ ~
tag @p[tag=flash_rifle,scores={flash_rifle=150}] add removetimetroiss
tag @p[tag=flash_rifle,scores={flash_rifle=150}] remove flash_rifle
scoreboard players set @p[tag=removetimetroiss,scores={flash_rifle=150}] flash_rifle 0
tag @p remove removetimetroiss


