// DIALOG

scoreboard players add @s timedialog 1



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

execute @s[scores={dialog=85,timedialog=400}] ~ ~ ~ scoreboard players set @a forced 15
execute @s[scores={dialog=85,timedialog=400}] ~ ~ ~ dialogue open @e[type=npc,tag=chat18] @a
execute @s[scores={dialog=85,timedialog=400}] ~ ~ ~ playsound chat @a


scoreboard players reset @s[scores={dialog=85,timedialog=402}] timedialog






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

execute @s[scores={dialog=86,timedialog=610}] ~ ~ ~ scoreboard players set @a forced 15
execute @s[scores={dialog=86,timedialog=610}] ~ ~ ~ dialogue open @e[type=npc,tag=chat18] @a
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