scoreboard players add @s cutscene 1
scoreboard players add @s noanswer 1

// ACTION DE DEMANDE - RESTAURANT

scoreboard players set @s[scores={cutscene=483}] cutscene 482

// PAS DE REPONSE

execute @s[tag=!verified,scores={noanswer=650}] ~ ~ ~ scoreboard players set @s cutscene 484
execute @s[tag=!verified,scores={noanswer=650}] ~ ~ ~ scoreboard players set @s chocie 2
execute @s[tag=!verified,scores={noanswer=630}] ~ ~ ~ function cutscene/remove_buttons
execute @s[tag=!verified,scores={noanswer=632}] ~ ~ ~ dialogue open @e[type=npc,tag=remove] @a
execute @s[tag=!verified,scores={noanswer=632}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"text":"§c§lYOU TOOK TOO LONG TO REACT\n§r§7             React faster!"}]}
execute @s[scores={noanswer=633}] ~ ~ ~ event entity @e[type=npc,tag=remove] to_death
tag @s[scores={noanswer=680}] remove verified

// PROPOSITION 1 - TELL A JOKE

execute @s[scores={cutscene=486,choice=1}] ~ ~ ~ function cutscene/love/scene7
execute @s[scores={cutscene=486,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.talking
execute @s[scores={cutscene=540,choice=1}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.laugh
execute @s[scores={cutscene=560,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.scoffing

// PROPOSITION 2 - ORDER A CAKE

execute @s[scores={cutscene=486,choice=2}] ~ ~ ~ function cutscene/love/scene9
execute @s[scores={cutscene=520,choice=2}] ~ ~ ~ function cutscene/love/scene8
execute @s[scores={cutscene=530,choice=2}] ~ ~ ~ playanimation @e[tag=fake5] animation.wave.behind_wall
execute @s[scores={cutscene=530,choice=2}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.hesitation
execute @s[scores={cutscene=570,choice=2}] ~ ~ ~ function cutscene/love/scene10
execute @s[scores={cutscene=570,choice=2}] ~ ~ ~ execute @e[tag=fake5] ~ ~ ~ tp @s ~ ~ ~ 180 
execute @s[scores={cutscene=580,choice=2}] ~ ~ ~ playanimation @e[tag=fake5] animation.wave.scene_with_cake
execute @s[scores={cutscene=620,choice=2}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.turn_and_see
execute @s[scores={cutscene=620,choice=2}] ~ ~ ~ summon zedafox:cake 405 30 470
execute @s[scores={cutscene=650}] ~ ~ ~ function transition/size3


// PROPOSITION 3 - GO TO TOILET