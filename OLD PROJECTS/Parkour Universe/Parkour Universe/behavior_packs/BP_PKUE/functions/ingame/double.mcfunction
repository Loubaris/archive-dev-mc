execute @a[hasitem={location=slot.weapon.mainhand,item=feather},tag=jumping] ~ ~ ~ detect ~ ~-1 ~ air 0 tag @s add levitationj
execute @a[hasitem={location=slot.weapon.mainhand,item=feather},tag=jumping] ~ ~ ~ detect ~ ~-1 ~ air 0 tag @s remove jumping
scoreboard players add @a[tag=levitationj] doubletime 1
effect @a[scores={doubletime=1}] levitation 1 30 true
scoreboard players remove @a[scores={doubletime=1}] doubleleft 1
titleraw @a[hasitem={location=slot.weapon.mainhand,item=feather}] actionbar {"rawtext":[{"text":"§fDouble Jump Left: §7"},{"score":{"name":"@p[hasitem={location=slot.weapon.mainhand,item=feather}]","objective":"doubleleft"}}]}
effect @a[scores={doubletime=5}] levitation 0 0 true
tag @a[scores={doubletime=6}] remove levitationj
scoreboard players set @a[scores={doubletime=6}] doubletime 0

clear @a[scores={doubleleft=0}] feather 0 1
scoreboard players set @a[scores={doubleleft=0}] doubleleft 3