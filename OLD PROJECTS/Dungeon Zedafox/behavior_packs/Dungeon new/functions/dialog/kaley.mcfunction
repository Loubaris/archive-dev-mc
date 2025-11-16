// DIALOG

scoreboard players add @s timedialog 1


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
execute @s[scores={dialog=13,timedialog=5}] ~ ~ ~ scoreboard players set @e[name=Grayson] timedialog 0

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

execute @s[scores={dialog=13,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI'm ready to tell §dKernel§f that I love her!"}]}
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
execute @s[scores={dialog=20,timedialog=5}] ~ ~ ~ scoreboard players set @e[name=Grayson] timedialog 0

execute @s[scores={dialog=20,timedialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fH-hey..."}]}
playanimation @s[scores={dialog=20,timedialog=5}] animation.wave.shy
execute @s[scores={dialog=20,timedialog=5}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI know you don't care but..."}]}
playanimation @s[scores={dialog=20,timedialog=40}] animation.wave.talking
execute @s[scores={dialog=20,timedialog=40}] ~ ~ ~ playsound mob.villager.idle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI think I'm ready to face my fear."}]}
playanimation @s[scores={dialog=20,timedialog=100}] animation.wave.negotiation
execute @s[scores={dialog=20,timedialog=100}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=20,timedialog=160}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI'm ready to tell §dKernel§f that I love her!"}]}
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


// KALEY - OFFER HER A DATE

execute @s[scores={dialog=11,timedialog=2}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=11,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fYou're right!"}]}
playanimation @s[scores={dialog=11,timedialog=40}] animation.wave.you
execute @s[scores={dialog=11,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1.1

execute @s[scores={dialog=11,timedialog=80}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fI must face my fear! And show her how much I love her."}]}
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



// KALEY THANKS

execute @s[scores={dialog=92,timedialog=20}] ~ ~ ~ tag @s add is_talking

execute @s[scores={dialog=92,timedialog=2}] ~ ~ ~ playsound joy @a

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