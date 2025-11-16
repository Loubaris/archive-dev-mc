scoreboard players add @p fixbugs 1
execute @p[scores={fixbugs=250},tag=chestclone] ~ ~ ~ clone 421 199 -54 421 199 -54 421 155 -54
execute @p[scores={fixbugs=400},tag=chestclone] ~ ~ ~ clone 421 199 -54 421 199 -54 421 155 -54

execute @p[scores={fixbugs=500}] ~ ~ ~ kill @e[type=item]

execute @p[scores={fixbugs=500},tag=firsttask] ~ ~ ~ title @p actionbar §cTalk to Master Chi 
execute @p[scores={fixbugs=500},x=194,y=11,z=961,r=40,tag=!tnttuto] ~ ~ ~ title @p actionbar §aReminder - Craft and use the TNT Sword
execute @p[scores={fixbugs=500},tag=tnttuto,tag=!shurituto] ~ ~ ~ title @p actionbar §aReminder - Craft and use the TNT Stars
execute @p[scores={fixbugs=500},tag=tnttuto,tag=shurituto,tag=!practice] ~ ~ ~ title @p actionbar §aReminder - Use the Overpowered Weapons to defeat the enemies
execute @p[scores={fixbugs=250}] ~ ~ ~ execute @a[tag=trainingdetect] ~ ~ ~ detect 193 65 961 gold_block 0 setblock 193 65 961 air
execute @p[scores={fixbugs=260}] ~ ~ ~ execute @a[tag=trainingdetect] ~ ~ ~ detect 193 65 961 air 0 scoreboard players set @p swordused 150
execute @p[scores={fixbugs=480}] ~ ~ ~ execute @a[tag=trainingdetect] ~ ~ ~ detect 193 65 961 gold_block 0 setblock 193 65 961 air
execute @p[scores={fixbugs=490}] ~ ~ ~ execute @a[tag=trainingdetect] ~ ~ ~ detect 193 65 961 air 0 scoreboard players set @p swordused 150
execute @p[scores={fixbugs=500}] ~ ~ ~ scoreboard players set @p fixbugs 0


execute @a ~ ~ ~ detect ~ ~ ~ snow 0 tp @s 194 12 961