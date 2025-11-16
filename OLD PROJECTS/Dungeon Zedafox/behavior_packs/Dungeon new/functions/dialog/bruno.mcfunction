// DIALOG

scoreboard players add @s timedialog 1


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



// BRUNO - LATE

execute @s[scores={dialog=97,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §3Bruno§8 ]: §fI really need to stop leaving my restaurant open at midnight."}]}
playanimation @s[scores={dialog=97,timedialog=2}] animation.wave.boring2
execute @s[scores={dialog=97,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1 0.9

scoreboard players reset @s[scores={dialog=97,timedialog=3}] timedialog