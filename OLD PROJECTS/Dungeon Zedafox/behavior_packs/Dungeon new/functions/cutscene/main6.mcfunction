scoreboard players add @e[type=zedafox:help] cutscene 1
scoreboard players add @e[type=zedafox:help] noanswer 1

// SCENE DE LA NUIT

scoreboard players set @s[scores={cutscene=1914}] noanswer 1914
scoreboard players set @s[scores={cutscene=1916}] cutscene 1915

// PAS DE REPONSE

execute @s[tag=!verified,scores={noanswer=2125}] ~ ~ ~ scoreboard players set @s cutscene 1915
execute @s[tag=!verified,scores={noanswer=2125}] ~ ~ ~ scoreboard players set @s choice 2
execute @s[tag=!verified,scores={noanswer=2105}] ~ ~ ~ summon npc 155 27 495
execute @s[tag=!verified,scores={noanswer=2105}] ~ ~ ~ tag @e[type=npc,x=155,y=27,z=495,c=1] add remove
execute @s[tag=!verified,scores={noanswer=2127}] ~ ~ ~ dialogue open @e[type=npc,tag=remove] @a
execute @s[tag=!verified,scores={noanswer=2127}] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"text":"§c§lYOU TOOK TOO LONG TO REACT\n§r§7             React faster!"}]}
execute @s[scores={noanswer=2128}] ~ ~ ~ event entity @e[type=npc,tag=remove] to_death
tag @s[scores={noanswer=2185}] remove verified


// SHOOTING STAR

execute @s[scores={cutscene=1950,choice=1}] ~ ~ ~ summon zedafox:shooting_star 387 130 501

execute @s[scores={cutscene=1965,choice=1}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_pointing




// KISS

execute @s[scores={cutscene=1950,choice=2}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_kiss
execute @s[scores={cutscene=1950,choice=2}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.kernel_kiss



// EYE CONTACT


execute @s[scores={cutscene=1950,choice=3}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.kaley_look
execute @s[scores={cutscene=1950,choice=3}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.kernel_look



// END TRANSITION

execute @s[scores={cutscene=2020}] ~ ~ ~ function transition/size6

execute @s[scores={cutscene=2100}] ~ ~ ~ event entity @e[type=zedafox:camera] to_death
execute @s[scores={cutscene=2100}] ~ ~ ~ event entity @e[type=zedafox:cutscene] to_death
execute @s[scores={cutscene=2102}] ~ ~ ~ tp @a 376.07 108 473.78 180 0
execute @s[scores={cutscene=2090}] ~ ~ ~ function character_tp3
execute @s[scores={cutscene=2105}] ~ ~ ~ scoreboard players set @e[name=Kaley] dialog 92
execute @s[scores={cutscene=2105}] ~ ~ ~ scoreboard players set @e[name=Kaley] timedialog 1
execute @s[scores={cutscene=2106}] ~ ~ ~ function cutscene/stop






