playanimation @s animation.wave.button
playsound click_button @a ~ ~ ~

//

execute @s[tag=!ended] ~ ~ ~ execute @e[type=zedafox:help,scores={cutscene8=0}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] cutscene8 1
execute @s[tag=!ended] ~ ~ ~ gamemode 2 @a

// MAP OVER

execute @s[tag=ended,scores={time=0}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§c§lSORRY! §r§cYou must re-download the map if you want to play again."}]}
execute @s[tag=ended,scores={time=1}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cThe map is no longer playable, download it again."}]}
execute @s[tag=ended,scores={time=2}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cI know you want to see the next but..."}]}
execute @s[tag=ended,scores={time=3}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cNobody knows what will happen next..."}]}
execute @s[tag=ended,scores={time=4}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cThe wizard has all the crystals..."}]}
execute @s[tag=ended,scores={time=5}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cWhat will he do with these?"}]}
execute @s[tag=ended,scores={time=6}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cI don't know..."}]}
execute @s[tag=ended,scores={time=7}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cI'm just a talking button, I can't know."}]}
execute @s[tag=ended,scores={time=8}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cWhy do you insist? I said I don't know."}]}
execute @s[tag=ended,scores={time=9}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cFine! you really want to see what happens next?"}]}
execute @s[tag=ended,scores={time=10}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cI agree to show you ONE thing, but no more!"}]}
execute @s[tag=ended,scores={time=11}] ~ ~ ~ tellraw @p {"rawtext":[{"text":"§cHere is it..."}]}


execute @s[tag=ended,scores={time=11}] ~ ~ ~ function transition/size4
execute @s[tag=ended,scores={time=11}] ~ ~ ~ function cutscene/afterend/start

scoreboard players add @s[tag=ended] time 1
