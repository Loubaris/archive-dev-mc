scoreboard players add @e[type=ninja:masteridle,tag=talk1,c=1] timetalk 1

execute @e[type=ninja:masteridle] ~ ~ ~ kill @e[type=ninja:masteridle,rm=0.001]
execute @e[type=ninja:masteridle,tag=!talk1] ~ ~ ~ execute @a[r=9,tag=!talk1ok] ~ ~ ~ scoreboard players set @e[type=ninja:masteridle] timetalk 0
execute @e[type=ninja:masteridle,tag=!talk1] ~ ~ ~ execute @a[r=9,tag=!talk1ok] ~ ~ ~ tag @a add talk1ok
execute @e[type=ninja:masteridle,tag=!talk1] ~ ~ ~ execute @a[r=9,tag=talk1ok] ~ ~ ~ tag @e[type=ninja:masteridle,tag=!talk1] add talk1



execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=10}] ~ ~ ~ replaceitem entity @a[r=50] slot.armor.head 1 glass


execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=10}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f The Overpowered Weapons have many abilities, some more powerful than others. I want you to craft the TNT Sword and try it!"}]}
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=40}] ~ ~ ~ give @a stick 1
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=45}] ~ ~ ~ give @a diamond 1
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=50}] ~ ~ ~ give @a tnt 6
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=55}] ~ ~ ~ give @a nether_star 1
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Then, use the §e§lUse Item§r§f key to activate the ability!"}]}
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=102}] ~ ~ ~ tag @a remove secondtask
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=102}] ~ ~ ~ tag @s remove talk1
execute @a[scores={swordused=3},tag=!tnttuto] ~ ~ ~ tag @e[type=ninja:masteridle] add talk1
execute @a[scores={swordused=3},tag=!tnttuto] ~ ~ ~ clear @a ninja:explosion_sword
execute @a[scores={swordused=3},tag=!tnttuto] ~ ~ ~ scoreboard players set @e[type=ninja:masteridle,tag=talk1] timetalk 110
execute @a[scores={swordused=3},tag=!tnttuto] ~ ~ ~ tag @a add tnttuto

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Nether Star"] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Nether Star",c=1] ~ ~ ~ clear @p nether_star
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Nether Star",c=1] ~ ~ ~ give @p nether_star 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Nether Star",c=1] ~ ~ ~ kill @s

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Stick"] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Stick",c=1] ~ ~ ~ clear @p stick
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Stick",c=1] ~ ~ ~ give @p stick 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Stick",c=1] ~ ~ ~ kill @s

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Diamond"] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Diamond",c=1] ~ ~ ~ clear @p diamond
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Diamond",c=1] ~ ~ ~ give @p diamond 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="Diamond",c=1] ~ ~ ~ kill @s


execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="TNT"] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="TNT",c=1] ~ ~ ~ clear @p tnt
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="TNT",c=1] ~ ~ ~ give @p tnt 6
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ execute @e[type=item,name="TNT",c=1] ~ ~ ~ kill @s

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~1 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~1 ~ ~ tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~1 ~ ~ tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~1 ~ ~ tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-1 ~ ~ tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-1 ~ ~ tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-1 ~ ~ tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-1 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~2 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~2 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~2 ~ ~ tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~2 ~ ~ tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~2 ~ ~ tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-2 ~ ~ tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-2 ~ ~ tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-2 ~ ~ tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-2 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-2 tnt 0 setblock ^ ^1 ^1 air 0 destroy


execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~1 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~1 ~ ~ tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~1 ~ ~ tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~1 ~ ~ tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-1 ~ ~ tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-1 ~ ~ tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~-1 ~ ~ tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ~ ~ ~-1 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^1 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^2 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^2 tnt 0 setblock ^ ^1 ^2 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^3 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^3 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^1 ^3 tnt 0 setblock ^ ^1 ^3 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^1 tnt 0 setblock ^ ^ ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^2 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^2 tnt 0 setblock ^ ^ ^2 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^3 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^3 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^ ^3 tnt 0 setblock ^ ^ ^3 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^1 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^1 tnt 0 setblock ^ ^2 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^2 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^2 tnt 0 setblock ^ ^2 ^2 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^3 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^3 tnt 0 title @p actionbar §cUse that to craft the TNT Sword
execute @a[x=193,y=12,z=959,r=50,tag=!tnttuto] ~ ~ ~ detect ^ ^2 ^3 tnt 0 setblock ^ ^2 ^3 air 0 destroy


execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=115}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Nice job! Now try crafting the TNT Stars."}]}
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=115}] ~ ~ ~ effect @a blindness 5 255 true
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=120}] ~ ~ ~ tp @a 194 13 960
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=122}] ~ ~ ~ effect @a clear
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=123}] ~ ~ ~ playsound mob.shulker.teleport @a
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=140}] ~ ~ ~ give @a ninja:n_star
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=140}] ~ ~ ~ give @a tnt 4

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="TNT"] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Stars 
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="TNT",c=1] ~ ~ ~ clear @p tnt
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="TNT",c=1] ~ ~ ~ give @p tnt 4
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="TNT",c=1] ~ ~ ~ kill @s

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="Ninja Star"] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="Ninja Star",c=1] ~ ~ ~ clear @p ninja:n_star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="Ninja Star",c=1] ~ ~ ~ give @p ninja:n_star 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=item,name="Ninja Star",c=1] ~ ~ ~ kill @s

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=ninja:n_star,r=10] ~ ~ ~ give @p ninja:n_star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=ninja:n_star,r=10] ~ ~ ~ title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ execute @e[type=ninja:n_star,r=10] ~ ~ ~ kill @s

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^1 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^1 tnt 0 setblock ^ ^1 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^2 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^2 tnt 0 setblock ^ ^1 ^2 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^3 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^3 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^1 ^3 tnt 0 setblock ^ ^1 ^3 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^1 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^1 tnt 0 setblock ^ ^ ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^2 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^2 tnt 0 setblock ^ ^ ^2 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^3 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^3 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^ ^3 tnt 0 setblock ^ ^ ^3 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^1 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^1 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^1 tnt 0 setblock ^ ^2 ^1 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^2 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^2 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^2 tnt 0 setblock ^ ^2 ^2 air 0 destroy

execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^3 tnt 0 give @p tnt 1
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^3 tnt 0 title @p actionbar §cUse that to craft the TNT Star
execute @a[x=193,y=12,z=959,r=50,tag=tnttuto,tag=!shurituto] ~ ~ ~ detect ^ ^2 ^3 tnt 0 setblock ^ ^2 ^3 air 0 destroy

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 945

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 945

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 217 8 977

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=200}] ~ ~ ~ summon zombie §cEnemy 171 8 977

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=205}] ~ ~ ~ tag @s remove talk1
execute @a[scores={swordused=18},tag=!shurituto] ~ ~ ~ tag @e[type=ninja:masteridle] add talk1
execute @a[scores={swordused=18},tag=!shurituto] ~ ~ ~ clear @a ninja:explosion_n_star
execute @a[scores={swordused=18},tag=!shurituto] ~ ~ ~ kill @e[type=zombie]
execute @a[scores={swordused=18},tag=!shurituto] ~ ~ ~ scoreboard players set @e[type=ninja:masteridle,tag=talk1] timetalk 250
execute @a[scores={swordused=18},tag=!shurituto] ~ ~ ~ tag @a add shurituto





execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Now that you get the basics, I want you to try combining the different weapons. Here are a few you can try. "}]}
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ effect @a blindness 5 255 true
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=260}] ~ ~ ~ tp @a 194 13 960
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=260}] ~ ~ ~ effect @a clear
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:explosion_sword
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:swift_sword
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:fire_sword
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:n_star 5
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:explosion_n_star 32
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:explosion_n_startwo 16
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ give @a ninja:explosion_n_starthree 1
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ playsound 4ks.music.tutorial @a
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=256}] ~ ~ ~ summon ninja:masterdance ~ ~ ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=255}] ~ ~ ~ effect @s invisibility 9999 255 true

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 945

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 945
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 945

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 217 8 977


execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 977
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon zombie §cEnemy 171 8 977

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 227 17 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 227 17 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 227 17 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 227 17 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 227 17 961

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 194 16 986

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 159 16 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 159 16 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 159 16 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 159 16 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 159 16 961
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 159 16 961

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 193 16 934
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 193 16 934
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 193 16 934
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 193 16 934
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon vindicator §cEnemy 193 16 934

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon ender_crystal 194 40 987
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon ender_crystal 194 40 934
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon ender_crystal 230 35 960
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ summon ender_crystal 157 35 960
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=280}] ~ ~ ~ effect @e[type=vindicator] resistance 10 4 true

execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=282}] ~ ~ ~ tag @s remove talk1
execute @a[scores={swordused=60},tag=!practice] ~ ~ ~ tag @e[type=ninja:masteridle] add talk1
execute @a[scores={swordused=60},tag=!practice] ~ ~ ~ clear @a ninja:explosion_n_star
execute @a[scores={swordused=60},tag=!practice] ~ ~ ~ scoreboard players set @e[type=ninja:masteridle,tag=talk1] timetalk 300
execute @a[scores={swordused=60},tag=!practice] ~ ~ ~ tag @a add practice
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§cMaster Chi§7]§f Go forth, and discover the power of these weapons!"}]}
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ title @a title §cNice job!
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ tag @a add tutofinished
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ tag @e[type=ninja:masterportal,tag=portallevel1] add portallevel2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ tag @e[type=ninja:masterportal,tag=portallevel1] remove portallevel1
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ gamerule dotiledrops true
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ gamerule domobloot true
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ stopsound @a
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ effect @a clear
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:explosion_sword
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:swift_sword
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:fire_sword
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:n_star
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:explosion_n_star
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:explosion_n_startwo
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ clear @a ninja:explosion_n_starthree
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ execute @e[type=zombie] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ execute @e[type=vindicator] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ kill @e[type=zombie]
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=305}] ~ ~ ~ kill @e[type=vindicator]






execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ playsound mob.ghast.fireball @a[r=15]
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1.5 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~2 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1.5 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~2 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~0.2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~0.2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~0.2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~ ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~0.5 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~0.2 ~1 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~-0.2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~-0.2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~1 ~-0.2
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~ ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~0.5 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=340}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~-0.2 ~1 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=343}] ~ ~ ~ effect @s invisibility 10 255 true
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=343}] ~ ~ ~ replaceitem entity @a slot.armor.head 1 air
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=343}] ~ ~ ~ gamerule domobspawning true
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=343}] ~ ~ ~ tp @a 389 154 -53 facing 377 155 -53
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=343}] ~ ~ ~ tp @s ~ ~-100 ~
execute @e[type=ninja:masteridle,tag=talk1,scores={timetalk=345}] ~ ~ ~ kill @s



