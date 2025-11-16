scoreboard players add @e[type=zedafox:help] cutscene5 1

//

// SCENE 1 - HADSON VEUT VOIR LES DUNGEONS

execute @s[scores={cutscene5=2}] ~ ~ ~ function cutscene/story/scene1
execute @s[scores={cutscene5=4}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.walk_slow

// SCENE 2 - IL DECOUVRE LES CRYSTAUX

execute @s[scores={cutscene5=140}] ~ ~ ~ function transition/size1
execute @s[scores={cutscene5=155}] ~ ~ ~ function cutscene/story/scene2
execute @s[scores={cutscene5=159}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.look

execute @s[scores={cutscene5=210}] ~ ~ ~ summon zedafox:text2 457.45 80.26 440

// SCENE 3 - CRYSTAUX DANGEREUX

execute @s[scores={cutscene5=330}] ~ ~ ~ function cutscene/story/scene3
execute @s[scores={cutscene5=380}] ~ ~ ~ summon zedafox:text3 459 82.5 433

// SCENE 4 - HADSON RENCONTRE RAXLY

execute @s[scores={cutscene5=480}] ~ ~ ~ function transition/size1
execute @s[scores={cutscene5=495}] ~ ~ ~ function cutscene/story/scene4
execute @s[scores={cutscene5=499}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.hadson_surprised
execute @s[scores={cutscene5=497}] ~ ~ ~ execute @e[type=zedafox:boss] ~ ~ ~ tp @s ~ ~ ~ 180

execute @s[scores={cutscene5=502}] ~ ~ ~ summon zedafox:text4 400.5 59 493.5

// SCENE 5 - RAXLY MENACE HADSON

execute @s[scores={cutscene5=580}] ~ ~ ~ function cutscene/story/scene5
execute @s[scores={cutscene5=620}] ~ ~ ~ summon zedafox:text5 402 60 478
execute @s[scores={cutscene5=700}] ~ ~ ~ event entity @e[family=text] to_death
execute @s[scores={cutscene5=705}] ~ ~ ~ summon zedafox:text6 402 60 478
execute @s[scores={cutscene5=800}] ~ ~ ~ function transition/size3

// SCENE 6 - HADSON INFORME LE VILLAGE

execute @s[scores={cutscene5=825}] ~ ~ ~ time set day
execute @s[scores={cutscene5=825}] ~ ~ ~ function cutscene/story/scene6
execute @s[scores={cutscene5=835}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.hadson_information
execute @s[scores={cutscene5=890}] ~ ~ ~ summon zedafox:text7 382 109.25 494

// SCENE 7 - LE VILLAGE NE LE CROIENT PAS

execute @s[scores={cutscene5=980}] ~ ~ ~ function transition/size1
execute @s[scores={cutscene5=985}] ~ ~ ~ event entity @e[family=text] to_death
execute @s[scores={cutscene5=995}] ~ ~ ~ function cutscene/story/scene7
execute @s[scores={cutscene5=997}] ~ ~ ~ playanimation @e[type=zedafox:character_inanimate,tag=!fake1] animation.wave.leave
execute @s[scores={cutscene5=997}] ~ ~ ~ playanimation @e[type=zedafox:character_inanimate2,tag=!fake1] animation.wave.leave
execute @s[scores={cutscene5=1020}] ~ ~ ~ summon zedafox:text8 381 109 495
execute @s[scores={cutscene5=1120}] ~ ~ ~ function transition/size2

// SCENE 8 - HADSON EST EN PANIQUE

execute @s[scores={cutscene5=1140}] ~ ~ ~ function cutscene/story/scene8
execute @s[scores={cutscene5=1142}] ~ ~ ~ playanimation @e[tag=fake1] animation.wave.hadson_sit
execute @s[scores={cutscene5=1182}] ~ ~ ~ summon zedafox:text9 398 60.25 493
execute @s[scores={cutscene5=1280}] ~ ~ ~ function transition/size1

// SCENE 9 - HADSON SE SUICIDE

execute @s[scores={cutscene5=1295}] ~ ~ ~ function cutscene/story/scene9
execute @s[scores={cutscene5=1320}] ~ ~ ~ summon zedafox:text10 482 116 514
execute @s[scores={cutscene5=1420}] ~ ~ ~ function transition/size8
execute @s[scores={cutscene5=1499}] ~ ~ ~ scoreboard players set @e[name=grayson] dialog 62
execute @s[scores={cutscene5=1499}] ~ ~ ~ scoreboard players set @e[name=grayson] timedialog 1


execute @s[scores={cutscene5=1500}] ~ ~ ~ function cutscene/story/stop
