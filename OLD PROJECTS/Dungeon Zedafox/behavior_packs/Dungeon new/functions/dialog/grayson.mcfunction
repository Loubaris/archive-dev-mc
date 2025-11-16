// DIALOG

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

execute @e[scores={dialog=48,timedialog=570}] ~ ~ ~ scoreboard players set @a forced 18
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