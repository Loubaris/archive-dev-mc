// DIALOG

scoreboard players add @s timedialog 1



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




//  The wizard - I KNOW WHAT YOU DID [NOT-SCREWUP]

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