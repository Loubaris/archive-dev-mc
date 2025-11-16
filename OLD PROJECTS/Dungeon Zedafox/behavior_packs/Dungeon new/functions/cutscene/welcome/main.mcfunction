scoreboard players add @e[type=zedafox:help] cutscene3 1

//

execute @s[scores={cutscene3=2}] ~ ~ ~ playsound welcome @a
execute @s[scores={cutscene3=2}] ~ ~ ~ function cutscene/welcome/scene1

execute @s[scores={cutscene3=100}] ~ ~ ~ function cutscene/welcome/scene2

execute @s[scores={cutscene3=220}] ~ ~ ~ function cutscene/welcome/scene3
execute @s[scores={cutscene3=370}] ~ ~ ~ function cutscene/welcome/scene4

execute @s[scores={cutscene3=400}] ~ ~ ~ playanimation @e[type=zedafox:blind] animation.wave.blind2
execute @s[scores={cutscene3=400}] ~ ~ ~ playsound blind @a
execute @s[scores={cutscene3=430}] ~ ~ ~ playanimation @e[name=kaley] animation.wave.presentation
execute @s[scores={cutscene3=430}] ~ ~ ~ event entity @e[name=kaley] allowname

execute @s[scores={cutscene3=570}] ~ ~ ~ function cutscene/welcome/scene5

// GRAYSON

execute @s[scores={cutscene3=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fHere is our village!"}]}
execute @s[scores={cutscene3=60}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3

execute @s[scores={cutscene3=120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fEveryone has a happy life here."}]}
execute @s[scores={cutscene3=122}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3

execute @s[scores={cutscene3=250}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fIn this house you can buy some potions from the terrifying Wizard."}]}
execute @s[scores={cutscene3=250}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3

execute @s[scores={cutscene3=330}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fYou are the only person in the village allowed to enter it.\n§7§oClick on the door to enter."}]}
execute @s[scores={cutscene3=330}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3

execute @s[scores={cutscene3=420}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fBehold the §6Kaley §fstore!"}]}
execute @s[scores={cutscene3=420}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3

execute @s[scores={cutscene3=480}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fYou can buy weapons from him."}]}
execute @s[scores={cutscene3=480}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3

execute @s[scores={cutscene3=610}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §9Grayson§8 ]: §fWithout forgetting, our best friend Turnip! He is so adorable."}]}
execute @s[scores={cutscene3=610}] ~ ~ ~ execute @a ~ ~ ~ playsound mob.villager.yes @s ~ ~ ~ 0.3


execute @s[scores={cutscene3=700}] ~ ~ ~ function transition/size5

execute @s[scores={cutscene3=760}] ~ ~ ~ tp @e[name=grayson] 412 110 498
execute @s[scores={cutscene3=770}] ~ ~ ~ scoreboard players set @e[name=Grayson] dialog 79
execute @s[scores={cutscene3=770}] ~ ~ ~ scoreboard players set @e[name=Grayson] timedialog 1
execute @s[scores={cutscene3=770}] ~ ~ ~ function cutscene/welcome/stop




