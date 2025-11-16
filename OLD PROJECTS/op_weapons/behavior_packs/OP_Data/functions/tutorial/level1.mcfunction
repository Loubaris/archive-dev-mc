scoreboard players add @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok] timetalk 1

execute @e[type=ninja:masterbalancing,tag=firsttalk] ~ ~ ~ kill @e[type=ninja:masterbalancing,rm=0.001]
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=!firstmastertalkok] ~ ~ ~ execute @a[r=6,tag=!firsttalkok] ~ ~ ~ scoreboard players set @e[type=ninja:masterbalancing,tag=firsttalk] timetalk 0
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=!firstmastertalkok] ~ ~ ~ execute @a[r=6,tag=!firsttalkok] ~ ~ ~ tag @a add firsttalkok
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=!firstmastertalkok] ~ ~ ~ execute @a[r=6,tag=firsttalkok] ~ ~ ~ tag @e[type=ninja:masterbalancing,tag=firsttalk,tag=!firstmastertalkok] add firstmastertalkok
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=5}] ~ ~ ~ tag @a remove firsttask
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Hello! I am §lMaster Chi§r§f. I will be teaching you how to use the Overpowered Weapons."}]}
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f There are many different types of Overpowered Weapons, and some are more difficult to craft than others."}]}
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=100}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=100}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=100}] ~ ~ ~ playsound mob.ghast.fireball @a[r=15]
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=100}] ~ ~ ~ effect @s invisibility 9999 255 true
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=100}] ~ ~ ~ summon ninja:mastertransition 396.5 153 -54
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=102}] ~ ~ ~ playanimation @e[type=ninja:mastertransition] animation.masterintro.wave trr 1.1
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=102}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ tp @s ~ ~ ~ facing 392 153 -54

execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Here is my guide book of all the different types of Overpowered Weapons. It shows you how to craft the weapons."}]}

execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f If you ever lose this book, you can find it in the Dojo Chest."}]}

execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=319}] ~ ~ ~ clone 421 155 -54 421 155 -54 421 199 -54
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=319}] ~ ~ ~ tag @p add chestclone
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=318}] ~ ~ ~ kill @e[type=item]
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=319}] ~ ~ ~ setblock 421 155 -54 air 0 destroy
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=320}] ~ ~ ~ kill @e[name="§r§cDojo Chest"]
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=320}] ~ ~ ~ tp @e[type=item] @p
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Now, follow me to the Training Course to show you how these weapons work."}]}



execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=557}] ~ ~ ~ summon ninja:masterportal "§aEnter Training Arena" 400 153 -54
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=557}] ~ ~ ~ execute @e[type=ninja:masterportal] ~ ~ ~ tp @s ~ ~-0.1 ~ facing 422 155 -54


execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ effect @e[type=ninja:mastertransition] invisibility 9999 255 true
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~0.2
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~-0.2
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~ ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~ ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ playsound mob.ghast.fireball @a[r=20]
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=585}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ tp @s ~ ~-100 ~

execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=587}] ~ ~ ~ execute @e[type=ninja:mastertransition] ~ ~ ~ kill @s
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=590}] ~ ~ ~ tag @e[type=ninja:masterportal,r=25] add portallevel1
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=592}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=ninja:masterbalancing,tag=firsttalk,tag=firstmastertalkok,scores={timetalk=594}] ~ ~ ~ kill @s

execute @e[type=ninja:masteridle,x=188,y=12,z=964,r=3] ~ ~ ~ execute @p[r=6] ~ ~ ~ tag @e[type=armor_stand,tag=talker] add level2
execute @e[type=ninja:masteridle,x=188,y=12,z=964,r=3] ~ ~ ~ execute @p[r=6] ~ ~ ~ tag @e[type=armor_stand,tag=level2] remove talker


execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ summon ninja:masteridle 189 11 963
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ execute @e[type=ninja:masteridle,tag=masterbalancingone] ~ ~ ~ kill @e[type=ninja:masteridle,tag=!masterbalancingone]
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ tag @e[type=ninja:masteridle,x=189,y=11,z=963,r=2] add masterbalancingone
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ execute @e[type=ninja:masteridle,x=189,y=11,z=963,r=3] ~ ~ ~ tp @s ~ ~ ~ facing 193 12 960
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ playsound mob.shulker.teleport @a[tag=firsttalkok,r=2] 
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ effect @a[r=2,tag=firsttalkok] blindness 3 255 true
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ gamemode survival @a[r=2,tag=firsttalkok]
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ tag @a[r=2,tag=firsttalkok] remove firsttask
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ tag @a[r=2,tag=firsttalkok] add secondtask
execute @e[type=ninja:masterportal,tag=portallevel1] ~ ~ ~ execute @p[r=2] ~ ~ ~ tp @a[r=2,tag=firsttalkok] 193 12 960 facing 188 14 964