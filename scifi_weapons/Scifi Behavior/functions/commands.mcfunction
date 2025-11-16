function weapons
scoreboard players add @a[tag=starttuto,tag=!starttuto2] timer 1
scoreboard players add @a[tag=starttuto2,tag=!starttuto3,tag=!starttuto4,scores={timer=..801}] timer 1
scoreboard players add @a[tag=starttuto3,tag=!starttuto4,scores={timer=..151}] timer 1
scoreboard players add @a[tag=starttuto4,scores={timer=..3723}] timer 1
execute @a[tag=starttuto,scores={timer=20}] ~ ~ ~ playsound nitric.music.garagedoor @a
execute @a[tag=starttuto,scores={timer=20}] ~ ~ ~ fill 111 157 99 107 157 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=20}] ~ ~ ~ fill 111 156 99 107 156 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=40}] ~ ~ ~ fill 111 155 99 107 155 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=50}] ~ ~ ~ fill 111 154 99 107 154 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=60}] ~ ~ ~ fill 111 153 99 107 153 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=20}] ~ ~ ~ fill 121 157 99 117 157 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=20}] ~ ~ ~ fill 121 156 99 117 156 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=40}] ~ ~ ~ fill 121 155 99 117 155 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=50}] ~ ~ ~ fill 121 154 99 117 154 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=60}] ~ ~ ~ fill 121 153 99 117 153 99 quartz_block 2
execute @a[tag=starttuto,scores={timer=100}] ~ ~ ~ playsound nitric.music.notification @a
execute @a[tag=starttuto,scores={timer=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPlease proceed to the §r§lWeapon Show Case Room"}]}
execute @a[tag=starttuto,scores={timer=111}] ~ ~ ~ tag @a remove starttuto

execute @a[r=5,x=154,y=146,z=103] ~ ~ ~ tag @a add starttuto2
execute @a[r=5,x=154,y=146,z=103,tag=!starttuto2] ~ ~ ~ scoreboard players set @a timer 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 156 152 113
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 167 152 113
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 195 152 109
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 195 152 97
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 166 152 93
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 156 152 113
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:smoke 156 152 96

execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=130}] ~ ~ ~ playsound nitric.music.garagedoor @a
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=130}] ~ ~ ~ fill 167 148 92 155 148 92 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=140}] ~ ~ ~ fill 167 149 92 155 149 92 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=150}] ~ ~ ~ fill 167 150 92 155 150 92 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=160}] ~ ~ ~ fill 167 151 92 155 151 92 air 0

execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=130}] ~ ~ ~ fill 167 148 114 155 148 114 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=140}] ~ ~ ~ fill 167 149 114 155 149 114 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=150}] ~ ~ ~ fill 167 150 114 155 150 114 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=160}] ~ ~ ~ fill 167 151 114 155 151 114 air 0

execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=130}] ~ ~ ~ fill 196 149 110 196 149 96 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=140}] ~ ~ ~ fill 196 150 110 196 150 96 air 0
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=150}] ~ ~ ~ fill 196 151 110 196 151 96 air 0

execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aIn this room you can select which blaster to use. You can interact with the button infront of each display case to equip that blaster, after the tutorial"}]}
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aEach blaster is designed for different things, please note the information board behind each blaster explaining each feature"}]}
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=800}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPlease interact with the button behind the staircase you came in on to continue the tutorial"}]}
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=200}] ~ ~ ~ playsound nitric.music.notification @a
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=320}] ~ ~ ~ playsound nitric.music.notification @a
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=800}] ~ ~ ~ playsound nitric.music.notification @a
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=800}] ~ ~ ~ setblock 134 146 103 emerald_block
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=800}] ~ ~ ~ setblock 134 147 103 stone_button 1 

execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 157 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 163 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 169 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 175 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 181 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 187 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 157 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 163 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 169 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 175 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 181 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ particle nitric:poof 187 147 111

execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_dimensional_transporter 157 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_executive_pistol 163 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_flame_thrower 169 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_flash_rifle 175 147 95
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_heat_sinking_rifle 189 147 103
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_automatic_laser_rifle 181 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_big_pistol 157 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_laser 163 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_mega_blaster 169 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_pistol 175 147 111
execute @a[c=1,tag=starttuto2,tag=!starttuto4,tag=!starttuto3,scores={timer=120}] ~ ~ ~ summon nitric:i_sniper 181 147 95

execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=1}] ~ ~ ~ playsound nitric.music.garagedoor @a
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=1}] ~ ~ ~ fill 132 146 100 132 146 106 air
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=6}] ~ ~ ~ fill 132 147 100 132 147 106 air
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=12}] ~ ~ ~ fill 132 148 100 132 148 106 air
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=18}] ~ ~ ~ fill 132 149 100 132 149 106 air
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=24}] ~ ~ ~ fill 132 150 100 132 150 106 air

execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=40}] ~ ~ ~ scoreboard players set @s timer 85
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=100}] ~ ~ ~ effect @a blindness 3 255 true
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=100}] ~ ~ ~ effect @a slowness 3 255 true
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=100}] ~ ~ ~ effect @a nausea 8 255 true
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=141}] ~ ~ ~ playsound mob.shulker.teleport @a
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=141}] ~ ~ ~ setblock 134 147 103 air
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=141}] ~ ~ ~ setblock 134 146 103 light_gray_carpet
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=141}] ~ ~ ~ tp @a 150 89 -54 facing 150 90.5 -60
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=146}] ~ ~ ~ particle nitric:smoke ~ ~ ~
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=148}] ~ ~ ~ effect @a clear
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aHere you will use each weapon for 15 seconds agaisnt a variety of enemies. Interact with the button to begin"}]}
execute @a[c=1,tag=starttuto3,tag=!starttuto4,scores={timer=150}] ~ ~ ~ playsound nitric.music.notification @a

