scoreboard players add @e[type=zedafox:help] cutscene 1
scoreboard players add @e[type=zedafox:help] noanswer 1
execute @e[tag=fake2,scores={sing=1..}] ~ ~ ~ function entity/is_singing

// SCENE DE RENCONTRE - a opti

execute @s[scores={cutscene=2}] ~ ~ ~ function cutscene/love/scene1

execute @s[scores={cutscene=100}] ~ ~ ~ function cutscene/love/scene2

execute @s[scores={cutscene=120}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.shy

// ACTION DE DEMANDE

execute @s[scores={cutscene=120}] ~ ~ ~ dialogue open @e[type=npc,tag=chat6] @a
scoreboard players set @s[scores={cutscene=123}] cutscene 122

// PAS DE REPONSE

execute @s[tag=!verified,scores={noanswer=270}] ~ ~ ~ scoreboard players set @s cutscene 124
execute @s[tag=!verified,scores={noanswer=270}] ~ ~ ~ scoreboard players random @s choice 1 3
execute @s[tag=!verified,scores={noanswer=250}] ~ ~ ~ function cutscene/remove_buttons
execute @s[tag=!verified,scores={noanswer=252}] ~ ~ ~ dialogue open @e[type=npc,tag=remove] @a
execute @s[tag=!verified,scores={noanswer=252}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"text":"§c§lYOU TOOK TOO LONG TO REACT\n§r§7             React faster!"}]}
execute @s[scores={noanswer=253}] ~ ~ ~ event entity @e[type=npc,tag=remove] to_death
tag @s[scores={noanswer=280}] remove verified

// PROPOSITION 1

execute @s[scores={cutscene=126}] ~ ~ ~ function cutscene/love/scene3
execute @s[scores={cutscene=170,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.question
execute @s[scores={cutscene=200,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.negotiation
execute @s[scores={cutscene=240,choice=1}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.yes
execute @s[scores={cutscene=260,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.happy

// PROPOSITION 2

execute @s[scores={cutscene=170,choice=2}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.hand_behind
execute @s[scores={cutscene=200,choice=2}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.you
execute @s[scores={cutscene=200,choice=2}] ~ ~ ~ particle zedafox:flower2 383 108.5 497
execute @s[scores={cutscene=240,choice=2}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.happy2

// PROPOSITION 3

execute @s[scores={cutscene=170,choice=3}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.sing
execute @s[scores={cutscene=170,choice=3}] ~ ~ ~ scoreboard players set @e[tag=fake2] sing 40
execute @s[scores={cutscene=240,choice=3}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.touched

//

execute @s[scores={cutscene=220}] ~ ~ ~ function cutscene/love/scene4
execute @s[scores={cutscene=280}] ~ ~ ~ function transition/size3


// SCENE DU RESTAURANT

execute @s[scores={cutscene=320}] ~ ~ ~ function cutscene/love/scene5
execute @s[scores={cutscene=460}] ~ ~ ~ dialogue open @e[type=npc,tag=chat7] @a
execute @s[scores={cutscene=400}] ~ ~ ~ playanimation @e[tag=fake3] animation.wave.turn_and_see
execute @s[scores={cutscene=380}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.long_talking
execute @s[scores={cutscene=460}] ~ ~ ~ function cutscene/love/scene6
execute @s[scores={cutscene=480}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.talking

scoreboard players set @s[type=zedafox:help,scores={cutscene=480}] noanswer 480