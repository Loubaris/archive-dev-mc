scoreboard players set @s thisoneTAG 1
execute @s ~ ~ ~ detect ~ ~-1 ~ air 0 scoreboard players set @s thisoneTAG 0
effect @s[scores={thisoneTAG=1}] slowness 1 100 true
effect @s[scores={thisoneTAG=0}] slowness 0 0
scoreboard players set @s thisoneTAG 0