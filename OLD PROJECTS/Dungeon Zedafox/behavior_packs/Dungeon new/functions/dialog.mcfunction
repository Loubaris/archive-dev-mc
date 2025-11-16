tag @s remove chat

// DIALOG

execute @s[scores={dialog=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §eVillager§8 ]: §fThe weather is nice today."}]}
execute @s[scores={dialog=1}] ~ ~ ~ playanimation @s animation.wave.question
execute @s[scores={dialog=1}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.1

execute @s[scores={dialog=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fWelcome to my shop!"}]}
execute @s[scores={dialog=2}] ~ ~ ~ playanimation @s animation.wave.presentation
execute @s[scores={dialog=2}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.2

execute @s[scores={dialog=3}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §eVillager§8 ]: §fHello, I often come here when I'm hungry."}]}
execute @s[scores={dialog=3}] ~ ~ ~ playanimation @s animation.wave.long_talking
execute @s[scores={dialog=3}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.1
execute @s[scores={dialog=3}] ~ ~ ~ scoreboard players set @s timedialog 1

execute @s[scores={dialog=4}] ~ ~ ~ scoreboard players set @s timedialog 1

execute @s[scores={dialog=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §6Kaley§8 ]: §fYou can test your weapons on my dummy."}]}
execute @s[scores={dialog=5}] ~ ~ ~ playanimation @s animation.wave.talking
execute @s[scores={dialog=5}] ~ ~ ~ playsound mob.villager.yes @a ~ ~ ~ 1 1.2

execute @s[scores={dialog=9}] ~ ~ ~ scoreboard players set @s timedialog 1




// REPONSE DE LA PERSONNE

execute @s[scores={dialog=6..100}] ~ ~ ~ scoreboard players set @s timedialog 1


playsound chat @a ~ ~ ~ 1 1.5