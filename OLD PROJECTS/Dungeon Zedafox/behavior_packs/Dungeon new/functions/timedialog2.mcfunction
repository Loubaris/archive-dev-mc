scoreboard players add @s timedialog 1

// GRAYSON - GUARDIAN

execute @s[scores={dialog=200,timedialog=2}] ~ ~ ~ stopsound @a underworld
execute @s[scores={dialog=200,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Oh, be careful."}]}
execute @s[scores={dialog=200,timedialog=2}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=200,timedialog=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2He is the guardian of the first crystal."}]}
execute @s[scores={dialog=200,timedialog=70}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=200,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Fight him and get the crystal!"}]}
execute @s[scores={dialog=200,timedialog=160}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=200,timedialog=210}] ~ ~ ~ tag @e[type=zedafox:acid_boss] add is_awake
execute @s[scores={dialog=200,timedialog=210}] ~ ~ ~ event entity @e[type=zedafox:acid_boss] is_up
execute @s[scores={dialog=200,timedialog=210}] ~ ~ ~ event entity @e[type=zedafox:acid_boss] skin1
execute @s[scores={dialog=200,timedialog=210}] ~ ~ ~ execute @a ~ ~ ~ playsound intro @a ~ ~ ~ 1 1.5
execute @s[scores={dialog=200,timedialog=210}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 6
execute @s[scores={dialog=200,timedialog=210}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

scoreboard players reset @s[scores={dialog=200,timedialog=211}] timedialog



// GRAYSON - FIRST BOSS FIGHTED

execute @s[scores={dialog=201,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Good work! You have recovered the first crystal."}]}
execute @s[scores={dialog=201,timedialog=2}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=201,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Now you have to get the others back! It won't be easy."}]}
execute @s[scores={dialog=201,timedialog=80}] ~ ~ ~ playsound talkywalky @a

scoreboard players reset @s[scores={dialog=201,timedialog=81}] timedialog


// ELEVATOR DUNGEON

execute @s[scores={dialog=202,timedialog=80}] ~ ~ ~ function transition/size3

execute @s[scores={dialog=202,timedialog=120}] ~ ~ ~ fill 420 111 500 420 112 496 air
execute @s[scores={dialog=202,timedialog=120}] ~ ~ ~ fill 421 110 496 425 110 500 zedafox:elevator1
execute @s[scores={dialog=202,timedialog=120}] ~ ~ ~ function cutscene/dungeon/start

scoreboard players reset @s[scores={dialog=202,timedialog=125}] timedialog



// GRAYSON - MUSHMAN KING

execute @s[scores={dialog=203,timedialog=2}] ~ ~ ~ stopsound @a mushroom3
execute @s[scores={dialog=203,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Here he is."}]}
execute @s[scores={dialog=203,timedialog=2}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=203,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2He is the leader of the mushmans!"}]}
execute @s[scores={dialog=203,timedialog=60}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=203,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Fight him and get the crystal!"}]}
execute @s[scores={dialog=203,timedialog=140}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=203,timedialog=180}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 11
execute @s[scores={dialog=203,timedialog=180}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

scoreboard players reset @s[scores={dialog=203,timedialog=181}] timedialog



// GRAYSON - NEOWHEEL

execute @s[scores={dialog=204,timedialog=2}] ~ ~ ~ stopsound @a dark
execute @s[scores={dialog=204,timedialog=2}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0
execute @s[scores={dialog=204,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Be careful with this man."}]}
execute @s[scores={dialog=204,timedialog=2}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=204,timedialog=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2He is the leader of the machines, he loves electricity."}]}
execute @s[scores={dialog=204,timedialog=60}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=204,timedialog=140}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Fight him and get the crystal!"}]}
execute @s[scores={dialog=204,timedialog=140}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=204,timedialog=210}] ~ ~ ~ execute @a ~ ~ ~ playsound intro @a ~ ~ ~ 1 1.5
execute @s[scores={dialog=204,timedialog=210}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 7
execute @s[scores={dialog=204,timedialog=210}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1
execute @s[scores={dialog=204,timedialog=210}] ~ ~ ~ event entity @e[type=zedafox:neowheel_off] is_on

scoreboard players reset @s[scores={dialog=204,timedialog=211}] timedialog



// GRAYSON - NEOWHEEL FIGHTED

execute @s[scores={dialog=205,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Good work! You have recovered the 3rd crystal"}]}
execute @s[scores={dialog=205,timedialog=2}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=205,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2It was a breeze for you!"}]}
execute @s[scores={dialog=205,timedialog=80}] ~ ~ ~ playsound talkywalky @a

scoreboard players reset @s[scores={dialog=205,timedialog=81}] timedialog



// GRAYSON - MUSHMANKING FIGHTED

execute @s[scores={dialog=206,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Nice work!"}]}
execute @s[scores={dialog=206,timedialog=2}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=206,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2You have recovered the crystal and freed the poor mushmans!"}]}
execute @s[scores={dialog=206,timedialog=80}] ~ ~ ~ playsound talkywalky @a

scoreboard players reset @s[scores={dialog=206,timedialog=81}] timedialog


// GRAYSON - [ SAID GIVE TO RAXLY ]

execute @s[scores={dialog=207,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2What are you doing?!"}]}
execute @s[scores={dialog=207,timedialog=40}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=207,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2You can't do that, you'll get us all killed!"}]}
execute @s[scores={dialog=207,timedialog=100}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=207,timedialog=180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §2Remember that your mission is to recover all the crystals and hide them safely!"}]}
execute @s[scores={dialog=207,timedialog=180}] ~ ~ ~ playsound talkywalky @a

execute @s[scores={dialog=207,timedialog=240}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss,scores={dialog=86}] dialog 87
execute @s[scores={dialog=207,timedialog=240}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss,scores={dialog=85}] dialog 89
execute @s[scores={dialog=207,timedialog=240}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] timedialog 1


scoreboard players reset @s[scores={dialog=207,timedialog=241}] timedialog





// GOODBYE

execute @s[scores={dialog=208,timedialog=2}] ~ ~ ~ clear @a
execute @s[scores={dialog=208,timedialog=5}] ~ ~ ~ playsound melody @a
execute @s[scores={dialog=208,timedialog=2}] ~ ~ ~ scoreboard players set @a border 2

execute @s[scores={dialog=208,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAfter this story..."}]}
execute @s[scores={dialog=208,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=208,timedialog=40}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.talking

execute @s[scores={dialog=208,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAfter Hadson's death..."}]}
execute @s[scores={dialog=208,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=208,timedialog=80}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.sad

execute @s[scores={dialog=208,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWho would have thought that we would be able to overcome this great threat?"}]}
execute @s[scores={dialog=208,timedialog=160}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=208,timedialog=160}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.question

execute @s[scores={dialog=208,timedialog=250}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fNobody..."}]}
execute @s[scores={dialog=208,timedialog=250}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=208,timedialog=250}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.never

execute @s[scores={dialog=208,timedialog=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBut thanks to you, our village no longer fears anything."}]}
execute @s[scores={dialog=208,timedialog=320}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=208,timedialog=320}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.presentation

execute @s[scores={dialog=208,timedialog=410}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnd that is why you should be thanked so greatly."}]}
execute @s[scores={dialog=208,timedialog=410}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=208,timedialog=410}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.you



execute @s[scores={dialog=208,timedialog=480}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §4Elton§8 ]: §fYeah, you are amazing!"}]}
execute @s[scores={dialog=208,timedialog=480}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5 1.1
execute @s[scores={dialog=208,timedialog=480}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.happy

execute @s[scores={dialog=208,timedialog=520}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fYou will always be remembered for what you did!"}]}
execute @s[scores={dialog=208,timedialog=520}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5 1.5
execute @s[scores={dialog=208,timedialog=520}] ~ ~ ~ playanimation @e[name=Julia] animation.wave.hello

execute @s[scores={dialog=208,timedialog=580}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fYou have helped us so much."}]}
execute @s[scores={dialog=208,timedialog=580}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5 1.1
execute @s[scores={dialog=208,timedialog=580}] ~ ~ ~ playanimation @e[name=Kaley] animation.wave.clap

execute @s[scores={dialog=208,timedialog=640}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fTo be honest, I didn't think you were going to make it."}]}
execute @s[scores={dialog=208,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.idle @s ~ ~ ~ 0.5 0.9
execute @s[scores={dialog=208,timedialog=640}] ~ ~ ~ playanimation @e[name=Bruno] animation.wave.talking

execute @s[scores={dialog=208,timedialog=700}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fBut now that I see that you have."}]}
execute @s[scores={dialog=208,timedialog=700}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.idle @s ~ ~ ~ 0.5 0.9
execute @s[scores={dialog=208,timedialog=700}] ~ ~ ~ playanimation @e[name=Bruno] animation.wave.talking

execute @s[scores={dialog=208,timedialog=780}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fI owe you a lot of respect for that."}]}
execute @s[scores={dialog=208,timedialog=780}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.idle @s ~ ~ ~ 0.5 0.9
execute @s[scores={dialog=208,timedialog=780}] ~ ~ ~ playanimation @e[name=Bruno] animation.wave.me

execute @s[scores={dialog=208,timedialog=850}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §7Radley§8 ]: §fSame."}]}
execute @s[scores={dialog=208,timedialog=850}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.idle @s ~ ~ ~ 0.5 1
execute @s[scores={dialog=208,timedialog=850}] ~ ~ ~ playanimation @e[name=Radley] animation.wave.question

execute @s[scores={dialog=208,timedialog=930}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAny last words before you leave?"}]}
execute @s[scores={dialog=208,timedialog=930}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5 1
execute @s[scores={dialog=208,timedialog=930}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.negotiation

execute @e[scores={dialog=208,timedialog=1000}] ~ ~ ~ scoreboard players set @a forced 16
execute @s[scores={dialog=208,timedialog=1000}] ~ ~ ~ playsound chat @a


scoreboard players reset @s[scores={dialog=208,timedialog=1041}] timedialog



// SAY GOODBYE

execute @s[scores={dialog=209,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fGoodbye."}]}
execute @s[scores={dialog=209,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=209,timedialog=40}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement

execute @s[scores={dialog=209,timedialog=40}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement
execute @s[scores={dialog=209,timedialog=40}] ~ ~ ~ playanimation @e[name=Bruno] animation.wave.hello
execute @s[scores={dialog=209,timedialog=40}] ~ ~ ~ playanimation @e[name=julia] animation.wave.cute_hand
execute @s[scores={dialog=209,timedialog=43}] ~ ~ ~ playanimation @e[name=Kaley] animation.wave.hello
execute @s[scores={dialog=209,timedialog=47}] ~ ~ ~ playanimation @e[name=§rKernel] animation.wave.overhere
execute @s[scores={dialog=209,timedialog=50}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.clap
execute @s[scores={dialog=209,timedialog=55}] ~ ~ ~ playanimation @e[name=Radley] animation.wave.greeting
execute @s[scores={dialog=209,timedialog=85}] ~ ~ ~ function transition/size6
execute @s[scores={dialog=209,timedialog=85}] ~ ~ ~ scoreboard players reset @a border

execute @s[scores={dialog=209,timedialog=170}] ~ ~ ~ function cutscene/wizard/start

scoreboard players reset @s[scores={dialog=209,timedialog=171}] timedialog


// I WON'T FORGET YOU

execute @s[scores={dialog=210,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fAnd so do we."}]}
execute @s[scores={dialog=210,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=210,timedialog=40}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.me

execute @s[scores={dialog=210,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fGoodbye."}]}
execute @s[scores={dialog=210,timedialog=80}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=210,timedialog=80}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement
execute @s[scores={dialog=210,timedialog=80}] ~ ~ ~ playanimation @e[name=Bruno] animation.wave.hello
execute @s[scores={dialog=210,timedialog=80}] ~ ~ ~ playanimation @e[name=julia] animation.wave.cute_hand
execute @s[scores={dialog=210,timedialog=83}] ~ ~ ~ playanimation @e[name=Kaley] animation.wave.hello
execute @s[scores={dialog=210,timedialog=87}] ~ ~ ~ playanimation @e[name=§rKernel] animation.wave.overhere
execute @s[scores={dialog=210,timedialog=90}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.clap
execute @s[scores={dialog=210,timedialog=95}] ~ ~ ~ playanimation @e[name=Radley] animation.wave.greeting
execute @s[scores={dialog=210,timedialog=125}] ~ ~ ~ function transition/size6
execute @s[scores={dialog=210,timedialog=125}] ~ ~ ~ scoreboard players reset @a border

execute @s[scores={dialog=210,timedialog=210}] ~ ~ ~ function cutscene/wizard/start

scoreboard players reset @s[scores={dialog=210,timedialog=211}] timedialog


// SAY NOTHING

execute @s[scores={dialog=211,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fOh, don't worry, you don't need to say anything special."}]}
execute @s[scores={dialog=211,timedialog=40}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=211,timedialog=40}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.no

execute @s[scores={dialog=211,timedialog=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fGoodbye."}]}
execute @s[scores={dialog=211,timedialog=110}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=211,timedialog=110}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement
execute @s[scores={dialog=211,timedialog=110}] ~ ~ ~ playanimation @e[name=Bruno] animation.wave.hello
execute @s[scores={dialog=211,timedialog=110}] ~ ~ ~ playanimation @e[name=julia] animation.wave.cute_hand
execute @s[scores={dialog=211,timedialog=113}] ~ ~ ~ playanimation @e[name=Kaley] animation.wave.hello
execute @s[scores={dialog=211,timedialog=117}] ~ ~ ~ playanimation @e[name=§rKernel] animation.wave.overhere
execute @s[scores={dialog=211,timedialog=120}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.clap
execute @s[scores={dialog=211,timedialog=125}] ~ ~ ~ playanimation @e[name=Radley] animation.wave.greeting
execute @s[scores={dialog=211,timedialog=155}] ~ ~ ~ function transition/size6
execute @s[scores={dialog=211,timedialog=125}] ~ ~ ~ scoreboard players reset @a border

execute @s[scores={dialog=211,timedialog=240}] ~ ~ ~ function cutscene/wizard/start

scoreboard players reset @s[scores={dialog=211,timedialog=241}] timedialog



// OBJECTIVE - MEET THE WIZARD

execute @s[scores={dialog=212,timedialog=2}] ~ ~ ~ tp @e[name=grayson] 387 108 487
execute @s[scores={dialog=212,timedialog=60}] ~ ~ ~ function objective/newmission

scoreboard players reset @s[scores={dialog=212,timedialog=61}] timedialog




// MISSION ACHIEVED

execute @s[scores={dialog=213,timedialog=5}] ~ ~ ~ playsound final_joy @a

execute @s[scores={dialog=213,timedialog=2}] ~ ~ ~ summon zedafox:fireworks 372 108 494
execute @s[scores={dialog=213,timedialog=20}] ~ ~ ~ summon zedafox:fireworks 379 109 501
execute @s[scores={dialog=213,timedialog=40}] ~ ~ ~ summon zedafox:fireworks 375 108 485
execute @s[scores={dialog=213,timedialog=60}] ~ ~ ~ summon zedafox:fireworks 388 108 486
execute @s[scores={dialog=213,timedialog=80}] ~ ~ ~ summon zedafox:fireworks 372 111 511
execute @s[scores={dialog=213,timedialog=100}] ~ ~ ~ summon zedafox:fireworks 372 108 494
execute @s[scores={dialog=213,timedialog=120}] ~ ~ ~ summon zedafox:fireworks 379 109 501
execute @s[scores={dialog=213,timedialog=140}] ~ ~ ~ summon zedafox:fireworks 375 108 485
execute @s[scores={dialog=213,timedialog=160}] ~ ~ ~ summon zedafox:fireworks 388 108 486
execute @s[scores={dialog=213,timedialog=180}] ~ ~ ~ summon zedafox:fireworks 372 111 511
execute @s[scores={dialog=213,timedialog=200}] ~ ~ ~ summon zedafox:fireworks 401 110 507
execute @s[scores={dialog=213,timedialog=220}] ~ ~ ~ summon zedafox:fireworks 387 108 494
execute @s[scores={dialog=213,timedialog=240}] ~ ~ ~ summon zedafox:fireworks 372 108 494
execute @s[scores={dialog=213,timedialog=260}] ~ ~ ~ summon zedafox:fireworks 379 109 501
execute @s[scores={dialog=213,timedialog=280}] ~ ~ ~ summon zedafox:fireworks 375 108 485
execute @s[scores={dialog=213,timedialog=300}] ~ ~ ~ summon zedafox:fireworks 388 108 486
execute @s[scores={dialog=213,timedialog=320}] ~ ~ ~ summon zedafox:fireworks 372 111 511
execute @s[scores={dialog=213,timedialog=340}] ~ ~ ~ summon zedafox:fireworks 372 108 494
execute @s[scores={dialog=213,timedialog=360}] ~ ~ ~ summon zedafox:fireworks 379 109 501
execute @s[scores={dialog=213,timedialog=380}] ~ ~ ~ summon zedafox:fireworks 375 108 485



execute @s[scores={dialog=213,timedialog=20}] ~ ~ ~ tag @e[name=Kaley] add is_talking

execute @s[scores={dialog=213,timedialog=20}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fHere he is!"}]}
execute @s[scores={dialog=213,timedialog=20}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.haggle @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=20}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.you

execute @s[scores={dialog=213,timedialog=40}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.overhere

execute @s[scores={dialog=213,timedialog=50}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fHe did it!!"}]}
execute @s[scores={dialog=213,timedialog=50}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=50}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.clap

execute @s[scores={dialog=213,timedialog=60}] ~ ~ ~ playanimation @e[name=Julia] animation.wave.clap
execute @s[scores={dialog=213,timedialog=70}] ~ ~ ~ playanimation @e[name=Radley] animation.wave.greeting
execute @s[scores={dialog=213,timedialog=80}] ~ ~ ~ playanimation @e[name=Kaley] animation.wave.overhere
execute @s[scores={dialog=213,timedialog=80}] ~ ~ ~ playanimation @e[name=§rKernel] animation.wave.yay

execute @s[scores={dialog=213,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fHe deafeated Raxly!"}]}
execute @s[scores={dialog=213,timedialog=100}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=100}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement

execute @s[scores={dialog=213,timedialog=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWho would have thought it?"}]}
execute @s[scores={dialog=213,timedialog=150}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=150}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.question

execute @s[scores={dialog=213,timedialog=220}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fIt's amazing, you just saved us and the whole universe!"}]}
execute @s[scores={dialog=213,timedialog=220}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=220}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.whole2

execute @s[scores={dialog=213,timedialog=290}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fUnbelievable!"}]}
execute @s[scores={dialog=213,timedialog=290}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5 1.5
execute @s[scores={dialog=213,timedialog=290}] ~ ~ ~ playanimation @e[name=Julia] animation.wave.overhere

execute @s[scores={dialog=213,timedialog=260}] ~ ~ ~ playanimation @e[name=Kaley] animation.wave.clap

execute @s[scores={dialog=213,timedialog=310}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fSO EXCITING"}]}
execute @s[scores={dialog=213,timedialog=310}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5 1.5
execute @s[scores={dialog=213,timedialog=310}] ~ ~ ~ playanimation @e[name=Julia] animation.wave.overhere

execute @s[scores={dialog=213,timedialog=340}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §dJulia§8 ]: §fYou should tell us how you did it!"}]}
execute @s[scores={dialog=213,timedialog=340}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5 1.5
execute @s[scores={dialog=213,timedialog=340}] ~ ~ ~ playanimation @e[name=Julia] animation.wave.long_talking


execute @s[scores={dialog=213,timedialog=430}] ~ ~ ~ stopsound @a final_joy
execute @s[scores={dialog=213,timedialog=430}] ~ ~ ~ playsound final_joy2 @a

execute @s[scores={dialog=213,timedialog=430}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §4Elton§8 ]: §fHum, Grayson?"}]}
execute @s[scores={dialog=213,timedialog=430}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=430}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.thinking

execute @s[scores={dialog=213,timedialog=490}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §4Elton§8 ]: §fNow that we have the crystals?"}]}
execute @s[scores={dialog=213,timedialog=490}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=490}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.question

execute @s[scores={dialog=213,timedialog=560}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §4Elton§8 ]: §fShould we destroy them?"}]}
execute @s[scores={dialog=213,timedialog=560}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=560}] ~ ~ ~ playanimation @e[name=Elton] animation.wave.angry

execute @s[scores={dialog=213,timedialog=640}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWait, no..."}]}
execute @s[scores={dialog=213,timedialog=640}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=640}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.anyway

execute @s[scores={dialog=213,timedialog=680}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fIt could be dangerous."}]}
execute @s[scores={dialog=213,timedialog=680}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=680}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.surprised

execute @s[scores={dialog=213,timedialog=750}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fThe best thing to do is to hide them in an untraceable place."}]}
execute @s[scores={dialog=213,timedialog=750}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=750}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement

execute @s[scores={dialog=213,timedialog=830}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §e"},{"selector":"@a[tag=owner]"},{"text":"§f? Can you take care of hiding these crystals?"}]}
execute @s[scores={dialog=213,timedialog=830}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.5
execute @s[scores={dialog=213,timedialog=830}] ~ ~ ~ playanimation @e[name=Grayson] animation.wave.requirement

execute @s[scores={dialog=213,timedialog=890}] ~ ~ ~ stopsound @a final_joy2
execute @s[scores={dialog=213,timedialog=890}] ~ ~ ~ function transition/size8
execute @s[scores={dialog=213,timedialog=960}] ~ ~ ~ effect @e[family=character,x=379,y=108,z=494,r=30] invisibility 999999 255 true
execute @s[scores={dialog=213,timedialog=960}] ~ ~ ~ time set midnight
execute @s[scores={dialog=213,timedialog=960}] ~ ~ ~ tp @a 351 110 494 -90 0

execute @s[scores={dialog=213,timedialog=1100}] ~ ~ ~ function objective/hidethecrystals



scoreboard players reset @s[scores={dialog=213,timedialog=1661}] timedialog

