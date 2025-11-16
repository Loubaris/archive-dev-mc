// DIALOG

scoreboard players add @s timedialog 1


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