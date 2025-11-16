execute @s[name=kaley,tag=!chat,tag=!is_talking,tag=!is_shopping] ~ ~ ~ function shop/open


execute @s[tag=!chat,name=!Kaley,x=449,y=65,z=538,rm=1] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§7This person has nothing to say."}]}
playanimation @s[tag=!chat,name=!Kaley] animation.wave.turn_and_see
execute @s[tag=chat] ~ ~ ~ function dialog
execute @s[tag=permchat] ~ ~ ~ function dialog

execute @s[tag=!chat,x=449,y=65,z=538,r=1] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=3..8}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ยง7There seems to be a ghost here, you can't interact with him."}]}

// EASTER EGG

execute @s[tag=!chat,x=449,y=65,z=538,r=1] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=9..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ยง7There seems to be a ghost here, you hear a voice saying not to trust the wizard."}]}
execute @s[tag=!chat,x=449,y=65,z=538,r=1] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=9..}] ~ ~ ~ stopsound @a sneak