execute @a[c=1,tag=starttuto4,scores={timer=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aStarting.."}]}
execute @a[c=1,tag=starttuto4,scores={timer=5}] ~ ~ ~ playsound nitric.music.notification @a
execute @a[c=1,tag=starttuto4,scores={timer=5}] ~ ~ ~ effect @a resistance 210 255 true
execute @a[c=1,tag=starttuto4,scores={timer=5}] ~ ~ ~ give @a nitric:pistol
execute @a[c=1,tag=starttuto4,scores={timer=5}] ~ ~ ~ give @a nitric:laser
execute @a[c=1,tag=starttuto4,scores={timer=40}] ~ ~ ~ summon zombie 135 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 135 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 135 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 165 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 165 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 165 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 165 92 -59
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 159 89 -68
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 141 89 -68
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 159 89 -68
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 159 89 -68
execute @a[c=1,tag=starttuto4,scores={timer=60}] ~ ~ ~ summon zombie 141 89 -68
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ summon zombie 141 89 -68

execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ clear @a nitric:pistol
execute @a[c=1,tag=starttuto4,scores={timer=300}] ~ ~ ~ give @a nitric:big_pistol

execute @a[c=1,tag=starttuto4,scores={timer=600}] ~ ~ ~ clear @a nitric:big_pistol
execute @a[c=1,tag=starttuto4,scores={timer=600}] ~ ~ ~ give @a nitric:executive_pistol

execute @a[c=1,tag=starttuto4,scores={timer=900}] ~ ~ ~ clear @a nitric:executive_pistol
execute @a[c=1,tag=starttuto4,scores={timer=900}] ~ ~ ~ give @a nitric:freeze_rifle

execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ clear @a nitric:freeze_rifle
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ give @a nitric:sniper
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=1200}] ~ ~ ~ summon zombie 146 89 -84

execute @a[c=1,tag=starttuto4,scores={timer=1800}] ~ ~ ~ clear @a nitric:sniper
execute @a[c=1,tag=starttuto4,scores={timer=1800}] ~ ~ ~ give @a nitric:flame_thrower

execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ clear @a nitric:flame_thrower
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ give @a nitric:heat_sinking_rifle
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 154 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=2400}] ~ ~ ~ summon zombie 146 89 -84

execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ clear @a nitric:heat_sinking_rifle
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ give @a nitric:automatic_laser_rifle
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84
execute @a[c=1,tag=starttuto4,scores={timer=3000}] ~ ~ ~ summon zombie 146 89 -84


execute @a[c=1,tag=starttuto4,scores={timer=3300}] ~ ~ ~ clear @a nitric:automatic_laser_rifle
execute @a[c=1,tag=starttuto4,scores={timer=3300}] ~ ~ ~ give @a nitric:mega_blaster

execute @a[c=1,tag=starttuto4,scores={timer=3700}] ~ ~ ~ clear @a
execute @a[c=1,tag=starttuto4,scores={timer=3700}] ~ ~ ~ kill @e[family=mob,x=135,y=92,z=-69,r=25]
execute @a[c=1,tag=starttuto4,scores={timer=3700}] ~ ~ ~ effect @a blindness 1 255 true
execute @a[c=1,tag=starttuto4,scores={timer=3700}] ~ ~ ~ fill 148 89 -43 152 93 -43 air
execute @a[c=1,tag=starttuto4,scores={timer=3700}] ~ ~ ~ title @a title §aTutorial Over
execute @a[c=1,tag=starttuto4,scores={timer=3700}] ~ ~ ~ playsound nitric.music.notification @a
execute @a[c=1,tag=starttuto4,scores={timer=3710}] ~ ~ ~ tp @a 114 154 112
execute @a[c=1,tag=starttuto4,scores={timer=3710}] ~ ~ ~ kill @e[type=nitric:flying_text]
execute @a[c=1,tag=starttuto4,scores={timer=3720}] ~ ~ ~ effect @a clear
execute @a[c=1,tag=starttuto4,scores={timer=3720}] ~ ~ ~ fill 157 146 102 157 148 104 stonebrick
execute @a[c=1,tag=starttuto4,scores={timer=3720}] ~ ~ ~ setblock 156 146 103 dark_oak_button 4
execute @a[c=1,tag=starttuto4,scores={timer=3720}] ~ ~ ~ clone 158 143 103 158 143 103 156 147 103

execute @e[type=nitric:fireball,x=174,y=146,z=103,r=20] ~ ~ ~ title @a[r=20] actionbar §cDon't use that here
execute @e[type=nitric:fireball,x=174,y=146,z=103,r=20] ~ ~ ~ kill @s

execute @e[type=nitric:heat_sinking_shoot,x=174,y=146,z=103,r=20] ~ ~ ~ title @a[r=20] actionbar §cDon't use that here
execute @e[type=nitric:heat_sinking_shoot,x=174,y=146,z=103,r=20] ~ ~ ~ kill @s

execute @e[type=nitric:mega_blaster_shoot,x=174,y=146,z=103,r=20] ~ ~ ~ title @a[r=20] actionbar §cDon't use that here
execute @e[type=nitric:mega_blaster_shoot,x=174,y=146,z=103,r=20] ~ ~ ~ kill @s




