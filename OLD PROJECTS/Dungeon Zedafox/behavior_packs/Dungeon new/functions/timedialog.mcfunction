// DIALOG a opti

scoreboard players add @s timedialog 1

// GRAYSON - WELCOME

execute @s[scores={dialog=48,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fHello, I'm Grayson!"}]}
playanimation @s[scores={dialog=48,timedialog=2}] animation.wave.talking
execute @s[scores={dialog=48,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=48,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fThe mayor of this village."}]}
playanimation @s[scores={dialog=48,timedialog=40}] animation.wave.presentation
execute @s[scores={dialog=48,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=48,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBefore anything else, I wanted to thank you for accepting our request."}]}
playanimation @s[scores={dialog=48,timedialog=100}] animation.wave.negotiation
execute @s[scores={dialog=48,timedialog=100}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=48,timedialog=180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWithout you, we won't know what to do with the situation."}]}
playanimation @s[scores={dialog=48,timedialog=180}] animation.wave.never
execute @s[scores={dialog=48,timedialog=180}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=48,timedialog=240}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBefore explaining the situation. I must show you my sister §dJulia."}]}
playanimation @s[scores={dialog=48,timedialog=240}] animation.wave.presentation
execute @s[scores={dialog=48,timedialog=240}] ~ ~ ~ playanimation @e[name=julia] animation.wave.overhere
execute @s[scores={dialog=48,timedialog=240}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=48,timedialog=280}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[name=julia]
execute @s[scores={dialog=48,timedialog=280}] ~ ~ ~ effect @a slowness 1 4 true
execute @s[scores={dialog=48,timedialog=280}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 0.5 1.8
execute @s[scores={dialog=48,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHellooooooo!"}]}
execute @s[scores={dialog=48,timedialog=280}] ~ ~ ~ playanimation @e[name=julia] animation.wave.hello

execute @s[scores={dialog=48,timedialog=340}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fShe is very charismatic."}]}
playanimation @s[scores={dialog=48,timedialog=340}] animation.wave.never
execute @s[scores={dialog=48,timedialog=340}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=48,timedialog=380}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnd, This is Bruno. §7(Behind you)"}]}
playanimation @s[scores={dialog=48,timedialog=380}] animation.wave.you
execute @s[scores={dialog=48,timedialog=380}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=48,timedialog=430}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fHe owns the restaurant, always there to prepare us delicious cakes. Yummy!"}]}
playanimation @s[scores={dialog=48,timedialog=430}] animation.wave.whole
execute @s[scores={dialog=48,timedialog=430}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=48,timedialog=520}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI guess you like cakes?"}]}
playanimation @s[scores={dialog=48,timedialog=520}] animation.wave.asking
execute @s[scores={dialog=48,timedialog=520}] ~ ~ ~ playsound mob.villager.haggle @a

execute @e[scores={dialog=48,timedialog=570}] ~ ~ ~ dialogue open @e[type=npc,tag=chat15] @a
execute @s[scores={dialog=48,timedialog=570}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=48,timedialog=580}] timedialog



// GRAYSON - I LOVE IT

execute @s[scores={dialog=49,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fMee too!"}]}
playanimation @s[scores={dialog=49,timedialog=40}] animation.wave.happy2
execute @s[scores={dialog=49,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=49,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI also make homemade cakes!"}]}
playanimation @s[scores={dialog=49,timedialog=80}] animation.wave.me
execute @s[scores={dialog=49,timedialog=80}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=49,timedialog=130}] ~ ~ ~ scoreboard players set @s dialog 51



// GRAYSON - NO

execute @s[scores={dialog=50,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWhat?!"}]}
playanimation @s[scores={dialog=50,timedialog=40}] animation.wave.surprised
execute @s[scores={dialog=50,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=50,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBut this is the best food in the universe!"}]}
playanimation @s[scores={dialog=50,timedialog=90}] animation.wave.whole2
execute @s[scores={dialog=50,timedialog=90}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=50,timedialog=130}] ~ ~ ~ scoreboard players set @s dialog 51



// GRAYSON - EXPLAIN THE SITUATION

execute @s[scores={dialog=51,timedialog=132}] ~ ~ ~ stopsound @a village2
execute @s[scores={dialog=51,timedialog=132}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0

execute @s[scores={dialog=51,timedialog=132}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnyway, Let me explain the problem."}]}
playanimation @s[scores={dialog=51,timedialog=132}] animation.wave.anyway
execute @s[scores={dialog=51,timedialog=132}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=51,timedialog=170}] ~ ~ ~ function transition/size6

execute @s[scores={dialog=51,timedialog=260}] ~ ~ ~ function cutscene/story/start

scoreboard players reset @s[scores={dialog=51,timedialog=270}] timedialog


// GRAYSON - REGRET

execute @s[scores={dialog=62,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnd now we all regret not believing him."}]}
playanimation @s[scores={dialog=62,timedialog=80}] animation.wave.shy
execute @s[scores={dialog=62,timedialog=80}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=62,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWe found documents in the scientist's desk that show where the crystals are hidden."}]}
playanimation @s[scores={dialog=62,timedialog=150}] animation.wave.requirement
execute @s[scores={dialog=62,timedialog=150}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=62,timedialog=240}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fCould you use them to find the crystals in the dungeons before any danger occurs?"}]}
playanimation @s[scores={dialog=62,timedialog=240}] animation.wave.asking
execute @s[scores={dialog=62,timedialog=240}] ~ ~ ~ playsound mob.villager.idle @a

execute @e[scores={dialog=62,timedialog=360}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=62,timedialog=360}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=62,timedialog=360}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=62,timedialog=361}] timedialog


// GRAYSON - YES

execute @s[scores={dialog=61,timedialog=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fOh my goodness, thank you."}]}
playanimation @s[scores={dialog=61,timedialog=30}] animation.wave.happy2
execute @s[scores={dialog=61,timedialog=30}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=61,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI was afraid you would say no for a second."}]}
playanimation @s[scores={dialog=61,timedialog=80}] animation.wave.you
execute @s[scores={dialog=61,timedialog=80}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=61,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBefore we start, I need to explain the process."}]}
playanimation @s[scores={dialog=61,timedialog=130}] animation.wave.requirement
execute @s[scores={dialog=61,timedialog=130}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=61,timedialog=210}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fFirstly, take this, you can call me when you have a problem."}]}
playanimation @s[scores={dialog=61,timedialog=210}] animation.wave.you
execute @s[scores={dialog=61,timedialog=210}] ~ ~ ~ execute @a ~ ~ ~ playsound armor.equip_gold @s
execute @s[scores={dialog=61,timedialog=210}] ~ ~ ~ give @a zedafox:talkywalky
playanimation @s[scores={dialog=61,timedialog=230}] animation.wave.negotiation
execute @s[scores={dialog=61,timedialog=210}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=61,timedialog=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fSecondly, I'll take you on a little visit of our village to learn more about it."}]}
playanimation @s[scores={dialog=61,timedialog=300}] animation.wave.talking
execute @s[scores={dialog=61,timedialog=300}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=61,timedialog=360}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fLet's go!"}]}
playanimation @s[scores={dialog=61,timedialog=360}] animation.wave.requirement
execute @s[scores={dialog=61,timedialog=360}] ~ ~ ~ function transition/size3
execute @s[scores={dialog=61,timedialog=360}] ~ ~ ~ playsound mob.villager.idle @a

execute @s[scores={dialog=61,timedialog=410}] ~ ~ ~ function cutscene/welcome/start

scoreboard players reset @s[scores={dialog=61,timedialog=411}] timedialog

// GRAYSON - NO // INSIST 1

execute @s[scores={dialog=63,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fSeriously? But why? Are you afraid?"}]}
playanimation @s[scores={dialog=63,timedialog=20}] animation.wave.surprised
execute @s[scores={dialog=63,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=63,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI chose you because I know you are not afraid of anything."}]}
playanimation @s[scores={dialog=63,timedialog=70}] animation.wave.you
execute @s[scores={dialog=63,timedialog=70}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=63,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fCome on my friend, I know you can do it."}]}
playanimation @s[scores={dialog=63,timedialog=120}] animation.wave.question
execute @s[scores={dialog=63,timedialog=120}] ~ ~ ~ playsound mob.villager.haggle @a

execute @e[scores={dialog=63,timedialog=170}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=63,timedialog=170}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=63,timedialog=170}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=63,timedialog=270}] timedialog


// GRAYSON - NO // INSIST 2

execute @s[scores={dialog=64,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fListen, you are our last hope without you we are nothing."}]}
playanimation @s[scores={dialog=64,timedialog=20}] animation.wave.requirement
execute @s[scores={dialog=64,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a

execute @e[scores={dialog=64,timedialog=100}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=64,timedialog=100}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=64,timedialog=100}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=64,timedialog=101}] timedialog


// GRAYSON - NO // INSIST 3

execute @s[scores={dialog=65,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWait wait wait, you have no choice, you must save us."}]}
playanimation @s[scores={dialog=65,timedialog=20}] animation.wave.anyway
execute @s[scores={dialog=65,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=65,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI'm about to get down on my knees! PLEASE!"}]}
playanimation @s[scores={dialog=65,timedialog=80}] animation.wave.talking
execute @s[scores={dialog=65,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a

execute @e[scores={dialog=65,timedialog=140}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=65,timedialog=140}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=65,timedialog=140}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=65,timedialog=141}] timedialog



// GRAYSON - NO // INSIST 4

execute @s[scores={dialog=66,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBut... PLEASE..."}]}
playanimation @s[scores={dialog=66,timedialog=20}] animation.wave.sad
execute @s[scores={dialog=66,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a

execute @e[scores={dialog=66,timedialog=60}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=66,timedialog=60}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=66,timedialog=60}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=66,timedialog=61}] timedialog


// GRAYSON - NO // INSIST 5

execute @s[scores={dialog=67,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI'll give you anything! Money! My phone! My delicious cake! PLEASE!"}]}
playanimation @s[scores={dialog=67,timedialog=20}] animation.wave.whole
execute @s[scores={dialog=67,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a

execute @e[scores={dialog=67,timedialog=60}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=67,timedialog=60}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=67,timedialog=60}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=67,timedialog=61}] timedialog


// GRAYSON - NO // INSIST 6

execute @s[scores={dialog=68,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §f:,("}]}
playanimation @s[scores={dialog=68,timedialog=20}] animation.wave.sad
execute @s[scores={dialog=68,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a
execute @s[scores={dialog=68,timedialog=20}] ~ ~ ~ particle zedafox:water_drop ~ ~1.5 ~
execute @s[scores={dialog=68,timedialog=30}] ~ ~ ~ particle zedafox:water_drop ~ ~1.5 ~
execute @s[scores={dialog=68,timedialog=40}] ~ ~ ~ particle zedafox:water_drop ~ ~1.5 ~

execute @e[scores={dialog=68,timedialog=60}] ~ ~ ~ dialogue open @e[type=npc,tag=chat16] @a
execute @e[scores={dialog=68,timedialog=60}] ~ ~ ~ scoreboard players set @a forced 1
execute @s[scores={dialog=68,timedialog=60}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=67,timedialog=61}] timedialog



// GRAYSON - YES AFTER SAYING NO

execute @s[scores={dialog=69,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fOh my goodness, thank you!"}]}
playanimation @s[scores={dialog=69,timedialog=20}] animation.wave.happy2
execute @s[scores={dialog=69,timedialog=20}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=69,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI'm glad I convinced you, you are the best!"}]}
playanimation @s[scores={dialog=69,timedialog=60}] animation.wave.you
execute @s[scores={dialog=69,timedialog=60}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=69,timedialog=128}] ~ ~ ~ scoreboard players set @s dialog 61



// GRAYSON - YES AFTER SAYING NO SEVERAL TIME

execute @s[scores={dialog=70,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fOh my goodness, thank you!"}]}
playanimation @s[scores={dialog=70,timedialog=20}] animation.wave.happy2
execute @s[scores={dialog=70,timedialog=20}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=70,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fI thought you were going to say no until tomorrow."}]}
playanimation @s[scores={dialog=70,timedialog=60}] animation.wave.you
execute @s[scores={dialog=70,timedialog=60}] ~ ~ ~ playsound mob.villager.haggle @a

execute @s[scores={dialog=70,timedialog=128}] ~ ~ ~ scoreboard players set @s dialog 61







// KALEY SECRET

execute @s[scores={dialog=9,timedialog=2}] ~ ~ ~ tag @s add is_talking
execute @s[scores={dialog=9,timedialog=2}] ~ ~ ~ function objective/reset

execute @s[scores={dialog=9,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fHey man, can I tell you a secret?"}]}
playanimation @s[scores={dialog=9,timedialog=2}] animation.wave.turn_and_see
execute @s[scores={dialog=9,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=9,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI have a crush on §dKernel§f."}]}
playanimation @s[scores={dialog=9,timedialog=60}] animation.wave.secret
execute @s[scores={dialog=9,timedialog=60}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1
execute @s[scores={dialog=9,timedialog=60}] ~ ~ ~ effect @a slowness 1 5 true
execute @s[scores={dialog=9,timedialog=60}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[name=kaley]

execute @e[scores={dialog=9,timedialog=100}] ~ ~ ~ scoreboard players set @a forced 5
execute @e[scores={dialog=9,timedialog=100}] ~ ~ ~ dialogue open @e[type=npc,tag=chat5] @a
execute @s[scores={dialog=9,timedialog=100}] ~ ~ ~ playsound chat @a


scoreboard players reset @s[scores={dialog=9,timedialog=101}] timedialog


// KALEY IS READY

execute @s[scores={dialog=13,timedialog=2}] ~ ~ ~ tag @s add is_talking
execute @s[scores={dialog=13,timedialog=2}] ~ ~ ~ function objective/reset

execute @s[scores={dialog=13,timedialog=5}] ~ ~ ~ playsound crush3 @a
execute @s[scores={dialog=13,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fH-hey..."}]}
playanimation @s[scores={dialog=13,timedialog=5}] animation.wave.shy
execute @s[scores={dialog=13,timedialog=5}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=13,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI pondered for a long time, and..."}]}
playanimation @s[scores={dialog=13,timedialog=40}] animation.wave.talking
execute @s[scores={dialog=13,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=13,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI think I'm ready to face my fear."}]}
playanimation @s[scores={dialog=13,timedialog=100}] animation.wave.negotiation
execute @s[scores={dialog=13,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=13,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI'm ready to tell §dKernel§f that I love him!"}]}
playanimation @s[scores={dialog=13,timedialog=160}] animation.wave.requirement
execute @s[scores={dialog=13,timedialog=160}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=13,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fBut I'm not as brave as you think."}]}
playanimation @s[scores={dialog=13,timedialog=230}] animation.wave.shy
execute @s[scores={dialog=13,timedialog=230}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=13,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fSo, I need a little help from you."}]}
playanimation @s[scores={dialog=13,timedialog=280}] animation.wave.asking
execute @s[scores={dialog=13,timedialog=280}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=13,timedialog=340}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fCould you help me by telling me what to do during my date?"}]}
playanimation @s[scores={dialog=13,timedialog=340}] animation.wave.asking
execute @s[scores={dialog=13,timedialog=340}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1


execute @s[scores={dialog=13,timedialog=440}] ~ ~ ~ dialogue open @e[type=npc,tag=chat10] @a
execute @s[scores={dialog=13,timedialog=440}] ~ ~ ~ scoreboard players set @a forced 2
execute @s[scores={dialog=13,timedialog=440}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=13,timedialog=441}] timedialog





// KALEY IS READY - BUT HE KNOW YOU DONT CARE

execute @s[scores={dialog=20,timedialog=2}] ~ ~ ~ tag @s add is_talking
execute @s[scores={dialog=20,timedialog=5}] ~ ~ ~ playsound crush3 @a
execute @s[scores={dialog=20,timedialog=2}] ~ ~ ~ function objective/reset

execute @s[scores={dialog=20,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fH-hey..."}]}
playanimation @s[scores={dialog=20,timedialog=5}] animation.wave.shy
execute @s[scores={dialog=20,timedialog=5}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI know you don't care but..."}]}
playanimation @s[scores={dialog=20,timedialog=40}] animation.wave.talking
execute @s[scores={dialog=20,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI think I'm ready to face my fear."}]}
playanimation @s[scores={dialog=20,timedialog=100}] animation.wave.negotiation
execute @s[scores={dialog=20,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI'm ready to tell §dKernel§f that I love him!"}]}
playanimation @s[scores={dialog=20,timedialog=160}] animation.wave.requirement
execute @s[scores={dialog=20,timedialog=160}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fBut I'm not as brave as you think."}]}
playanimation @s[scores={dialog=20,timedialog=230}] animation.wave.shy
execute @s[scores={dialog=20,timedialog=230}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fSo, I need a little help from you."}]}
playanimation @s[scores={dialog=20,timedialog=280}] animation.wave.asking
execute @s[scores={dialog=20,timedialog=280}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=340}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI will try to do what I can do. Could you help me by telling me what to do during my date?"}]}
playanimation @s[scores={dialog=20,timedialog=340}] animation.wave.asking
execute @s[scores={dialog=20,timedialog=340}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1


execute @s[scores={dialog=20,timedialog=440}] ~ ~ ~ dialogue open @e[type=npc,tag=chat10] @a
execute @s[scores={dialog=20,timedialog=440}] ~ ~ ~ scoreboard players set @a forced 2
execute @s[scores={dialog=20,timedialog=440}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=20,timedialog=441}] timedialog




// RADLEY - I'M STRONG

execute @s[scores={dialog=21,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fDo you know my strength?"}]}
playanimation @s[scores={dialog=21,timedialog=5}] animation.wave.question
execute @s[scores={dialog=21,timedialog=5}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=21,timedialog=50}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fI hunt down all my enemies with my mega punches!"}]}
playanimation @s[scores={dialog=21,timedialog=50}] animation.wave.strike
execute @s[scores={dialog=21,timedialog=50}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=21,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fI don't know why you were chosen, I should have been the hero of this mission."}]}
playanimation @s[scores={dialog=21,timedialog=110}] animation.wave.greeting
execute @s[scores={dialog=21,timedialog=110}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

scoreboard players reset @s[scores={dialog=21,timedialog=111..}] timedialog




// JULIA

execute @s[scores={dialog=23,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHellooooooo!"}]}
playanimation @s[scores={dialog=23,timedialog=5}] animation.wave.cute_hand
execute @s[scores={dialog=23,timedialog=5}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=23,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI have a very funny story, do you want me to tell it to you?"}]}
playanimation @s[scores={dialog=23,timedialog=70}] animation.wave.question
execute @s[scores={dialog=23,timedialog=70}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=23,timedialog=120}] ~ ~ ~ dialogue open @e[type=npc,tag=chat8] @a
execute @s[scores={dialog=23,timedialog=120}] ~ ~ ~ playsound chat @a


scoreboard players reset @s[scores={dialog=23,timedialog=121}] timedialog





// JULIA - SOMETHING TO TELL

execute @s[scores={dialog=30,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHellooo!"}]}
playanimation @s[scores={dialog=30,timedialog=5}] animation.wave.hello
execute @s[scores={dialog=30,timedialog=5}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=30,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI have something to tell you."}]}
playanimation @s[scores={dialog=30,timedialog=60}] animation.wave.question
execute @s[scores={dialog=30,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=30,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fOh, don't worry, it's not another long story!"}]}
playanimation @s[scores={dialog=30,timedialog=110}] animation.wave.no
execute @s[scores={dialog=30,timedialog=110}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=30,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI'm a florist by the way."}]}
playanimation @s[scores={dialog=30,timedialog=160}] animation.wave.question
execute @s[scores={dialog=30,timedialog=160}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=30,timedialog=210}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fNow you know."}]}
playanimation @s[scores={dialog=30,timedialog=210}] animation.wave.you
execute @s[scores={dialog=30,timedialog=210}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

scoreboard players reset @s[scores={dialog=30,timedialog=210}] timedialog


// JULIA - SOMETHING TO TELL - DIDNT LISTEN THE STORY

execute @s[scores={dialog=83,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHellooo!"}]}
playanimation @s[scores={dialog=83,timedialog=5}] animation.wave.hello
execute @s[scores={dialog=83,timedialog=5}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=83,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI have something to tell you."}]}
playanimation @s[scores={dialog=83,timedialog=60}] animation.wave.question
execute @s[scores={dialog=83,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=83,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI picked some beautiful flowers today!"}]}
playanimation @s[scores={dialog=83,timedialog=110}] animation.wave.cute_hand
execute @s[scores={dialog=83,timedialog=110}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=83,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI'm a florist by the way."}]}
playanimation @s[scores={dialog=83,timedialog=160}] animation.wave.question
execute @s[scores={dialog=83,timedialog=160}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=83,timedialog=210}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fNow you know."}]}
playanimation @s[scores={dialog=83,timedialog=210}] animation.wave.you
execute @s[scores={dialog=83,timedialog=210}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

scoreboard players reset @s[scores={dialog=83,timedialog=210}] timedialog




// KALEY READY - ARE YOU READY NOW?

execute @s[scores={dialog=17,timedialog=2}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=17,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fAre you ready now?"}]}
playanimation @s[scores={dialog=17,timedialog=5}] animation.wave.question
execute @s[scores={dialog=17,timedialog=5}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=17,timedialog=30}] ~ ~ ~ dialogue open @e[type=npc,tag=chat10] @a
execute @s[scores={dialog=17,timedialog=30}] ~ ~ ~ scoreboard players set @a forced 2
execute @s[scores={dialog=17,timedialog=30}] ~ ~ ~ playsound chat @a



// KALEY - JUST BE YOURSELF

execute @s[scores={dialog=10,timedialog=2}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=10,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fThe real me would make a fool of himself in front of a girl."}]}
playanimation @s[scores={dialog=10,timedialog=40}] animation.wave.question
execute @s[scores={dialog=10,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=10,timedialog=40}] ~ ~ ~ tag @s remove is_talking

execute @s[scores={dialog=10,timedialog=160}] ~ ~ ~ function objective/newmission

scoreboard players reset @s[scores={dialog=10,timedialog=161}] timedialog


// KALEY - OFFER HIM A DATE

execute @s[scores={dialog=11,timedialog=2}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=11,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fYou're right!"}]}
playanimation @s[scores={dialog=11,timedialog=40}] animation.wave.you
execute @s[scores={dialog=11,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=11,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI must face my fear! And show him how much I love him."}]}
playanimation @s[scores={dialog=11,timedialog=80}] animation.wave.requirement
execute @s[scores={dialog=11,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=11,timedialog=80}] ~ ~ ~ tag @s remove is_talking

execute @s[scores={dialog=11,timedialog=170}] ~ ~ ~ function objective/newmission

scoreboard players reset @s[scores={dialog=11,timedialog=171}] timedialog

// KALEY - I DONT CARE

execute @s[scores={dialog=12,timedialog=2}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=12,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI knew I shouldn't have told you."}]}
playanimation @s[scores={dialog=12,timedialog=40}] animation.wave.sad
execute @s[scores={dialog=12,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=12,timedialog=2}] ~ ~ ~ tag @s remove is_talking

execute @s[scores={dialog=12,timedialog=160}] ~ ~ ~ function objective/newmission

scoreboard players reset @s[scores={dialog=12,timedialog=161}] timedialog



// KALEY READY - LETS DO THIS

execute @s[scores={dialog=14,timedialog=5}] ~ ~ ~ stopsound @a crush3
execute @s[scores={dialog=14,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fSo let's do it together!"}]}
playanimation @s[scores={dialog=14,timedialog=40}] animation.wave.requirement
execute @s[scores={dialog=14,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=14,timedialog=80}] ~ ~ ~ function transition/size3
execute @s[scores={dialog=14,timedialog=120}] ~ ~ ~ function cutscene/start


scoreboard players reset @s[scores={dialog=14,timedialog=141}] timedialog




// KALEY READY - OK

execute @s[scores={dialog=15,timedialog=5}] ~ ~ ~ stopsound @a crush3
execute @s[scores={dialog=15,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fThank you! I think that without you I wouldn't be able to."}]}
playanimation @s[scores={dialog=15,timedialog=40}] animation.wave.happy2
execute @s[scores={dialog=15,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=15,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fSo let's go!"}]}
playanimation @s[scores={dialog=15,timedialog=100}] animation.wave.requirement
execute @s[scores={dialog=15,timedialog=100}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=15,timedialog=120}] ~ ~ ~ function transition/size3
execute @s[scores={dialog=15,timedialog=150}] ~ ~ ~ function cutscene/start

scoreboard players reset @s[scores={dialog=15,timedialog=201}] timedialog




// KALEY READY - NOT NOW

execute @s[scores={dialog=16,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fOk, let me know when you're ready."}]}
playanimation @s[scores={dialog=16,timedialog=40}] animation.wave.talking
execute @s[scores={dialog=16,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=16,timedialog=60}] ~ ~ ~ tag @s add chat
execute @s[scores={dialog=16,timedialog=60}] ~ ~ ~ scoreboard players set @s dialog 17

scoreboard players reset @s[scores={dialog=17,timedialog=61..}] timedialog



// JULIA - OF COURSE

execute @s[scores={dialog=24,timedialog=5}] ~ ~ ~ playsound village2 @a ~ ~ ~ 0.25 1.8
execute @s[scores={dialog=24,timedialog=5}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0

execute @s[scores={dialog=24,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fWell."}]}
playanimation @s[scores={dialog=24,timedialog=5}] animation.wave.question
execute @s[scores={dialog=24,timedialog=5}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fLast night, I was in the middle of reading a book."}]}
playanimation @s[scores={dialog=24,timedialog=20}] animation.wave.long_talking
execute @s[scores={dialog=24,timedialog=20}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fWhen suddenly, I saw my bedroom door open."}]}
execute @s[scores={dialog=24,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHe did not knock before entering."}]}
playanimation @s[scores={dialog=24,timedialog=60}] animation.wave.surprised
execute @s[scores={dialog=24,timedialog=60}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fAnd I saw, that it was §9Grayson§f!"}]}
playanimation @s[scores={dialog=24,timedialog=80}] animation.wave.long_talking
execute @s[scores={dialog=24,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHe brought me a cake!"}]}
playanimation @s[scores={dialog=24,timedialog=100}] animation.wave.long_talking
execute @s[scores={dialog=24,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fAnd I ate it!"}]}
execute @s[scores={dialog=24,timedialog=110}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fAnd then I got a glass of water."}]}
execute @s[scores={dialog=24,timedialog=130}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=145}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fBut I spilled it!!!"}]}
playanimation @s[scores={dialog=24,timedialog=80}] animation.wave.surprised
execute @s[scores={dialog=24,timedialog=145}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fIt was horrible and stupid of me."}]}
playanimation @s[scores={dialog=24,timedialog=160}] animation.wave.facepalm
execute @s[scores={dialog=24,timedialog=160}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fBUT GUESS WHAT?!"}]}
execute @s[scores={dialog=24,timedialog=200}] ~ ~ ~ function transition/size6
playanimation @s[scores={dialog=24,timedialog=200}] animation.wave.surprised
execute @s[scores={dialog=24,timedialog=200}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fMY BOOK WAS ALL WET!!!!"}]}
playanimation @s[scores={dialog=24,timedialog=230}] animation.wave.whole2
execute @s[scores={dialog=24,timedialog=230}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=260}] ~ ~ ~ time set midnight

execute @s[scores={dialog=24,timedialog=360}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fAnd that's how §9Grayson§f bought me a new book."}]}
playanimation @s[scores={dialog=24,timedialog=360}] animation.wave.talking
execute @s[scores={dialog=24,timedialog=360}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=440}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fSo what do you think of my story?"}]}
playanimation @s[scores={dialog=24,timedialog=440}] animation.wave.question
execute @s[scores={dialog=24,timedialog=440}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=24,timedialog=500}] ~ ~ ~ dialogue open @e[type=npc,tag=chat9] @a
execute @s[scores={dialog=24,timedialog=500}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=24,timedialog=501}] timedialog



// JULIA - NO

execute @s[scores={dialog=25,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fOh, ok. Maybe next time?"}]}
playanimation @s[scores={dialog=25,timedialog=20}] animation.wave.question
execute @s[scores={dialog=25,timedialog=20}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

scoreboard players reset @s[scores={dialog=25,timedialog=21}] timedialog



// JULIA - DEFINITELY NOT

execute @s[scores={dialog=26,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fOH, b-but, whyyy?"}]}
playanimation @s[scores={dialog=26,timedialog=20}] animation.wave.surprised
execute @s[scores={dialog=26,timedialog=20}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=26,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §f:("}]}
playanimation @s[scores={dialog=26,timedialog=60}] animation.wave.sad
execute @s[scores={dialog=26,timedialog=60}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

scoreboard players reset @s[scores={dialog=26,timedialog=61}] timedialog






// JULIA - VERY INTERESTING

execute @s[scores={dialog=27,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fOhhh, thanks!"}]}
playanimation @s[scores={dialog=27,timedialog=40}] animation.wave.happy2
execute @s[scores={dialog=27,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=27,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fYou are the first person I have met who listens to my story all the way through."}]}
playanimation @s[scores={dialog=27,timedialog=80}] animation.wave.you
execute @s[scores={dialog=27,timedialog=80}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

scoreboard players reset @s[scores={dialog=27,timedialog=81}] timedialog


// JULIA - I LOVED THE END

execute @s[scores={dialog=28,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fAHAHAH Yeah."}]}
playanimation @s[scores={dialog=28,timedialog=40}] animation.wave.big_laugh
execute @s[scores={dialog=28,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=28,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI was really lucky, phew."}]}
execute @s[scores={dialog=28,timedialog=80}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8
playanimation @s[scores={dialog=28,timedialog=80}] animation.wave.talking

scoreboard players reset @s[scores={dialog=28,timedialog=81}] timedialog


// JULIA - IT SUCKED

execute @s[scores={dialog=29,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fOh, I thought you would love it."}]}
playanimation @s[scores={dialog=29,timedialog=40}] animation.wave.sad
execute @s[scores={dialog=29,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=29,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fBut don't worry, I have other more interesting stories."}]}
execute @s[scores={dialog=29,timedialog=100}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[name=julia]
execute @s[scores={dialog=29,timedialog=100}] ~ ~ ~ playsound dramatic @a ~ ~ ~ 0.05 0.8
execute @s[scores={dialog=29,timedialog=100}] ~ ~ ~ effect @a slowness 1 6 true
playanimation @s[scores={dialog=29,timedialog=100}] animation.wave.secret
execute @s[scores={dialog=29,timedialog=100}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

scoreboard players reset @s[scores={dialog=29,timedialog=101}] timedialog





// TheblueMan

execute @s[scores={dialog=31,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §1TheblueMan§8 ]: §fDo you know the exit?"}]}
playanimation @s[scores={dialog=31,timedialog=2}] animation.wave.question
execute @s[scores={dialog=31,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1

execute @s[scores={dialog=31,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §1TheblueMan§8 ]: §fI got lost while travelling to this dimension."}]}
playanimation @s[scores={dialog=31,timedialog=40}] animation.wave.turn_and_see
execute @s[scores={dialog=31,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1

scoreboard players reset @s[scores={dialog=31,timedialog=40..}] timedialog



// The Wizard

execute @s[scores={dialog=32,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=32,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fGee, I was waiting for you."}]}
playanimation @s[scores={dialog=32,timedialog=40}] animation.wave.presentation
execute @s[scores={dialog=32,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=32,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI know what you're doing here."}]}
playanimation @s[scores={dialog=32,timedialog=80}] animation.wave.talking
execute @s[scores={dialog=32,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=32,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou came to trade me some potions, right?"}]}
playanimation @s[scores={dialog=32,timedialog=140}] animation.wave.question
execute @s[scores={dialog=32,timedialog=140}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=32,timedialog=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI know, I know..."}]}
playanimation @s[scores={dialog=32,timedialog=200}] animation.wave.shy
execute @s[scores={dialog=32,timedialog=200}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=32,timedialog=250}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI know everything."}]}
playanimation @s[scores={dialog=32,timedialog=250}] animation.wave.me
execute @s[scores={dialog=32,timedialog=250}] ~ ~ ~ execute @a[r=15] ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:wizard]
execute @s[scores={dialog=32,timedialog=250}] ~ ~ ~ effect @a[r=15] slowness 2 3 true
execute @s[scores={dialog=32,timedialog=255}] ~ ~ ~ effect @a[r=15] slowness 2 4 true
execute @s[scores={dialog=32,timedialog=260}] ~ ~ ~ effect @a[r=15] slowness 2 5 true
execute @s[scores={dialog=32,timedialog=265}] ~ ~ ~ effect @a[r=15] slowness 2 6 true
execute @s[scores={dialog=32,timedialog=250}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7
execute @s[scores={dialog=32,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound iknoweverything2 @s ~ ~ ~ 0.1 0.8
execute @s[scores={dialog=32,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound iknoweverything3 @s ~ ~ ~ 0.05 0.8
execute @s[scores={dialog=32,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound impact4 @s ~ ~ ~ 0.1 1

execute @s[scores={dialog=32,timedialog=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIf you don't believe me, you can ask me a question, I have answers for everything."}]}
playanimation @s[scores={dialog=32,timedialog=320}] animation.wave.talking
execute @s[scores={dialog=32,timedialog=320}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=32,timedialog=435}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

execute @s[scores={dialog=32,timedialog=435}] ~ ~ ~ scoreboard players set @a forced 17
execute @s[scores={dialog=32,timedialog=435}] ~ ~ ~ playsound chat @a


scoreboard players reset @s[scores={dialog=32,timedialog=441..}] timedialog



// The Wizard - THE FUTURE

execute @s[scores={dialog=33,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=33,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fHmmm, yeah..."}]}
playanimation @s[scores={dialog=33,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=33,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=33,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThe future..."}]}
playanimation @s[scores={dialog=33,timedialog=70}] animation.wave.thinking
execute @s[scores={dialog=33,timedialog=70}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=33,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI can see it..."}]}
playanimation @s[scores={dialog=33,timedialog=110}] animation.wave.boring2
execute @s[scores={dialog=33,timedialog=110}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=33,timedialog=170}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI see something coming out of a black portal."}]}
playanimation @s[scores={dialog=33,timedialog=170}] animation.wave.question
execute @s[scores={dialog=33,timedialog=170}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=33,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fSomething evil."}]}
playanimation @s[scores={dialog=33,timedialog=230}] animation.wave.never
execute @s[scores={dialog=33,timedialog=230}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=33,timedialog=270}] ~ ~ ~ function random/optimize4



// The Wizard - END OF THE WORLD

execute @s[scores={dialog=34,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=34,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fInteresting question..."}]}
playanimation @s[scores={dialog=34,timedialog=60}] animation.wave.shy
execute @s[scores={dialog=34,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=34,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDon't worry about that..."}]}
playanimation @s[scores={dialog=34,timedialog=120}] animation.wave.question
execute @s[scores={dialog=34,timedialog=120}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=34,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou'll die before that happens."}]}
playanimation @s[scores={dialog=34,timedialog=160}] animation.wave.shy
execute @s[scores={dialog=34,timedialog=160}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=34,timedialog=215}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fTrust me, you wouldn't want to know the cause."}]}
playanimation @s[scores={dialog=34,timedialog=215}] animation.wave.no
execute @s[scores={dialog=34,timedialog=215}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=34,timedialog=255}] ~ ~ ~ function random/optimize4




// The Wizard - GOD EXIST

execute @s[scores={dialog=35,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=35,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fInteresting question..."}]}
playanimation @s[scores={dialog=35,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=35,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=35,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI told you I know everything..."}]}
playanimation @s[scores={dialog=35,timedialog=80}] animation.wave.question
execute @s[scores={dialog=35,timedialog=80}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=35,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fLike the fact that I know this universe didn't create itself."}]}
playanimation @s[scores={dialog=35,timedialog=140}] animation.wave.talking
execute @s[scores={dialog=35,timedialog=140}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=35,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThere is so much you don't know about the universe, that if you learn all of it immediately, you will pass out violently."}]}
playanimation @s[scores={dialog=35,timedialog=230}] animation.wave.surprised
execute @s[scores={dialog=35,timedialog=230}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=35,timedialog=340}] ~ ~ ~ function random/optimize4




// The Wizard - TIME TRAVEL

execute @s[scores={dialog=36,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=36,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, it's been 10 years since I've seen you."}]}
playanimation @s[scores={dialog=36,timedialog=40}] animation.wave.surprised
execute @s[scores={dialog=36,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=36,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh yeah... it's because I'm traveling in time."}]}
playanimation @s[scores={dialog=36,timedialog=90}] animation.wave.facepalm
execute @s[scores={dialog=36,timedialog=90}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=36,timedialog=111}] ~ ~ ~ function levelcheck

execute @s[scores={dialog=36,timedialog=112}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=36,timedialog=113..}] timedialog




// The Wizard - CREATIVE

execute @s[scores={dialog=37,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=37,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fWhy did you activate the creative gamemode?"}]}
playanimation @s[scores={dialog=37,timedialog=40}] animation.wave.facepalm
execute @s[scores={dialog=37,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=37,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fEveryone knows it's cheating on an adventure map"}]}
playanimation @s[scores={dialog=37,timedialog=90}] animation.wave.whole
execute @s[scores={dialog=37,timedialog=90}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=37,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fLet me fix this."}]}
playanimation @s[scores={dialog=37,timedialog=150}] animation.wave.question
execute @s[scores={dialog=37,timedialog=150}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

playanimation @s[scores={dialog=37,timedialog=190}] animation.wave.asking
execute @s[scores={dialog=37,timedialog=190}] ~ ~ ~ effect @a nausea 8 1 true
execute @s[scores={dialog=37,timedialog=190}] ~ ~ ~ playsound success @a ~ ~ ~ 1 0.1
execute @s[scores={dialog=37,timedialog=190}] ~ ~ ~ stopsound @a sneak
execute @s[scores={dialog=37,timedialog=275}] ~ ~ ~ execute @a[m=c] ~ ~ ~ particle zedafox:firework_green ~ ~ ~
execute @s[scores={dialog=37,timedialog=275}] ~ ~ ~ playsound coin @a ~ ~ ~ 1 0.3
execute @s[scores={dialog=37,timedialog=275}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7The Wizard knows everything..."}]}
execute @s[scores={dialog=37,timedialog=275}] ~ ~ ~ gamemode 2 @a

execute @s[scores={dialog=37,timedialog=276}] ~ ~ ~ function levelcheck

execute @s[scores={dialog=37,timedialog=277}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=37,timedialog=280..}] timedialog




// The Wizard - MERRY CHRISTMAS

execute @s[scores={dialog=38,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=38,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fMerry Christmas!"}]}
playanimation @s[scores={dialog=38,timedialog=40}] animation.wave.presentation
execute @s[scores={dialog=38,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=38,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fWait, it's not Christmas right?"}]}
playanimation @s[scores={dialog=38,timedialog=90}] animation.wave.thinking
execute @s[scores={dialog=38,timedialog=90}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=38,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI really need to stop time traveling..."}]}
playanimation @s[scores={dialog=38,timedialog=130}] animation.wave.facepalm
execute @s[scores={dialog=38,timedialog=130}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=38,timedialog=130}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=38,timedialog=131..}] timedialog



// The Wizard - REVENGE

execute @s[scores={dialog=39,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=39,timedialog=20}] ~ ~ ~ stopsound @a sneak

execute @s[scores={dialog=39,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIt's FINALLY time to take my revenge!"}]}
playanimation @s[scores={dialog=39,timedialog=40}] animation.wave.presentation
execute @s[scores={dialog=39,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.5

execute @s[scores={dialog=39,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI'll make you regret everything you've done to me!"}]}
playanimation @s[scores={dialog=39,timedialog=90}] animation.wave.whole
execute @s[scores={dialog=39,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.5
execute @s[scores={dialog=39,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.5
execute @s[scores={dialog=39,timedialog=90}] ~ ~ ~ effect @a[r=25] levitation 20 0 true
execute @s[scores={dialog=39,timedialog=90}] ~ ~ ~ effect @a[r=25] nausea 20 1 true
execute @s[scores={dialog=39,timedialog=100}] ~ ~ ~ effect @a[r=25] blindness 2 1 true
execute @s[scores={dialog=39,timedialog=150}] ~ ~ ~ effect @a[r=25] blindness 2 1 true
execute @s[scores={dialog=39,timedialog=100}] ~ ~ ~ playsound ambient.weather.thunder @a ~ ~ ~ 1 0.7
execute @s[scores={dialog=39,timedialog=130}] ~ ~ ~ playsound random.glass @a ~ ~ ~ 1 0.8
execute @s[scores={dialog=39,timedialog=150}] ~ ~ ~ playsound random.potion.brewed @a ~ ~ ~ 1 1
execute @s[scores={dialog=39,timedialog=160}] ~ ~ ~ playsound ambient.weather.thunder @a ~ ~ ~ 1 1.3

execute @s[scores={dialog=39,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fKidding..."}]}
playanimation @s[scores={dialog=39,timedialog=220}] animation.wave.laugh
execute @s[scores={dialog=39,timedialog=220}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7
execute @s[scores={dialog=39,timedialog=220}] ~ ~ ~ effect @a[r=25] clear
execute @s[scores={dialog=39,timedialog=220}] ~ ~ ~ stopsound @a
execute @s[scores={dialog=39,timedialog=220}] ~ ~ ~ playsound sneak @a

execute @s[scores={dialog=39,timedialog=241}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=39,timedialog=242}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=39,timedialog=243}] timedialog



// The Wizard - YOUR NAME

execute @s[scores={dialog=40,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=40,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, my name?"}]}
playanimation @s[scores={dialog=40,timedialog=40}] animation.wave.question
execute @s[scores={dialog=40,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=40,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fInteresting..."}]}
playanimation @s[scores={dialog=40,timedialog=80}] animation.wave.shy
execute @s[scores={dialog=40,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=40,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI'll tell you what my name is..."}]}
playanimation @s[scores={dialog=40,timedialog=130}] animation.wave.you
execute @s[scores={dialog=40,timedialog=130}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=40,timedialog=180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fWell, my name is..."}]}
playanimation @s[scores={dialog=40,timedialog=180}] animation.wave.talking
execute @s[scores={dialog=40,timedialog=180}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=40,timedialog=210}] ~ ~ ~ effect @a blindness 8 1 true
execute @s[scores={dialog=40,timedialog=210}] ~ ~ ~ stopsound @a
execute @s[scores={dialog=40,timedialog=210}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 0.5 2

execute @s[scores={dialog=40,timedialog=270}] ~ ~ ~ effect @a blindness 0 0
execute @s[scores={dialog=40,timedialog=270}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 0.5 2

execute @s[scores={dialog=40,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fHere you go, and now you know my name."}]}
playanimation @s[scores={dialog=40,timedialog=280}] animation.wave.talking
execute @s[scores={dialog=40,timedialog=280}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7
execute @s[scores={dialog=40,timedialog=280}] ~ ~ ~ playsound sneak @a ~ ~ ~ 0.3 1 

execute @s[scores={dialog=40,timedialog=301}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=40,timedialog=302}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=40,timedialog=303}] timedialog


// The Wizard - YOUR FACE

execute @s[scores={dialog=41,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=41,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, my face?"}]}
playanimation @s[scores={dialog=41,timedialog=40}] animation.wave.question
execute @s[scores={dialog=41,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=41,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fInteresting..."}]}
playanimation @s[scores={dialog=41,timedialog=80}] animation.wave.shy
execute @s[scores={dialog=41,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=41,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI'll tell you something serious..."}]}
playanimation @s[scores={dialog=41,timedialog=130}] animation.wave.shy
execute @s[scores={dialog=41,timedialog=130}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=41,timedialog=180}] ~ ~ ~ effect @a blindness 10 1 true
execute @s[scores={dialog=41,timedialog=180}] ~ ~ ~ stopsound @a
execute @s[scores={dialog=41,timedialog=180}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 0.5 2

execute @s[scores={dialog=41,timedialog=210}] ~ ~ ~ title @a title Don't ask it again...
execute @s[scores={dialog=41,timedialog=210}] ~ ~ ~ stopsound @a

execute @s[scores={dialog=41,timedialog=280}] ~ ~ ~ effect @a blindness 0 0
execute @s[scores={dialog=41,timedialog=280}] ~ ~ ~ execute @a ~ ~ ~ playsound random.click @s ~ ~ ~ 0.5 2

execute @s[scores={dialog=41,timedialog=300}] ~ ~ ~ title @a clear
execute @s[scores={dialog=41,timedialog=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI hope this will change your mind."}]}
execute @s[scores={dialog=41,timedialog=300}] ~ ~ ~ playsound sneak @a ~ ~ ~ 0.3 1
execute @s[scores={dialog=41,timedialog=300}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=41,timedialog=321}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=41,timedialog=322}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=41,timedialog=323}] timedialog



// The Wizard - YOUR AGE

execute @s[scores={dialog=42,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=42,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, my age?"}]}
playanimation @s[scores={dialog=42,timedialog=40}] animation.wave.question
execute @s[scores={dialog=42,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=42,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fInteresting..."}]}
playanimation @s[scores={dialog=42,timedialog=80}] animation.wave.shy
execute @s[scores={dialog=42,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=42,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI've been alive for so long that I've stopped counting."}]}
playanimation @s[scores={dialog=42,timedialog=130}] animation.wave.shy
execute @s[scores={dialog=42,timedialog=130}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=42,timedialog=161}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=42,timedialog=162}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=42,timedialog=221}] timedialog



// The Wizard - ANY QUESTION ABOUT ME

execute @s[scores={dialog=43,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=43,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, §e"},{"selector":"@p"},{"text":" §fyou're here."}]}
playanimation @s[scores={dialog=43,timedialog=40}] animation.wave.question
execute @s[scores={dialog=43,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=43,timedialog=95}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou know I know everything about your life, but you don't know me enough, huh."}]}
playanimation @s[scores={dialog=43,timedialog=95}] animation.wave.shy
execute @s[scores={dialog=43,timedialog=95}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=43,timedialog=180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIs there anything you want to know about me?"}]}
playanimation @s[scores={dialog=43,timedialog=180}] animation.wave.asking
execute @s[scores={dialog=43,timedialog=180}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=43,timedialog=270}] ~ ~ ~ dialogue open @e[type=npc,tag=wizard2] @a
execute @s[scores={dialog=43,timedialog=270}] ~ ~ ~ playsound chat @a

execute @s[scores={dialog=43,timedialog=270}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=43,timedialog=271}] timedialog



// RAXLY 

execute @s[scores={dialog=44,timedialog=2}] ~ ~ ~ playsound urgency @a
execute @s[scores={dialog=44,timedialog=2}] ~ ~ ~ tp @s 380 110 494 90
execute @s[scores={dialog=44,timedialog=2}] ~ ~ ~ setblock ~ ~ ~ light_block 15

execute @s[scores={dialog=44,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOh, you're here."}]}
playanimation @s[scores={dialog=44,timedialog=40}] animation.wave.spinhead
execute @s[scores={dialog=44,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=44,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=44,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fIt seems that this dimension needs a little tinkering."}]}
playanimation @s[scores={dialog=44,timedialog=90}] animation.wave.boss_teleport
execute @s[scores={dialog=44,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=44,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8 
execute @s[scores={dialog=44,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 
execute @s[scores={dialog=44,timedialog=110}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 
execute @s[scores={dialog=44,timedialog=130}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 


execute @s[scores={dialog=44,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fThis dream could be true if you give me a little hand."}]}
playanimation @s[scores={dialog=44,timedialog=160}] animation.wave.boss_talk
execute @s[scores={dialog=44,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=44,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8 

execute @s[scores={dialog=44,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOR ELSE I'LL SEND YOU TO MY TERRIBLE DIMENSION!!!"}]}
playanimation @s[scores={dialog=44,timedialog=220}] animation.wave.boss_angry
execute @s[scores={dialog=44,timedialog=220}] ~ ~ ~ effect @a[tag=!OQP] slowness 2 3 true
execute @s[scores={dialog=44,timedialog=220}] ~ ~ ~ execute @a[tag=!OQP] ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:boss]
execute @s[scores={dialog=44,timedialog=220}] ~ ~ ~ playsound creepy @a 
execute @s[scores={dialog=44,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.3
execute @s[scores={dialog=44,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.5

execute @s[scores={dialog=44,timedialog=310}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fIf you help me, you will be the greatest, the most powerful, a GOD!!"}]}
playanimation @s[scores={dialog=44,timedialog=310}] animation.wave.boss_crazy
execute @s[scores={dialog=44,timedialog=310}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=44,timedialog=310}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8 

execute @s[scores={dialog=44,timedialog=390}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWhat do you think partner?"}]}
playanimation @s[scores={dialog=44,timedialog=390}] animation.wave.asking
execute @s[scores={dialog=44,timedialog=390}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=44,timedialog=390}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @e[scores={dialog=44,timedialog=435}] ~ ~ ~ dialogue open @e[type=npc,tag=chat13] @a[tag=!OQP]
execute @s[scores={dialog=44,timedialog=435}] ~ ~ ~ playsound chat @a
execute @s[scores={dialog=44,timedialog=435}] ~ ~ ~ scoreboard players set @a[tag=!OQP] forced 4

scoreboard players reset @s[scores={dialog=44,timedialog=436..}] timedialog


// RAXLY - NEVER

execute @s[scores={dialog=45,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fNo?"}]}
playanimation @s[scores={dialog=45,timedialog=40}] animation.wave.question
execute @s[scores={dialog=45,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=45,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=45,timedialog=78}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] dialog 46




// RAXLY - YOU ARE CRAZY

execute @s[scores={dialog=46,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fCrazy?"}]}
playanimation @s[scores={dialog=46,timedialog=40}] animation.wave.question
execute @s[scores={dialog=46,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=44,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI think you didn't understand..."}]}
playanimation @s[scores={dialog=46,timedialog=80}] animation.wave.shy
execute @s[scores={dialog=46,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fIN THIS WORLD YOU OBEY ME OR YOU DIE!!!"}]}
playanimation @s[scores={dialog=46,timedialog=140}] animation.wave.boss_angry
execute @s[scores={dialog=46,timedialog=140}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.3
execute @s[scores={dialog=46,timedialog=140}] ~ ~ ~ execute @a ~ ~ ~ playsound creepy @a
execute @s[scores={dialog=46,timedialog=140}] ~ ~ ~ effect @a[tag=!OQP] slowness 2 3 true
execute @s[scores={dialog=46,timedialog=140}] ~ ~ ~ execute @a[tag=!OQP] ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:boss]

execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYOU CAN'T BETRAY ME!!!"}]}
execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.3
playanimation @s[scores={dialog=46,timedialog=190}] animation.wave.crazy2
execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=190}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=195}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=200}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=205}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=210}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=215}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=225}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=230}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2

execute @s[scores={dialog=46,timedialog=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI AM YOUR MASTER!!!"}]}
execute @s[scores={dialog=46,timedialog=200}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=210}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYOU HAVE TO OBEY ME!!!"}]}
execute @s[scores={dialog=46,timedialog=210}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI NEED YOU!!!"}]}
execute @s[scores={dialog=46,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYOU HAVE NO CHOICE!!!"}]}
execute @s[scores={dialog=46,timedialog=230}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2

execute @s[scores={dialog=46,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fListen up you little twerp."}]}
playanimation @s[scores={dialog=46,timedialog=280}] animation.wave.boss_laugh
execute @s[scores={dialog=46,timedialog=280}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=280}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fMy greatest happiness cannot exist without you."}]}
playanimation @s[scores={dialog=46,timedialog=320}] animation.wave.you
execute @s[scores={dialog=46,timedialog=320}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=44,timedialog=320}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=370}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI am the infinite, an overpowering."}]}
playanimation @s[scores={dialog=46,timedialog=370}] animation.wave.boss_fly
execute @s[scores={dialog=46,timedialog=370}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=370}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=440}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou will be able to realize all your dreams if you help me."}]}
playanimation @s[scores={dialog=46,timedialog=440}] animation.wave.you
execute @s[scores={dialog=46,timedialog=440}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=440}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou can be the greatest person you have ever been. Change the laws of the universe! EVERYTHING!"}]}
playanimation @s[scores={dialog=46,timedialog=500}] animation.wave.grow
execute @s[scores={dialog=46,timedialog=500}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=500}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=46,timedialog=500}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.5

execute @s[scores={dialog=46,timedialog=590}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWhat do I do with you now?"}]}
playanimation @s[scores={dialog=46,timedialog=590}] animation.wave.thinking
execute @s[scores={dialog=46,timedialog=590}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=590}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=640}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOh I know..."}]}
playanimation @s[scores={dialog=46,timedialog=640}] animation.wave.requirement
execute @s[scores={dialog=46,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWHAT ABOUT A DISINTEGRATION OF YOUR BRAIN?"}]}
playanimation @s[scores={dialog=46,timedialog=680}] animation.wave.head_grow2
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ camerashake add @a 1 4
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ effect @a[tag=!OQP] slowness 3 2 true
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ playsound impact2 @a
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ execute @a[tag=!OQP] ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:boss]
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ execute @a[tag=!OQP] ~ ~ ~ tp @s ~ ~ ~ ~ -10
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ tag @a[tag=!OQP] add levitation
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ summon zedafox:impact
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=680}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=46,timedialog=720}] ~ ~ ~ execute @a ~ ~ ~ playsound impact3 @s ~ ~ ~ 0.2 

execute @s[scores={dialog=46,timedialog=760}] ~ ~ ~ tag @a remove levitation

execute @s[scores={dialog=46,timedialog=780}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fEw, you make me want to puke..."}]}
playanimation @s[scores={dialog=46,timedialog=780}] animation.wave.shy
execute @s[scores={dialog=46,timedialog=780}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=780}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=830}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWell, if you don't bring me the crystals I need. You'll experience a big torture session."}]}
playanimation @s[scores={dialog=46,timedialog=830}] animation.wave.grow2
execute @s[scores={dialog=46,timedialog=830}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=830}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=46,timedialog=920}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fLet's see if you'll change your mind after this."}]}
playanimation @s[scores={dialog=46,timedialog=920}] animation.wave.teleport2
execute @s[scores={dialog=46,timedialog=920}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=46,timedialog=920}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=920}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=46,timedialog=965}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2

execute @s[scores={dialog=46,timedialog=990}] ~ ~ ~ summon zedafox:blackportal 380 108.52 494
execute @s[scores={dialog=46,timedialog=990}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fDo the right thing."}]}
playanimation @s[scores={dialog=46,timedialog=990}] animation.wave.boss_bye
execute @s[scores={dialog=46,timedialog=990}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=46,timedialog=990}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=46,timedialog=1030}] ~ ~ ~ scoreboard players reset @a border
execute @s[scores={dialog=46,timedialog=1030}] ~ ~ ~ setblock ~ ~ ~ air

execute @s[scores={dialog=46,timedialog=1029}] ~ ~ ~ function objective/speaktothewizard
event entity @s[scores={dialog=46,timedialog=1040}] to_death

scoreboard players reset @s[scores={dialog=46,timedialog=1041..}] timedialog


// RAXLY - HELL YEAH

execute @s[scores={dialog=47,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou are a good partner."}]}
playanimation @s[scores={dialog=47,timedialog=40}] animation.wave.you
execute @s[scores={dialog=47,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI have so much to show you!"}]}
playanimation @s[scores={dialog=47,timedialog=80}] animation.wave.boss_fly
execute @s[scores={dialog=47,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fFly with me!"}]}
playanimation @s[scores={dialog=47,timedialog=140}] animation.wave.boss_fly2
execute @s[scores={dialog=47,timedialog=140}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=140}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=47,timedialog=140}] ~ ~ ~ effect @a levitation 5 1 true
execute @s[scores={dialog=47,timedialog=140}] ~ ~ ~ function transition/size8

execute @s[scores={dialog=47,timedialog=200}] ~ ~ ~ tp @a 325 49 450
execute @s[scores={dialog=47,timedialog=200}] ~ ~ ~ tp @s 337 51 450

execute @s[scores={dialog=47,timedialog=290}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fHere is my plan."}]}
playanimation @s[scores={dialog=47,timedialog=290}] animation.wave.presentation
execute @s[scores={dialog=47,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=340}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fFirst of all, you have to bring me the crystals of the dungeons."}]}
playanimation @s[scores={dialog=47,timedialog=340}] animation.wave.boss_fly
execute @s[scores={dialog=47,timedialog=340}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=340}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=450}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOnce done, I will be able to use my powers on all dimensions and on the whole universe!"}]}
playanimation @s[scores={dialog=47,timedialog=450}] animation.wave.boss_fly
execute @s[scores={dialog=47,timedialog=450}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=450}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=47,timedialog=450}] ~ ~ ~ summon zedafox:galaxy 337 51 450

execute @s[scores={dialog=47,timedialog=540}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWe will be able to destroy UNIVERSES together. Destroy all EXISTENCE! Create new ones!"}]}
playanimation @s[scores={dialog=47,timedialog=540}] animation.wave.head_grow
execute @s[scores={dialog=47,timedialog=540}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=540}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=640}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fAHAHAHAHAHAHAH!!!"}]}
execute @s[scores={dialog=47,timedialog=645}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fTOGETHER!!!"}]}
execute @s[scores={dialog=47,timedialog=650}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fAHAHAHAHAHAHAH!!!"}]}
execute @s[scores={dialog=47,timedialog=655}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fDESTROY EVERYTHING!!!"}]}
execute @s[scores={dialog=47,timedialog=660}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fAHAHAHAHAHAHAH!!!"}]}
execute @s[scores={dialog=47,timedialog=665}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fNOTHING WILL STOP US!!!"}]}
execute @s[scores={dialog=47,timedialog=670}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fAHAHAHAHAHAHAH!!!"}]}
execute @s[scores={dialog=47,timedialog=675}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWE'LL BECOME GODS."}]}
execute @s[scores={dialog=47,timedialog=680}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fAHAHAHAHAHAHAH!!!"}]}
playanimation @s[scores={dialog=47,timedialog=640}] animation.wave.crazy2
execute @s[scores={dialog=47,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=645}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=650}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=655}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=660}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=665}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=670}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=675}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=680}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=47,timedialog=685}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2


execute @s[scores={dialog=47,timedialog=750}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou know what?"}]}
playanimation @s[scores={dialog=47,timedialog=750}] animation.wave.question
execute @s[scores={dialog=47,timedialog=750}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=750}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=780}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI think you are the best partner I've ever had."}]}
playanimation @s[scores={dialog=47,timedialog=780}] animation.wave.talking
execute @s[scores={dialog=47,timedialog=780}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=780}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=850}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fNot like the scientist Hadson, who I killed because he refused to help me."}]}
playanimation @s[scores={dialog=47,timedialog=850}] animation.wave.talking
execute @s[scores={dialog=47,timedialog=850}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=850}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=940}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fBut you, you are not like this stupid guy."}]}
playanimation @s[scores={dialog=47,timedialog=940}] animation.wave.talking
execute @s[scores={dialog=47,timedialog=940}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=940}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=980}] ~ ~ ~ function transition/size8
execute @s[scores={dialog=47,timedialog=1050}] ~ ~ ~ tp @a 365 108 494 -90 0
execute @s[scores={dialog=47,timedialog=1050}] ~ ~ ~ tp @s 380 110 494

execute @s[scores={dialog=47,timedialog=1120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fHere we go, do it for me and the universe will be ours."}]}
playanimation @s[scores={dialog=47,timedialog=1120}] animation.wave.talking
execute @s[scores={dialog=47,timedialog=1120}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=1120}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=47,timedialog=1190}] ~ ~ ~ summon zedafox:blackportal 380 108.52 494
execute @s[scores={dialog=47,timedialog=1190}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fBye bye!"}]}
playanimation @s[scores={dialog=47,timedialog=1190}] animation.wave.boss_bye
execute @s[scores={dialog=47,timedialog=1190}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 1
execute @s[scores={dialog=47,timedialog=1190}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=47,timedialog=1230}] ~ ~ ~ scoreboard players reset @a border
execute @s[scores={dialog=47,timedialog=1230}] ~ ~ ~ setblock ~ ~ ~ air

execute @s[scores={dialog=47,timedialog=1239}] ~ ~ ~ function objective/speaktothewizard
event entity @s[scores={dialog=47,timedialog=1240}] to_death

scoreboard players reset @s[scores={dialog=47,timedialog=1241..}] timedialog




// The Wizard - SPAWN

execute @s[scores={dialog=52,timedialog=10}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fWhat?"}]}
playanimation @s[scores={dialog=52,timedialog=10}] animation.wave.turn_and_see
execute @s[scores={dialog=52,timedialog=10}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=52,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fAm I dreaming or did you just activate the creative gamemode to spawn me with an egg?"}]}
playanimation @s[scores={dialog=52,timedialog=60}] animation.wave.question
execute @s[scores={dialog=52,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=52,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThat's illegal..."}]}
playanimation @s[scores={dialog=52,timedialog=140}] animation.wave.requirement
execute @s[scores={dialog=52,timedialog=140}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

scoreboard players reset @s[scores={dialog=52,timedialog=141..}] timedialog


// The Wizard - GIVE THE CRYSTALS

execute @s[scores={dialog=53,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=53,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, interesting..."}]}
playanimation @s[scores={dialog=53,timedialog=40}] animation.wave.question
execute @s[scores={dialog=53,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=53,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI know that you recovered the crystals because they are too dangerous."}]}
playanimation @s[scores={dialog=53,timedialog=90}] animation.wave.negotiation
execute @s[scores={dialog=53,timedialog=90}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=53,timedialog=190}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDo you want me to get them for safekeeping?"}]}
playanimation @s[scores={dialog=53,timedialog=190}] animation.wave.negotiation
execute @s[scores={dialog=53,timedialog=190}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @e[scores={dialog=53,timedialog=270}] ~ ~ ~ dialogue open @e[type=npc,tag=wizard3] @a
execute @e[scores={dialog=53,timedialog=270}] ~ ~ ~ scoreboard players set @a forced 3
execute @s[scores={dialog=53,timedialog=270}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=53,timedialog=271..}] timedialog


// The Wizard - GIVE

execute @s[scores={dialog=54,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fVery well, this way, no one will be able to commit an act of evil."}]}
playanimation @s[scores={dialog=54,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=54,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=54,timedialog=40}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=54,timedialog=41}] timedialog


// The Wizard - Headache

execute @s[scores={dialog=55,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=55,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fJ XBOU UIFTF DSZTUBMT!!!"}]}
playanimation @s[scores={dialog=55,timedialog=40}] animation.wave.no
execute @s[scores={dialog=55,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 1 0.5
execute @s[scores={dialog=55,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound dramatic @s ~ ~ ~ 0.3 1
execute @s[scores={dialog=55,timedialog=40}] ~ ~ ~ effect @a slowness 2 6 true
execute @s[scores={dialog=55,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:wizard]

execute @s[scores={dialog=55,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fSorry, I have a headache..."}]}
playanimation @s[scores={dialog=55,timedialog=90}] animation.wave.shy
execute @s[scores={dialog=55,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.idle @s ~ ~ ~ 0.3 0.7

execute @s[scores={dialog=55,timedialog=91}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=55,timedialog=92}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking


scoreboard players reset @s[scores={dialog=55,timedialog=93}] timedialog



// The Wizard - INSIT 1 DONT GIVE

execute @s[scores={dialog=57,timedialog=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, are you sure?"}]}
playanimation @s[scores={dialog=57,timedialog=30}] animation.wave.question
execute @s[scores={dialog=57,timedialog=30}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=57,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou know, it will be very well hidden."}]}
playanimation @s[scores={dialog=57,timedialog=90}] animation.wave.shy
execute @s[scores={dialog=57,timedialog=90}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @e[scores={dialog=57,timedialog=140}] ~ ~ ~ dialogue open @e[type=npc,tag=wizard3] @a
execute @e[scores={dialog=57,timedialog=140}] ~ ~ ~ scoreboard players set @a forced 3
execute @s[scores={dialog=57,timedialog=140}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=57,timedialog=171}] timedialog


// The Wizard - INSIT 2

execute @s[scores={dialog=58,timedialog=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThese crystals are really dangerous, they must be hidden in an unfindable place."}]}
playanimation @s[scores={dialog=58,timedialog=30}] animation.wave.shy
execute @s[scores={dialog=58,timedialog=30}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=58,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou really don't want me to hide them?"}]}
playanimation @s[scores={dialog=58,timedialog=120}] animation.wave.question
execute @s[scores={dialog=58,timedialog=120}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @e[scores={dialog=58,timedialog=190}] ~ ~ ~ dialogue open @e[type=npc,tag=wizard3] @a
execute @e[scores={dialog=58,timedialog=190}] ~ ~ ~ scoreboard players set @a forced 3
execute @s[scores={dialog=58,timedialog=190}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=58,timedialog=201}] timedialog


// The Wizard - INSIT 3

execute @s[scores={dialog=59,timedialog=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDude, are you planning on keeping them for world domination?"}]}
playanimation @s[scores={dialog=59,timedialog=30}] animation.wave.question
execute @s[scores={dialog=59,timedialog=30}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=59,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fGive them to me!"}]}
playanimation @s[scores={dialog=59,timedialog=90}] animation.wave.asking
execute @s[scores={dialog=59,timedialog=90}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.7

execute @e[scores={dialog=59,timedialog=150}] ~ ~ ~ dialogue open @e[type=npc,tag=wizard3] @a
execute @e[scores={dialog=59,timedialog=150}] ~ ~ ~ scoreboard players set @a forced 3
execute @s[scores={dialog=59,timedialog=150}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=59,timedialog=181}] timedialog

// The Wizard - INSIT 4

execute @s[scores={dialog=60,timedialog=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fENOUGH GIVE THEM TO ME!"}]}
playanimation @s[scores={dialog=60,timedialog=30}] animation.wave.asking
execute @s[scores={dialog=60,timedialog=30}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.5
execute @s[scores={dialog=60,timedialog=30}] ~ ~ ~ camerashake add @a 0.15 1

execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§o§7The wizard snatched your crystals"}]}
execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ playsound armor.equip_gold @a
execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ clear @a zedafox:crystal1
execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ clear @a zedafox:crystal2
execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ clear @a zedafox:crystal3
execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ clear @a zedafox:crystal4

execute @s[scores={dialog=60,timedialog=70}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=60,timedialog=91}] timedialog




//  The wizard - I KNOW WHAT YOU DID

execute @s[scores={dialog=73,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] remove screwup
execute @s[scores={dialog=73,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking
execute @s[scores={dialog=73,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound serious @s ~ ~ ~ 0.65

execute @s[scores={dialog=73,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDo you really think you can hide what you're doing?"}]}
playanimation @s[scores={dialog=73,timedialog=40}] animation.wave.question
execute @s[scores={dialog=73,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI know what you did..."}]}
playanimation @s[scores={dialog=73,timedialog=120}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=120}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=190}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDo you even know that Raxly does not intend to dominate the universe with you?"}]}
playanimation @s[scores={dialog=73,timedialog=190}] animation.wave.question
execute @s[scores={dialog=73,timedialog=190}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fShe will seize power on her own, and kill you."}]}
playanimation @s[scores={dialog=73,timedialog=300}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=300}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=390}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou know, if the crystals are gathered in one point. There will be no going back."}]}
playanimation @s[scores={dialog=73,timedialog=390}] animation.wave.talking
execute @s[scores={dialog=73,timedialog=390}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=480}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fNo one will be able to stop it."}]}
playanimation @s[scores={dialog=73,timedialog=480}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=480}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=560}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fCrystals can literally change the codes and laws of the universe."}]}
playanimation @s[scores={dialog=73,timedialog=560}] animation.wave.asking
execute @s[scores={dialog=73,timedialog=560}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=640}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fAnd therefore allow to forbid time travel."}]}
playanimation @s[scores={dialog=73,timedialog=640}] animation.wave.asking
execute @s[scores={dialog=73,timedialog=640}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=780}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDo you realize now how dangerous these crystals are?"}]}
playanimation @s[scores={dialog=73,timedialog=780}] animation.wave.asking
execute @s[scores={dialog=73,timedialog=780}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=880}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI really need to explain to you who Raxly really is."}]}
playanimation @s[scores={dialog=73,timedialog=880}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=880}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=960}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fRaxly exists in this dimension because others like you have given her a small amount of crystal."}]}
playanimation @s[scores={dialog=73,timedialog=960}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=960}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=1100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThis has allowed her to partially change the code of her dimension and thus be in two dimensions at the same time."}]}
playanimation @s[scores={dialog=73,timedialog=1100}] animation.wave.talking
execute @s[scores={dialog=73,timedialog=1100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=1270}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIf she gets all the crystals, it will be the end of all imaginable existence."}]}
playanimation @s[scores={dialog=73,timedialog=1270}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=1270}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=1390}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fHuh..."}]}
playanimation @s[scores={dialog=73,timedialog=1390}] animation.wave.shy
execute @s[scores={dialog=73,timedialog=1390}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=73,timedialog=1430}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI guess that got you thinking now?"}]}
playanimation @s[scores={dialog=73,timedialog=1430}] animation.wave.question
execute @s[scores={dialog=73,timedialog=1430}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @e[scores={dialog=73,timedialog=1490}] ~ ~ ~ dialogue open @e[type=npc,tag=wizard4] @a
execute @s[scores={dialog=73,timedialog=1490}] ~ ~ ~ playsound chat @a

execute @s[scores={dialog=73,timedialog=1490}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=73,timedialog=1491}] timedialog


// The Wizard - GOOD CHOICE

execute @s[scores={dialog=74,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=74,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fAll right."}]}
playanimation @s[scores={dialog=74,timedialog=60}] animation.wave.shy
execute @s[scores={dialog=74,timedialog=60}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=74,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI trust you not to screw up."}]}
playanimation @s[scores={dialog=74,timedialog=100}] animation.wave.you
execute @s[scores={dialog=74,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=74,timedialog=100}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=74,timedialog=101}] timedialog



// The Wizard - I DON'T CARE

execute @s[scores={dialog=75,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=75,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fHmm... Raxly?"}]}
playanimation @s[scores={dialog=75,timedialog=40}] animation.wave.question
execute @s[scores={dialog=75,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=75,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDid you manipulate the brain of §e"},{"selector":"@r"},{"text":"§f?"}]}
playanimation @s[scores={dialog=75,timedialog=80}] animation.wave.thinking
execute @s[scores={dialog=75,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=75,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThat can't be possible. You're not your usual self."}]}
playanimation @s[scores={dialog=75,timedialog=130}] animation.wave.shy
execute @s[scores={dialog=75,timedialog=130}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=75,timedialog=130}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=75,timedialog=131}] timedialog



// KALEY - WELCOME

execute @s[scores={dialog=76,timedialog=2}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=76,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fWelcome to my shop!"}]}
playanimation @s[scores={dialog=76,timedialog=2}] animation.wave.presentation
execute @s[scores={dialog=76,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.1

execute @s[scores={dialog=76,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fYou can buy weapons from me and test them on my dummy!"}]}
playanimation @s[scores={dialog=76,timedialog=40}] animation.wave.talking
execute @s[scores={dialog=76,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.1

execute @s[scores={dialog=76,timedialog=40}] ~ ~ ~ tag @s remove is_talking

scoreboard players reset @s[scores={dialog=76,timedialog=41}] timedialog



// JULIA - LIKE CAKE = TRUE

execute @s[scores={dialog=77,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fOhhh, hiii!"}]}
playanimation @s[scores={dialog=77,timedialog=2}] animation.wave.cute_hand
execute @s[scores={dialog=77,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=77,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fYou know..."}]}
playanimation @s[scores={dialog=77,timedialog=40}] animation.wave.long_talking
execute @s[scores={dialog=77,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=77,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fSince Grayson is my brother..."}]}
execute @s[scores={dialog=77,timedialog=70}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=77,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fI get free cake every day!"}]}
execute @s[scores={dialog=77,timedialog=120}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8


scoreboard players reset @s[scores={dialog=77,timedialog=121}] timedialog


// JULIA - LIKE CAKE = FALSE

execute @s[scores={dialog=78,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fHelloooooo!"}]}
playanimation @s[scores={dialog=78,timedialog=2}] animation.wave.cute_hand
execute @s[scores={dialog=78,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=78,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fYou know..."}]}
playanimation @s[scores={dialog=78,timedialog=40}] animation.wave.long_talking
execute @s[scores={dialog=78,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=78,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fYou could have free cakes if you like cakes."}]}
execute @s[scores={dialog=78,timedialog=70}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8

execute @s[scores={dialog=78,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fBut pity, it is not the case..."}]}
playanimation @s[scores={dialog=78,timedialog=130}] animation.wave.sad
execute @s[scores={dialog=78,timedialog=130}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.8


scoreboard players reset @s[scores={dialog=78,timedialog=141}] timedialog



// GRAYSON - WELCOME

execute @s[scores={dialog=79,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnd third, this is the elevator to the dungeons."}]}
playanimation @s[scores={dialog=79,timedialog=60}] animation.wave.talking
execute @s[scores={dialog=79,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=79,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBut before you go in there, you have to go buy weapons from §6Kaley§f!"}]}
playanimation @s[scores={dialog=79,timedialog=120}] animation.wave.negotiation
execute @s[scores={dialog=79,timedialog=120}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=79,timedialog=200}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] dungeon 1
execute @s[scores={dialog=79,timedialog=200}] ~ ~ ~ function event/phase1
execute @s[scores={dialog=79,timedialog=200}] ~ ~ ~ function objective/buyweapons

execute @s[scores={dialog=79,timedialog=200}] ~ ~ ~ scoreboard players set @a border 3

scoreboard players reset @s[scores={dialog=79,timedialog=201}] timedialog




// KALEY IS READY - DIDNT INTERACT

execute @s[scores={dialog=80,timedialog=2}] ~ ~ ~ tag @s add is_talking
execute @s[scores={dialog=80,timedialog=2}] ~ ~ ~ function objective/reset

execute @s[scores={dialog=80,timedialog=5}] ~ ~ ~ playsound crush3 @a
execute @s[scores={dialog=80,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fH-hey..."}]}
playanimation @s[scores={dialog=80,timedialog=5}] animation.wave.shy
execute @s[scores={dialog=80,timedialog=5}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=80,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI didn't tell you but..."}]}
playanimation @s[scores={dialog=80,timedialog=40}] animation.wave.talking
execute @s[scores={dialog=80,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=80,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI have a crush on §dKernel§f."}]}
playanimation @s[scores={dialog=80,timedialog=100}] animation.wave.negotiation
execute @s[scores={dialog=80,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=80,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fAnd I was thinking that..."}]}
playanimation @s[scores={dialog=80,timedialog=160}] animation.wave.shy
execute @s[scores={dialog=80,timedialog=160}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=80,timedialog=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fit's time for me to tell her."}]}
playanimation @s[scores={dialog=80,timedialog=230}] animation.wave.shy
execute @s[scores={dialog=80,timedialog=230}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=80,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fSo, I need a little help from you."}]}
playanimation @s[scores={dialog=80,timedialog=280}] animation.wave.asking
execute @s[scores={dialog=80,timedialog=280}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=80,timedialog=340}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI will try to do what I can do. Could you help me by telling me what to do during my date?"}]}
playanimation @s[scores={dialog=80,timedialog=340}] animation.wave.asking
execute @s[scores={dialog=80,timedialog=340}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1


execute @s[scores={dialog=80,timedialog=440}] ~ ~ ~ dialogue open @e[type=npc,tag=chat10] @a
execute @s[scores={dialog=80,timedialog=440}] ~ ~ ~ scoreboard players set @a forced 2
execute @s[scores={dialog=80,timedialog=440}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=80,timedialog=441}] timedialog



// BRUNO - WELCOME

execute @s[scores={dialog=81,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fHey! Welcome!"}]}
playanimation @s[scores={dialog=81,timedialog=2}] animation.wave.hello
execute @s[scores={dialog=81,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=81,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fYou don't know how much it excites me to talk to a hero like you."}]}
playanimation @s[scores={dialog=81,timedialog=60}] animation.wave.talking
execute @s[scores={dialog=81,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=81,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fI hope you will enjoy our village."}]}
playanimation @s[scores={dialog=81,timedialog=150}] animation.wave.happy2
execute @s[scores={dialog=81,timedialog=150}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 0.9

scoreboard players reset @s[scores={dialog=81,timedialog=151}] timedialog


// RADLEY - PVP

execute @s[scores={dialog=82,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fY'know?"}]}
playanimation @s[scores={dialog=82,timedialog=2}] animation.wave.question
execute @s[scores={dialog=82,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=82,timedialog=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fI've never lost a pvp game."}]}
playanimation @s[scores={dialog=82,timedialog=30}] animation.wave.me
execute @s[scores={dialog=82,timedialog=30}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=82,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fI know I know, no need to congratulate me."}]}
playanimation @s[scores={dialog=82,timedialog=80}] animation.wave.no
playanimation @s[scores={dialog=82,timedialog=100}] animation.wave.scoffing
execute @s[scores={dialog=82,timedialog=80}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

scoreboard players reset @s[scores={dialog=82,timedialog=121}] timedialog



// GRAYSON - KALEY WANTS TO TELL YOU SOMETHING

execute @s[scores={dialog=84,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWell done! You got the crystal."}]}
playanimation @s[scores={dialog=84,timedialog=2}] animation.wave.talking
execute @s[scores={dialog=84,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1

execute @s[scores={dialog=84,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fYou've done a very good job!"}]}
playanimation @s[scores={dialog=84,timedialog=60}] animation.wave.you
execute @s[scores={dialog=84,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1

execute @s[scores={dialog=84,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnd also, §6Kaley§f told me he wanted to talk to you secretly."}]}
playanimation @s[scores={dialog=84,timedialog=120}] animation.wave.turn_and_see
playanimation @s[scores={dialog=84,timedialog=160}] animation.wave.question
execute @s[scores={dialog=84,timedialog=120}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1


execute @s[scores={dialog=84,timedialog=220}] ~ ~ ~ function objective/speaktokaley

scoreboard players reset @s[scores={dialog=84,timedialog=221}] timedialog




// RAXLY - SPEECH BEFORE FIGHT [ DON'T HELP ]

execute @s[scores={dialog=85,timedialog=2}] ~ ~ ~ execute @a ~ ~ ~ playsound final @s ~ ~ ~ 0.5 
execute @s[scores={dialog=85,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWell, well, well..."}]}
playanimation @s[scores={dialog=85,timedialog=40}] animation.wave.spinhead
execute @s[scores={dialog=85,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=85,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=85,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fIs this what you are looking for?"}]}
playanimation @s[scores={dialog=85,timedialog=80}] animation.wave.boss_crazy
execute @s[scores={dialog=85,timedialog=100}] ~ ~ ~ summon zedafox:crystal ~ ~ ~ skin4
execute @s[scores={dialog=85,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=85,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=85,timedialog=140}] ~ ~ ~ event entity @e[type=zedafox:crystal] to_death

execute @s[scores={dialog=85,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fIt seems I told you to bring me the other crystals."}]}
playanimation @s[scores={dialog=85,timedialog=160}] animation.wave.boss_teleport
execute @s[scores={dialog=85,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=85,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=85,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 
execute @s[scores={dialog=85,timedialog=180}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 
execute @s[scores={dialog=85,timedialog=200}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 

execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fISN'T THAT RIGHT?!"}]}
playanimation @s[scores={dialog=85,timedialog=250}] animation.wave.boss_angry
execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ effect @a slowness 2 3 true
execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:boss]
execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ playsound creepy @a 
execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound hit @s ~ ~ ~ 0.5
execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.3
execute @s[scores={dialog=85,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.5

execute @s[scores={dialog=85,timedialog=330}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fSo, are you here to give them to me?"}]}
playanimation @s[scores={dialog=85,timedialog=330}] animation.wave.talking
execute @s[scores={dialog=85,timedialog=330}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=85,timedialog=330}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @e[scores={dialog=85,timedialog=400}] ~ ~ ~ scoreboard players set @a forced 15
execute @e[scores={dialog=85,timedialog=400}] ~ ~ ~ dialogue open @e[type=npc,tag=chat18] @a
execute @s[scores={dialog=85,timedialog=400}] ~ ~ ~ playsound chat @a


scoreboard players reset @s[scores={dialog=85,timedialog=401}] timedialog






// RAXLY - SPEECH BEFORE FIGHT [ HELP ]

execute @s[scores={dialog=86,timedialog=2}] ~ ~ ~ execute @a ~ ~ ~ playsound final @s ~ ~ ~ 0.5 
execute @s[scores={dialog=86,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOh, there you are."}]}
playanimation @s[scores={dialog=86,timedialog=40}] animation.wave.hello
execute @s[scores={dialog=86,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=86,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI have a big surprise for you."}]}
playanimation @s[scores={dialog=86,timedialog=100}] animation.wave.boss_fly
execute @s[scores={dialog=86,timedialog=100}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=100}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=86,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI have the last crystal!"}]}
playanimation @s[scores={dialog=86,timedialog=160}] animation.wave.boss_crazy
execute @s[scores={dialog=86,timedialog=180}] ~ ~ ~ summon zedafox:crystal ~ ~ ~ skin4
execute @s[scores={dialog=86,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=86,timedialog=220}] ~ ~ ~ event entity @e[type=zedafox:crystal] to_death

execute @s[scores={dialog=86,timedialog=250}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWe'll finally be able to dominate the universe you and I!"}]}
playanimation @s[scores={dialog=86,timedialog=250}] animation.wave.boss_teleport
execute @s[scores={dialog=86,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=86,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 
execute @s[scores={dialog=86,timedialog=270}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 
execute @s[scores={dialog=86,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.3 

execute @s[scores={dialog=86,timedialog=330}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou don't know how excited I am!!"}]}
playanimation @s[scores={dialog=86,timedialog=330}] animation.wave.boss_hype
execute @s[scores={dialog=86,timedialog=330}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=330}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=86,timedialog=390}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWe will accomplish great things together!"}]}
playanimation @s[scores={dialog=86,timedialog=390}] animation.wave.boss_hype3
execute @s[scores={dialog=86,timedialog=390}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=390}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=86,timedialog=480}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOh, there is still one step missing."}]}
playanimation @s[scores={dialog=86,timedialog=480}] animation.wave.shy
execute @s[scores={dialog=86,timedialog=480}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=480}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=86,timedialog=540}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fDid you bring the crystals I asked for?"}]}
playanimation @s[scores={dialog=86,timedialog=540}] animation.wave.question
execute @s[scores={dialog=86,timedialog=540}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=86,timedialog=540}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @e[scores={dialog=86,timedialog=610}] ~ ~ ~ scoreboard players set @a forced 15
execute @e[scores={dialog=86,timedialog=610}] ~ ~ ~ dialogue open @e[type=npc,tag=chat18] @a
execute @s[scores={dialog=86,timedialog=610}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=86,timedialog=661}] timedialog


// RAXLY - WAIT WHAT?

execute @s[scores={dialog=87,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWait, what?!"}]}
playanimation @s[scores={dialog=87,timedialog=40}] animation.wave.surprised
execute @s[scores={dialog=87,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=87,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fIS THAT TRUE?!"}]}
playanimation @s[scores={dialog=87,timedialog=80}] animation.wave.boss_angry
execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ effect @a slowness 2 3 true
execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:boss]
execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ playsound creepy @a 
execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound hit @s ~ ~ ~ 0.5
execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.3
execute @s[scores={dialog=87,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.5

execute @s[scores={dialog=87,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fTHIS WAS YOUR PLAN ALL ALONG?!"}]}
playanimation @s[scores={dialog=87,timedialog=150}] animation.wave.head_grow3
execute @s[scores={dialog=87,timedialog=150}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=87,timedialog=150}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=87,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI thought I could TRUST YOU!!!"}]}
playanimation @s[scores={dialog=87,timedialog=220}] animation.wave.boss_hype
execute @s[scores={dialog=87,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=87,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8


execute @s[scores={dialog=87,timedialog=290}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fAND YOU DARE TO BETRAY ME!!!"}]}
playanimation @s[scores={dialog=87,timedialog=290}] animation.wave.head_grow2
execute @s[scores={dialog=87,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=87,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.5

execute @s[scores={dialog=87,timedialog=360}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWell, let's get on with it, it's your death or the crystals."}]}
playanimation @s[scores={dialog=87,timedialog=360}] animation.wave.boss_angry
execute @s[scores={dialog=87,timedialog=360}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=87,timedialog=360}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ stopsound @a final
execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ playsound hit @a
execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7§oThe last fight has begun, shoot Raxly with your laser."}]}

execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 10
execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ particle zedafox:disc_white ~ ~ ~
execute @s[scores={dialog=87,timedialog=450}] ~ ~ ~ playsound teleport @a
playanimation @s[scores={dialog=87,timedialog=450}] animation.wave.just_tp

execute @s[scores={dialog=87,timedialog=455}] ~ ~ ~ execute @r[type=zedafox:raxly_tp,rm=2] ~ ~ ~ summon zedafox:raxly
event entity @s[scores={dialog=87,timedialog=456}] to_death

scoreboard players reset @s[scores={dialog=87,timedialog=561}] timedialog


// RAXLY - WHY YOU REFUSE?

execute @s[scores={dialog=88,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fHuh?"}]}
playanimation @s[scores={dialog=88,timedialog=40}] animation.wave.question
execute @s[scores={dialog=88,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=88,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWhy do you refuse to give them to me?!"}]}
playanimation @s[scores={dialog=88,timedialog=80}] animation.wave.talking
execute @s[scores={dialog=88,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fDID YOU FORGET THE DEAL?!"}]}
playanimation @s[scores={dialog=88,timedialog=130}] animation.wave.boss_angry
execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ effect @a slowness 2 3 true
execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ execute @a ~ ~ ~ tp @s ~ ~ ~ facing @e[type=zedafox:boss]
execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ playsound creepy @a 
execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ execute @a ~ ~ ~ playsound hit @s ~ ~ ~ 0.5
execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.3
execute @s[scores={dialog=88,timedialog=130}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.5

execute @s[scores={dialog=88,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYOU ARE SUPPOSED TO HELP ME!!!"}]}
playanimation @s[scores={dialog=88,timedialog=220}] animation.wave.crazy2
execute @s[scores={dialog=88,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8
execute @s[scores={dialog=88,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=225}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=230}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=235}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=240}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=245}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=255}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=260}] ~ ~ ~ execute @a ~ ~ ~ playsound teleport @s ~ ~ ~ 0.2


execute @s[scores={dialog=88,timedialog=330}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWell, let's get on with it, it's your death or the crystals."}]}
playanimation @s[scores={dialog=88,timedialog=330}] animation.wave.boss_angry
execute @s[scores={dialog=88,timedialog=330}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=88,timedialog=330}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ stopsound @a final

execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 10
execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ playsound hit @a
execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7§oThe last fight has begun, shoot Raxly with your laser."}]}
execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ particle zedafox:disc_white ~ ~ ~
execute @s[scores={dialog=88,timedialog=420}] ~ ~ ~ playsound teleport @a
playanimation @s[scores={dialog=88,timedialog=420}] animation.wave.just_tp

execute @s[scores={dialog=88,timedialog=425}] ~ ~ ~ execute @r[type=zedafox:raxly_tp,rm=2] ~ ~ ~ summon zedafox:raxly
event entity @s[scores={dialog=88,timedialog=426}] to_death

scoreboard players reset @s[scores={dialog=88,timedialog=561}] timedialog



// RAXLY - THAT'S WHAT I WAS THINKING

execute @s[scores={dialog=89,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fThat's what I was thinking..."}]}
playanimation @s[scores={dialog=89,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=89,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=89,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=89,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI don't know how you can be so brave after my death threats."}]}
playanimation @s[scores={dialog=89,timedialog=120}] animation.wave.head_grow3
execute @s[scores={dialog=89,timedialog=120}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=89,timedialog=120}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=89,timedialog=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI told you that you would suffer if you don't give them to me."}]}
playanimation @s[scores={dialog=89,timedialog=200}] animation.wave.angry
execute @s[scores={dialog=89,timedialog=200}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=89,timedialog=200}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=89,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fBUT APPARENTLY THIS IS WHAT YOU WANT!!!"}]}
playanimation @s[scores={dialog=89,timedialog=280}] animation.wave.boss_angry
execute @s[scores={dialog=89,timedialog=280}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=89,timedialog=280}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=89,timedialog=380}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fWell, let's get on with it, it's your death or the crystals."}]}
playanimation @s[scores={dialog=89,timedialog=380}] animation.wave.question
execute @s[scores={dialog=89,timedialog=380}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=89,timedialog=380}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ stopsound @a final
execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ playsound hit @a
execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7§oThe last fight has begun, shoot Raxly with your laser."}]}
execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ particle zedafox:disc_white ~ ~ ~
execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ playsound teleport @a

execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 10
execute @s[scores={dialog=89,timedialog=470}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

playanimation @s[scores={dialog=89,timedialog=470}] animation.wave.just_tp

execute @s[scores={dialog=89,timedialog=475}] ~ ~ ~ execute @r[type=zedafox:raxly_tp,rm=2] ~ ~ ~ summon zedafox:raxly
event entity @s[scores={dialog=89,timedialog=476}] to_death



scoreboard players reset @s[scores={dialog=89,timedialog=561}] timedialog



// KALEY - GOOD CHOICE

tag @s[scores={dialog=90,timedialog=2}] add is_talking
execute @s[scores={dialog=90,timedialog=2}] ~ ~ ~ function objective/reset

execute @s[scores={dialog=90,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fExcellent choice!"}]}
playanimation @s[scores={dialog=90,timedialog=40}] animation.wave.yes
execute @s[scores={dialog=90,timedialog=40}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1

execute @s[scores={dialog=90,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fUnfortunately I don't have everything in my store."}]}
playanimation @s[scores={dialog=90,timedialog=80}] animation.wave.negotiation
execute @s[scores={dialog=90,timedialog=80}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1

execute @s[scores={dialog=90,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fMaybe you could go see §dThe Wizard§f? I heard he sells potions."}]}
playanimation @s[scores={dialog=90,timedialog=150}] animation.wave.asking
execute @s[scores={dialog=90,timedialog=150}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1

execute @s[scores={dialog=90,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI don't know him well enough, we never see him."}]}
playanimation @s[scores={dialog=90,timedialog=220}] animation.wave.talking
playanimation @s[scores={dialog=90,timedialog=260}] animation.wave.turn_and_see
execute @s[scores={dialog=90,timedialog=220}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1

execute @s[scores={dialog=90,timedialog=300}] ~ ~ ~ function objective/meetthewizard
execute @s[scores={dialog=90,timedialog=300}] ~ ~ ~ scoreboard players reset @a border
tag @s[scores={dialog=90,timedialog=300}] remove is_talking

scoreboard players reset @s[scores={dialog=90,timedialog=301}] timedialog


// GRAYSON - KALEY HAS A SECRET FOR YOU

execute @s[scores={dialog=91,timedialog=2}] ~ ~ ~ execute @a ~ ~ ~ playsound serious3 @s ~ ~ ~ 0.5

execute @s[scores={dialog=91,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnother good job done by you!"}]}
playanimation @s[scores={dialog=91,timedialog=2}] animation.wave.you
execute @s[scores={dialog=91,timedialog=2}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fCurrently, we have only 2 crystals left to recover."}]}
playanimation @s[scores={dialog=91,timedialog=80}] animation.wave.requirement
execute @s[scores={dialog=91,timedialog=80}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWhen Hadson was still alive, he told us that Raxly was currently searching for these crystals to dominate the universe."}]}
playanimation @s[scores={dialog=91,timedialog=150}] animation.wave.talking
execute @s[scores={dialog=91,timedialog=150}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=290}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fMoreover, that these crystals allow us to do whatever we want with the universe."}]}
playanimation @s[scores={dialog=91,timedialog=290}] animation.wave.whole2
execute @s[scores={dialog=91,timedialog=290}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=400}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fIt allows to change the code of the universe, according to Hadson."}]}
playanimation @s[scores={dialog=91,timedialog=400}] animation.wave.talking
execute @s[scores={dialog=91,timedialog=400}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=490}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fThat's why they are so dangerous and must be hidden in an isolated place."}]}
playanimation @s[scores={dialog=91,timedialog=490}] animation.wave.requirement
execute @s[scores={dialog=91,timedialog=490}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fYou should go buy much more powerful weapons in §6Kaley§f's store."}]}
playanimation @s[scores={dialog=91,timedialog=600}] animation.wave.negotiation
execute @s[scores={dialog=91,timedialog=600}] ~ ~ ~ playsound mob.villager.yes @a

execute @s[scores={dialog=91,timedialog=670}] ~ ~ ~ function objective/speaktokaley

scoreboard players reset @s[scores={dialog=91,timedialog=671}] timedialog





// KALEY THANKS

execute @s[scores={dialog=92,timedialog=20}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=92,timedialog=5}] ~ ~ ~ playsound joy @a

execute @s[scores={dialog=92,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fThanks, thanks, thanks, thanks!"}]}
playanimation @s[scores={dialog=92,timedialog=20}] animation.wave.happy2
execute @s[scores={dialog=92,timedialog=20}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=92,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fThanks to you I found true love."}]}
playanimation @s[scores={dialog=92,timedialog=60}] animation.wave.you
playanimation @s[scores={dialog=92,timedialog=90}] animation.wave.happy2
execute @s[scores={dialog=92,timedialog=60}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=92,timedialog=60}] ~ ~ ~ playanimation @e[name=§rKernel] animation.wave.cute_hand

execute @s[scores={dialog=92,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI don't know what to say, it was so magical!"}]}
playanimation @s[scores={dialog=92,timedialog=120}] animation.wave.never
playanimation @s[scores={dialog=92,timedialog=160}] animation.wave.whole2
execute @s[scores={dialog=92,timedialog=120}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=92,timedialog=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI think you deserve the best reward I can give."}]}
playanimation @s[scores={dialog=92,timedialog=200}] animation.wave.requirement
execute @s[scores={dialog=92,timedialog=200}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=92,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI give you the most expensive item in my store for free!"}]}
playanimation @s[scores={dialog=92,timedialog=280}] animation.wave.presentation
playanimation @s[scores={dialog=92,timedialog=320}] animation.wave.happy
execute @s[scores={dialog=92,timedialog=280}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1

execute @s[scores={dialog=92,timedialog=370}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fHere it is"}]}
playanimation @s[scores={dialog=92,timedialog=370}] animation.wave.you
execute @s[scores={dialog=92,timedialog=370}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1.1
execute @s[scores={dialog=92,timedialog=370}] ~ ~ ~ playsound armor.equip_gold @a
execute @s[scores={dialog=92,timedialog=370}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7§oYou received a laser."}]}
execute @s[scores={dialog=92,timedialog=370}] ~ ~ ~ give @a zedafox:laser 1 0 {"item_lock": {"mode": "lock_in_inventory"}}

tag @s[scores={dialog=92,timedialog=370}] remove is_talking

execute @s[scores={dialog=92,timedialog=450}] ~ ~ ~ function objective/newmission



scoreboard players reset @s[scores={dialog=92,timedialog=451}] timedialog




// BRUNO - FAVORITE FLAVOR

execute @s[scores={dialog=93,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fHey, I have a question."}]}
playanimation @s[scores={dialog=93,timedialog=2}] animation.wave.question
execute @s[scores={dialog=93,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=93,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fJust out of curiosity, what is your favorite cake flavor?"}]}
playanimation @s[scores={dialog=93,timedialog=60}] animation.wave.asking
execute @s[scores={dialog=93,timedialog=60}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @e[scores={dialog=93,timedialog=130}] ~ ~ ~ dialogue open @e[type=npc,tag=chat21] @a
execute @s[scores={dialog=93,timedialog=130}] ~ ~ ~ playsound chat @a

scoreboard players reset @s[scores={dialog=93,timedialog=151}] timedialog


// BRUNO - FAVORITE FLAVOR

execute @s[scores={dialog=94,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fOh, okay."}]}
playanimation @s[scores={dialog=94,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=94,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=94,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fI'm not going to start a debate to say that strawberry cake is the best."}]}
playanimation @s[scores={dialog=94,timedialog=90}] animation.wave.no
execute @s[scores={dialog=94,timedialog=90}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

scoreboard players reset @s[scores={dialog=94,timedialog=91}] timedialog


// BRUNO - STRAWBERRY

execute @s[scores={dialog=95,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fOh, you too?"}]}
playanimation @s[scores={dialog=95,timedialog=40}] animation.wave.surprised
execute @s[scores={dialog=95,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=95,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fWe have so much in common, you and I."}]}
playanimation @s[scores={dialog=95,timedialog=90}] animation.wave.you
playanimation @s[scores={dialog=95,timedialog=120}] animation.wave.me
execute @s[scores={dialog=95,timedialog=90}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

execute @s[scores={dialog=95,timedialog=90}] ~ ~ ~ scoreboard players set @e[name=Radley] dialog 96
execute @s[scores={dialog=95,timedialog=90}] ~ ~ ~ tag @e[name=Radley] add chat

scoreboard players reset @s[scores={dialog=95,timedialog=121}] timedialog




// RADLEY - I HEARD YOUR CONVERSATION

execute @s[scores={dialog=96,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fEh, just saying..."}]}
playanimation @s[scores={dialog=96,timedialog=2}] animation.wave.question
execute @s[scores={dialog=96,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1

execute @s[scores={dialog=96,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fI overheard your stupid conversation about cakes you and §3Bruno§r."}]}
playanimation @s[scores={dialog=96,timedialog=40}] animation.wave.facepalm
execute @s[scores={dialog=96,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1

execute @s[scores={dialog=96,timedialog=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fChocolate is better!"}]}
playanimation @s[scores={dialog=96,timedialog=120}] animation.wave.angry
execute @s[scores={dialog=96,timedialog=120}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 1

scoreboard players reset @s[scores={dialog=96,timedialog=121}] timedialog



// BRUNO - LATE

execute @s[scores={dialog=97,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fI really need to stop leaving my restaurant open at midnight."}]}
playanimation @s[scores={dialog=97,timedialog=2}] animation.wave.boring2
execute @s[scores={dialog=97,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

scoreboard players reset @s[scores={dialog=97,timedialog=3}] timedialog




// THE WIZARD - LOVE

execute @s[scores={dialog=98,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=98,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fBruh."}]}
playanimation @s[scores={dialog=98,timedialog=40}] animation.wave.boring2
execute @s[scores={dialog=98,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=98,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fYou can tell §6Kaley§f he's heading for the wall."}]}
playanimation @s[scores={dialog=98,timedialog=80}] animation.wave.talking
execute @s[scores={dialog=98,timedialog=80}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=98,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fLove is useless, it is better to just be in love than to be in a relationship."}]}
playanimation @s[scores={dialog=98,timedialog=150}] animation.wave.shy
execute @s[scores={dialog=98,timedialog=150}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=98,timedialog=190}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=98,timedialog=191}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=98,timedialog=191}] timedialog




// RAXLY - DEATH

execute @s[scores={dialog=99,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOweeowoeeow..."}]}
playanimation @s[scores={dialog=99,timedialog=20}] animation.wave.boss_sick
execute @s[scores={dialog=99,timedialog=20}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=99,timedialog=20}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=99,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fSo this is how it ends between us?"}]}
playanimation @s[scores={dialog=99,timedialog=90}] animation.wave.shy
execute @s[scores={dialog=99,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=99,timedialog=90}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=99,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI just wanted to..."}]}
playanimation @s[scores={dialog=99,timedialog=150}] animation.wave.boss_sad
execute @s[scores={dialog=99,timedialog=150}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=99,timedialog=150}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=99,timedialog=240}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fTo be something more useful..."}]}
playanimation @s[scores={dialog=99,timedialog=240}] animation.wave.shy
execute @s[scores={dialog=99,timedialog=240}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2
execute @s[scores={dialog=99,timedialog=240}] ~ ~ ~ execute @a ~ ~ ~ playsound raxly @a ~ ~ ~ 0.2 0.8

execute @s[scores={dialog=99,timedialog=240}] ~ ~ ~ function cutscene/raxly_death/scene2

playanimation @s[scores={dialog=99,timedialog=260}] animation.wave.boss_fall

execute @s[scores={dialog=99,timedialog=300}] ~ ~ ~ function cutscene/raxly_death/scene3
execute @s[scores={dialog=99,timedialog=320}] ~ ~ ~ particle zedafox:oxygen2 ~ ~-4 ~

scoreboard players reset @s[scores={dialog=99,timedialog=360}] timedialog




//  The wizard - I KNOW WHAT YOU DID

execute @s[scores={dialog=100,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] remove not-screwup
execute @s[scores={dialog=100,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking
execute @s[scores={dialog=100,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound serious @s ~ ~ ~ 0.65

execute @s[scores={dialog=100,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fRaxly..."}]}
playanimation @s[scores={dialog=100,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=100,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fDo you know what she plans to do?"}]}
playanimation @s[scores={dialog=100,timedialog=100}] animation.wave.question
execute @s[scores={dialog=100,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fShe wants to be able to change the entire code of the universe!"}]}
playanimation @s[scores={dialog=100,timedialog=180}] animation.wave.requirement
execute @s[scores={dialog=100,timedialog=180}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=280}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIf her plan works..."}]}
playanimation @s[scores={dialog=100,timedialog=280}] animation.wave.shy
execute @s[scores={dialog=100,timedialog=280}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=350}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThere will be no going back!"}]}
playanimation @s[scores={dialog=100,timedialog=350}] animation.wave.asking
execute @s[scores={dialog=100,timedialog=350}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=450}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fThese crystals can literally change the code of the universe."}]}
playanimation @s[scores={dialog=100,timedialog=450}] animation.wave.asking
execute @s[scores={dialog=100,timedialog=450}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=550}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fAnd therefore allow to forbid time travel."}]}
playanimation @s[scores={dialog=100,timedialog=550}] animation.wave.shy
execute @s[scores={dialog=100,timedialog=550}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=650}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI really need to explain to you who Raxly really is."}]}
playanimation @s[scores={dialog=100,timedialog=650}] animation.wave.question
execute @s[scores={dialog=100,timedialog=650}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=750}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fRaxly exists in this dimension because people from another dimension gave her a small amount of crystal."}]}
playanimation @s[scores={dialog=100,timedialog=750}] animation.wave.talking
execute @s[scores={dialog=100,timedialog=750}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=890}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIt allowed her to partially modify the code of the universe, and to be in two dimensions at the same time."}]}
playanimation @s[scores={dialog=100,timedialog=890}] animation.wave.question
execute @s[scores={dialog=100,timedialog=890}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=1020}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fUnfortunately you can't understand the whole System of the universe."}]}
playanimation @s[scores={dialog=100,timedialog=1020}] animation.wave.question
execute @s[scores={dialog=100,timedialog=1020}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=1110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fIt's complicated..."}]}
playanimation @s[scores={dialog=100,timedialog=1110}] animation.wave.shy
execute @s[scores={dialog=100,timedialog=1110}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=1180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI hope you at least understood what I mean."}]}
playanimation @s[scores={dialog=100,timedialog=1180}] animation.wave.shy
execute @s[scores={dialog=100,timedialog=1180}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=100,timedialog=1220}] ~ ~ ~ function levelcheck

execute @s[scores={dialog=100,timedialog=1221}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=100,timedialog=1223}] timedialog



//  The wizard - THE POTIONS


execute @s[scores={dialog=101,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, yeah. about the potions."}]}
playanimation @s[scores={dialog=101,timedialog=40}] animation.wave.shy
execute @s[scores={dialog=101,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=101,timedialog=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI give them according to your level."}]}
playanimation @s[scores={dialog=101,timedialog=90}] animation.wave.talking
execute @s[scores={dialog=101,timedialog=90}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=101,timedialog=180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fI don't need money, so, come back to me when you are §bLevel 1§r to get a new potion."}]}
playanimation @s[scores={dialog=101,timedialog=180}] animation.wave.shy
execute @s[scores={dialog=101,timedialog=180}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=101,timedialog=180}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking


scoreboard players reset @s[scores={dialog=101,timedialog=181}] timedialog




//  The wizard - POTION LEVEL 1

execute @s[scores={dialog=102,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=102,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, and I see you got level 1."}]}
playanimation @s[scores={dialog=102,timedialog=40}] animation.wave.question
execute @s[scores={dialog=102,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=102,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fas promised, I offer you my new potion."}]}
playanimation @s[scores={dialog=102,timedialog=110}] animation.wave.question
execute @s[scores={dialog=102,timedialog=110}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7


execute @s[scores={dialog=102,timedialog=170}] ~ ~ ~ effect @a slowness 4 2 true
execute @s[scores={dialog=102,timedialog=170}] ~ ~ ~ summon zedafox:potion 459 68.2 542
playanimation @s[scores={dialog=102,timedialog=170}] animation.wave.shy
execute @s[scores={dialog=102,timedialog=170}] ~ ~ ~ playsound newpotion @a
execute @s[scores={dialog=102,timedialog=170}] ~ ~ ~ stopsound @a sneak
execute @s[scores={dialog=102,timedialog=210}] ~ ~ ~ event entity @e[type=zedafox:potion] skin1

playanimation @s[scores={dialog=102,timedialog=230}] animation.wave.asking
execute @s[scores={dialog=102,timedialog=230}] ~ ~ ~ particle zedafox:firework_purple 459 67 542

execute @s[scores={dialog=102,timedialog=280}] ~ ~ ~ give @a zedafox:potion3 1 0 {"item_lock": {"mode": "lock_in_inventory"}}
execute @s[scores={dialog=102,timedialog=280}] ~ ~ ~ playsound random.pop @a

execute @s[scores={dialog=102,timedialog=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fCome back to me when you reach level 3 for a new offer."}]}
playanimation @s[scores={dialog=102,timedialog=320}] animation.wave.talking
execute @s[scores={dialog=102,timedialog=320}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=102,timedialog=300}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=102,timedialog=320}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=102,timedialog=321}] timedialog



//  The wizard - POTION LEVEL 2

execute @s[scores={dialog=103,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=103,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, and I see you got level 3."}]}
playanimation @s[scores={dialog=103,timedialog=40}] animation.wave.question
execute @s[scores={dialog=103,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=103,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fas promised, I offer you my new potion."}]}
playanimation @s[scores={dialog=103,timedialog=110}] animation.wave.question
execute @s[scores={dialog=103,timedialog=110}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7


execute @s[scores={dialog=103,timedialog=170}] ~ ~ ~ effect @a slowness 4 2 true
execute @s[scores={dialog=103,timedialog=170}] ~ ~ ~ summon zedafox:potion 459 68.2 542
playanimation @s[scores={dialog=103,timedialog=170}] animation.wave.shy
execute @s[scores={dialog=103,timedialog=170}] ~ ~ ~ playsound newpotion @a
execute @s[scores={dialog=103,timedialog=170}] ~ ~ ~ stopsound @a sneak
execute @s[scores={dialog=103,timedialog=210}] ~ ~ ~ event entity @e[type=zedafox:potion] skin2

playanimation @s[scores={dialog=103,timedialog=230}] animation.wave.asking
execute @s[scores={dialog=103,timedialog=230}] ~ ~ ~ particle zedafox:firework_purple 459 67 542

execute @s[scores={dialog=103,timedialog=280}] ~ ~ ~ give @a zedafox:potion2 1 0 {"item_lock": {"mode": "lock_in_inventory"}}
execute @s[scores={dialog=103,timedialog=280}] ~ ~ ~ playsound random.pop @a

execute @s[scores={dialog=103,timedialog=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fCome back to me when you reach level 5 for a new offer."}]}
playanimation @s[scores={dialog=103,timedialog=320}] animation.wave.talking
execute @s[scores={dialog=103,timedialog=320}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=103,timedialog=300}] ~ ~ ~ function levelcheck
execute @s[scores={dialog=103,timedialog=320}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=103,timedialog=321}] timedialog



//  The wizard - POTION LEVEL 3

execute @s[scores={dialog=104,timedialog=2}] ~ ~ ~ tag @e[type=zedafox:help] add is_talking

execute @s[scores={dialog=104,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fOh, and I see you got level 5."}]}
playanimation @s[scores={dialog=104,timedialog=40}] animation.wave.question
execute @s[scores={dialog=104,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=104,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fas promised, I offer you my new potion."}]}
playanimation @s[scores={dialog=104,timedialog=110}] animation.wave.question
execute @s[scores={dialog=104,timedialog=110}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7


execute @s[scores={dialog=104,timedialog=170}] ~ ~ ~ effect @a slowness 4 2 true
execute @s[scores={dialog=104,timedialog=170}] ~ ~ ~ summon zedafox:potion 459 68.2 542
playanimation @s[scores={dialog=104,timedialog=170}] animation.wave.shy
execute @s[scores={dialog=104,timedialog=170}] ~ ~ ~ playsound newpotion @a
execute @s[scores={dialog=104,timedialog=170}] ~ ~ ~ stopsound @a sneak
execute @s[scores={dialog=104,timedialog=210}] ~ ~ ~ event entity @e[type=zedafox:potion] skin3

playanimation @s[scores={dialog=104,timedialog=230}] animation.wave.asking
execute @s[scores={dialog=104,timedialog=230}] ~ ~ ~ particle zedafox:firework_purple 459 67 542

execute @s[scores={dialog=104,timedialog=280}] ~ ~ ~ give @a zedafox:potion1 1 0 {"item_lock": {"mode": "lock_in_inventory"}}
execute @s[scores={dialog=104,timedialog=280}] ~ ~ ~ playsound random.pop @a

execute @s[scores={dialog=104,timedialog=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dThe Wizard§8 ]: §fAnd that's it, I think you have enough potions so far."}]}
playanimation @s[scores={dialog=104,timedialog=320}] animation.wave.talking
execute @s[scores={dialog=104,timedialog=320}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.7

execute @s[scores={dialog=104,timedialog=320}] ~ ~ ~ tag @e[type=zedafox:help] remove is_talking

scoreboard players reset @s[scores={dialog=104,timedialog=321}] timedialog




