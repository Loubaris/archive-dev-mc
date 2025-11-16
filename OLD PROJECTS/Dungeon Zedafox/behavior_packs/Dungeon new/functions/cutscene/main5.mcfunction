scoreboard players add @e[type=zedafox:help] cutscene 1
scoreboard players add @e[type=zedafox:help] noanswer 1

// ASSIS SUR L'ARBRE

execute @s[scores={cutscene=1510}] ~ ~ ~ function cutscene/love/scene27
execute @s[scores={cutscene=1525}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.pose_radley
execute @s[scores={cutscene=1555}] ~ ~ ~ playanimation @e[tag=fake2] animation.wave.radley_pose_what
execute @s[scores={cutscene=1595}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.kernel_sit_tree


// DEVANT TURNIP

execute @s[scores={cutscene=1610}] ~ ~ ~ function cutscene/love/scene28

execute @s[scores={cutscene=1625}] ~ ~ ~ playanimation @e[tag=fake4] animation.wave.presentation2
execute @s[scores={cutscene=1640}] ~ ~ ~ playanimation @e[tag=fake3] animation.wave.big_laugh
execute @s[scores={cutscene=1680}] ~ ~ ~ playanimation @e[tag=fake4] animation.wave.overhere

execute @s[scores={cutscene=1660}] ~ ~ ~ event entity @e[type=zedafox:big_vegetable] skin1
execute @s[scores={cutscene=1680}] ~ ~ ~ event entity @e[type=zedafox:big_vegetable] skin2


// PETITE COURSE

execute @s[scores={cutscene=1710}] ~ ~ ~ function cutscene/love/scene29
execute @s[scores={cutscene=1711}] ~ ~ ~ playanimation @e[tag=fake5] animation.wave.running
execute @s[scores={cutscene=1711}] ~ ~ ~ playanimation @e[tag=fake6] animation.wave.running


// PLAN SUR LE VILLAGE

execute @s[scores={cutscene=1730}] ~ ~ ~ function cutscene/love/scene30


// NUIT

execute @s[scores={cutscene=1760}] ~ ~ ~ function transition/size3
execute @s[scores={cutscene=1800}] ~ ~ ~ function cutscene/love/scene31
execute @s[scores={cutscene=1890}] ~ ~ ~ function cutscene/love/scene32
execute @s[scores={cutscene=1910}] ~ ~ ~ dialogue open @e[type=npc,tag=chat20] @a