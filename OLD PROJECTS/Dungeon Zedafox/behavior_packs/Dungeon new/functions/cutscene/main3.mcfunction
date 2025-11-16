scoreboard players add @e[type=zedafox:help] cutscene 1
scoreboard players add @e[type=zedafox:help] noanswer 1

// SCENE DE LA MARCHE SUR LA PLAGE

scoreboard players set @s[type=zedafox:help,scores={cutscene=720}] noanswer 720

scoreboard players set @s[type=zedafox:help,scores={cutscene=770}] noanswer 770
execute @s[type=zedafox:help,scores={cutscene=770}] ~ ~ ~ tag @s remove verified 

execute @s[scores={cutscene=690}] ~ ~ ~ function cutscene/love/scene11
execute @s[scores={cutscene=695}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.walk_kaley
execute @s[scores={cutscene=695}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.walk_kaley
execute @s[scores={cutscene=695}] ~ ~ ~ scoreboard players set @e[tag=fake1] is_walking 83
execute @s[scores={cutscene=695}] ~ ~ ~ scoreboard players set @e[tag=fake2] is_walking 83
execute @s[scores={cutscene=750}] ~ ~ ~ dialogue open @e[type=npc,tag=chat11] @a
execute @s[scores={cutscene=750}] ~ ~ ~ function cutscene/love/scene13
execute @s[scores={cutscene=780}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.question
execute @s[scores={cutscene=790}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.hand_behind

scoreboard players set @s[scores={cutscene=792}] cutscene 791

// PAS DE REPONSE

execute @s[tag=!verified,scores={noanswer=940}] ~ ~ ~ scoreboard players set @s cutscene 793
execute @s[tag=!verified,scores={noanswer=940}] ~ ~ ~ scoreboard players set @s choice 2
execute @s[tag=!verified,scores={noanswer=920}] ~ ~ ~ summon npc 155 27 495
execute @s[tag=!verified,scores={noanswer=920}] ~ ~ ~ tag @e[type=npc,x=155,y=27,z=495,c=1] add remove
execute @s[tag=!verified,scores={noanswer=922}] ~ ~ ~ dialogue open @e[type=npc,tag=remove] @a
execute @s[tag=!verified,scores={noanswer=922}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"text":"§c§lYOU TOOK TOO LONG TO REACT\n§r§7             React faster!"}]}
execute @s[scores={noanswer=923}] ~ ~ ~ event entity @e[type=npc,tag=remove] to_death
tag @s[scores={noanswer=1000}] remove verified

// PROPOSITION 1 - BUILD A SANDCASTLE

execute @s[scores={cutscene=820,choice=1}] ~ ~ ~ function transition/size1
execute @s[scores={cutscene=840,choice=1}] ~ ~ ~ function cutscene/love/scene19
execute @s[scores={cutscene=880,choice=1}] ~ ~ ~ summon zedafox:sandcastle 147 36 502
execute @s[scores={cutscene=940,choice=1}] ~ ~ ~ function transition/size3

// PROPOSITION 2 - RUN ON THE SAND

execute @s[scores={cutscene=800,choice=2}] ~ ~ ~ function cutscene/love/scene12
execute @s[scores={cutscene=820,choice=2}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.tagging
execute @s[scores={cutscene=825,choice=2}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_tagged
execute @s[scores={cutscene=830,choice=2}] ~ ~ ~ scoreboard players set @e[tag=fake1] is_running 120
execute @s[scores={cutscene=855,choice=2}] ~ ~ ~ scoreboard players set @e[tag=fake2] is_running 120
execute @s[scores={cutscene=870,choice=2}] ~ ~ ~ function cutscene/love/scene14
execute @s[scores={cutscene=940,choice=2}] ~ ~ ~ function transition/size3

// PROPOSITION 3 - Walk and speak

execute @s[scores={cutscene=800,choice=3}] ~ ~ ~ function cutscene/love/scene12
execute @s[scores={cutscene=820,choice=3}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.kernel_walkandspeak
execute @s[scores={cutscene=825,choice=3}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_walkandspeak
execute @s[scores={cutscene=825,choice=3}] ~ ~ ~ scoreboard players set @e[tag=fake1] is_walking 220
execute @s[scores={cutscene=825,choice=3}] ~ ~ ~ scoreboard players set @e[tag=fake2] is_walking 220
execute @s[scores={cutscene=870,choice=3}] ~ ~ ~ function cutscene/love/scene16
execute @s[scores={cutscene=940,choice=3}] ~ ~ ~ function transition/size3
