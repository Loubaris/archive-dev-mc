// DIALOG

scoreboard players add @s timedialog 1



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