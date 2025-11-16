// DIALOG

scoreboard players add @s timedialog 1


// TheblueMan

execute @s[scores={dialog=31,timedialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §1TheblueMan§8 ]: §fDo you know the exit?"}]}
playanimation @s[scores={dialog=31,timedialog=2}] animation.wave.question
execute @s[scores={dialog=31,timedialog=2}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1

execute @s[scores={dialog=31,timedialog=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §1TheblueMan§8 ]: §fI got lost while travelling to this dimension."}]}
playanimation @s[scores={dialog=31,timedialog=40}] animation.wave.turn_and_see
execute @s[scores={dialog=31,timedialog=40}] ~ ~ ~ playsound mob.villager.haggle @a ~ ~ ~ 1

scoreboard players reset @s[scores={dialog=31,timedialog=40..}] timedialog