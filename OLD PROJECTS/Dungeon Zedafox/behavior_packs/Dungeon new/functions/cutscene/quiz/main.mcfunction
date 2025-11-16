scoreboard players add @s cutscene8 1

//

execute @s[scores={cutscene8=3}] ~ ~ ~ setblock 309 41 545 air

execute @s[scores={cutscene8=20}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 1 2
execute @s[scores={cutscene8=20}] ~ ~ ~ playsound impact4 @a
execute @s[scores={cutscene8=20}] ~ ~ ~ effect @a night_vision 0 0
execute @s[scores={cutscene8=20}] ~ ~ ~ effect @e[type=zedafox:screen] invisibility 5 1 true
execute @s[scores={cutscene8=20}] ~ ~ ~ event entity @e[type=zedafox:flying_text] to_death

// BEEP

execute @s[scores={cutscene8=80}] ~ ~ ~ setblock 304 45 550 light_block 15

execute @s[scores={cutscene8=80}] ~ ~ ~ effect @e[type=zedafox:screen] clear
execute @s[scores={cutscene8=80}] ~ ~ ~ playsound beep @a
execute @s[scores={cutscene8=80}] ~ ~ ~ event entity @e[type=zedafox:screen] skin5
execute @s[scores={cutscene8=100}] ~ ~ ~ event entity @e[type=zedafox:screen] skin6

execute @s[scores={cutscene8=120}] ~ ~ ~ playsound beep @a
execute @s[scores={cutscene8=120}] ~ ~ ~ event entity @e[type=zedafox:screen] skin5
execute @s[scores={cutscene8=140}] ~ ~ ~ event entity @e[type=zedafox:screen] skin6

execute @s[scores={cutscene8=160}] ~ ~ ~ playsound beep @a
execute @s[scores={cutscene8=160}] ~ ~ ~ event entity @e[type=zedafox:screen] skin5
execute @s[scores={cutscene8=180}] ~ ~ ~ event entity @e[type=zedafox:screen] skin6

execute @s[scores={cutscene8=200}] ~ ~ ~ playsound beep @a
execute @s[scores={cutscene8=200}] ~ ~ ~ event entity @e[type=zedafox:screen] skin5
execute @s[scores={cutscene8=220}] ~ ~ ~ event entity @e[type=zedafox:screen] skin6

execute @s[scores={cutscene8=240}] ~ ~ ~ playsound beep @a
execute @s[scores={cutscene8=240}] ~ ~ ~ event entity @e[type=zedafox:screen] skin5
execute @s[scores={cutscene8=260}] ~ ~ ~ event entity @e[type=zedafox:screen] skin6

// TEXT

execute @s[scores={cutscene8=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c WARNING! This map contains interactive dialogues."}]}
execute @s[scores={cutscene8=120}] ~ ~ ~ playsound speech1 @a

execute @s[scores={cutscene8=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c For this reason, you must check that the interaction buttons work!"}]}
execute @s[scores={cutscene8=220}] ~ ~ ~ playsound speech2 @a

execute @s[scores={cutscene8=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c You will have to answer a question, if you can't click on the buttons because the interface is too big. Set the GUI SCALE MODIFIER parameter to -1"}]}
execute @s[scores={cutscene8=320}] ~ ~ ~ playsound speech3 @a

execute @s[scores={cutscene8=540}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c The question appears in..."}]}
execute @s[scores={cutscene8=540}] ~ ~ ~ playsound speech4 @a
execute @s[scores={cutscene8=540}] ~ ~ ~ execute @a ~ ~ ~ playsound quiz @s ~ ~ ~ 0.5



execute @s[scores={cutscene8=580}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c 3..."}]}
execute @s[scores={cutscene8=580}] ~ ~ ~ playsound speech7 @a
execute @s[scores={cutscene8=580}] ~ ~ ~ event entity @e[type=zedafox:screen] skin16
execute @s[scores={cutscene8=605}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c 2..."}]}
execute @s[scores={cutscene8=605}] ~ ~ ~ playsound speech6 @a
execute @s[scores={cutscene8=605}] ~ ~ ~ event entity @e[type=zedafox:screen] skin15
execute @s[scores={cutscene8=630}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c 1..."}]}
execute @s[scores={cutscene8=630}] ~ ~ ~ playsound speech5 @a
execute @s[scores={cutscene8=630}] ~ ~ ~ event entity @e[type=zedafox:screen] skin14
execute @s[scores={cutscene8=655}] ~ ~ ~ execute @a ~ ~ ~ playsound clickscreen @s ~ ~ ~ 1 0.5

execute @s[scores={cutscene8=655}] ~ ~ ~ tp @a 304 43 543 0 -8
execute @s[scores={cutscene8=655}] ~ ~ ~ effect @a invisibility 999999 255 true
execute @s[scores={cutscene8=655}] ~ ~ ~ effect @a slowness 999999 2 true


execute @s[scores={cutscene8=430}] ~ ~ ~ event entity @e[type=zedafox:screen] skin12
execute @s[scores={cutscene8=430}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1.2

execute @s[scores={cutscene8=470}] ~ ~ ~ event entity @e[type=zedafox:screen] skin13
execute @s[scores={cutscene8=470}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 1 1


// QUIZ ALEATOIRE

scoreboard players random @s[scores={cutscene8=654}] random 1 8

execute @s[scores={cutscene8=655,random=1}] ~ ~ ~ event entity @e[type=zedafox:screen] skin7
execute @s[scores={cutscene8=655,random=2}] ~ ~ ~ event entity @e[type=zedafox:screen] skin8
execute @s[scores={cutscene8=655,random=3}] ~ ~ ~ event entity @e[type=zedafox:screen] skin9
execute @s[scores={cutscene8=655,random=4}] ~ ~ ~ event entity @e[type=zedafox:screen] skin10
execute @s[scores={cutscene8=655,random=5}] ~ ~ ~ event entity @e[type=zedafox:screen] skin11
execute @s[scores={cutscene8=655,random=6}] ~ ~ ~ event entity @e[type=zedafox:screen] skin17
execute @s[scores={cutscene8=655,random=7}] ~ ~ ~ event entity @e[type=zedafox:screen] skin18
execute @s[scores={cutscene8=655,random=8}] ~ ~ ~ event entity @e[type=zedafox:screen] skin19

execute @s[scores={cutscene8=655,random=1}] ~ ~ ~ scoreboard players set @a forced 7
execute @s[scores={cutscene8=655,random=2}] ~ ~ ~ scoreboard players set @a forced 8
execute @s[scores={cutscene8=655,random=3}] ~ ~ ~ scoreboard players set @a forced 9
execute @s[scores={cutscene8=655,random=4}] ~ ~ ~ scoreboard players set @a forced 10
execute @s[scores={cutscene8=655,random=5}] ~ ~ ~ scoreboard players set @a forced 11
execute @s[scores={cutscene8=655,random=6}] ~ ~ ~ scoreboard players set @a forced 12
execute @s[scores={cutscene8=655,random=7}] ~ ~ ~ scoreboard players set @a forced 13
execute @s[scores={cutscene8=655,random=8}] ~ ~ ~ scoreboard players set @a forced 14

execute @s[scores={cutscene8=660}] ~ ~ ~ scoreboard players set @s cutscene8 0



// TEST PASSED

execute @s[scores={cutscene8=702}] ~ ~ ~ effect @a clear

execute @s[scores={cutscene8=750}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§l[!]§r§c You successfully passed the test. Now you can start your adventure. Enjoy!"}]}
execute @s[scores={cutscene8=750}] ~ ~ ~  playsound speech8 @a
execute @s[scores={cutscene8=840}] ~ ~ ~ function transition/size6
execute @s[scores={cutscene8=840}] ~ ~ ~ scoreboard players set @a border 2

// TP

execute @s[scores={cutscene8=900}] ~ ~ ~ tp @a 341.95 116 494 -90 0
execute @s[scores={cutscene8=900}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 8
execute @s[scores={cutscene8=902}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

execute @s[scores={cutscene8=940}] ~ ~ ~ summon zedafox:point 381 111 494

