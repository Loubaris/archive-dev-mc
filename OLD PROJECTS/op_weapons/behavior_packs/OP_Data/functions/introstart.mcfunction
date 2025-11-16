scoreboard players set @a[r=10] timejoin 250
tickingarea add circle 317 168 -75 2 spaceview
tickingarea add circle 194 12 961 2 tutorialroom
tickingarea add circle 398 -54 4 4 dojo
setblock -1 5 0 air 0 destroy
tp @a 315 168 -77 facing 350 181 -53
tag @p add summonintro
gamemode adventure @a
clear @a
summon ninja:masterportal "§aJoin the Dojo" -2.50 4 0.61
execute @e[type=ninja:masterportal] ~ ~ ~ tp @s ~ ~ ~ facing -13 5.34 0.58
execute @e[type=ninja:masterportal] ~ ~ ~ tp @s ~ ~ ~ facing -13 5.34 0.58
execute @e[type=ninja:masterportal] ~ ~ ~ tp @s ~ ~ ~ facing -13 5.34 0.58
tag @e[type=ninja:masterportal,x=-2.50,y=4,z=0.61,r=3] add tpplayer
kill @e[type=item]
