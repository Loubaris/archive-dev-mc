scoreboard players add @p[tag=usedmask] masktime 1

clear @a mm:mob_head 0 1

tellraw @a[tag=!tip1,scores={ride=1}] {"rawtext":[{"text":"§7[§bAxolotl§7] §bPunch to throw bubbles"}]}
tag @a[tag=!tip1,scores={ride=1}] add tip1

tellraw @a[tag=!tip4,scores={ride=4}] {"rawtext":[{"text":"§7[§bChicken§7] §bPunch to throw an egg"}]}
tag @a[tag=!tip4,scores={ride=4}] add tip4

tellraw @a[tag=!tip6,scores={ride=6}] {"rawtext":[{"text":"§7[§bCreeper§7] §bPunch to start exploding"}]}
tag @a[tag=!tip6,scores={ride=6}] add tip6

tellraw @a[tag=!tip9,scores={ride=9}] {"rawtext":[{"text":"§7[§bIron Golem§7] §bPunch to transform into §7§lGiant Golem, §r§buseful for mining"}]}
tag @a[tag=!tip9,scores={ride=9}] add tip9

tellraw @a[tag=!tip11,scores={ride=11}] {"rawtext":[{"text":"§7[§bPillager§7] §bPunch to shoot an arrow"}]}
tag @a[tag=!tip11,scores={ride=11}] add tip11

tellraw @a[tag=!tip25,scores={ride=25}] {"rawtext":[{"text":"§7[§bPiglin§7] §bPunch to shoot an arrow"}]}
tag @a[tag=!tip25,scores={ride=25}] add tip25

tellraw @a[tag=!tip15,scores={ride=15}] {"rawtext":[{"text":"§7[§bSkeleton§7] §bPunch to shoot an arrow"}]}
tag @a[tag=!tip15,scores={ride=15}] add tip15

tellraw @a[tag=!tip16,scores={ride=16}] {"rawtext":[{"text":"§7[§bSnow Golem§7] §bPunch to throw a snowball"}]}
tag @a[tag=!tip16,scores={ride=16}] add tip16

tellraw @a[tag=!tip17,scores={ride=17}] {"rawtext":[{"text":"§7[§bSpider§7] §bPunch to create webs"}]}
tag @a[tag=!tip17,scores={ride=17}] add tip17

tellraw @a[tag=!tip19,scores={ride=19}] {"rawtext":[{"text":"§7[§bWitch§7] §bPunch to throw magical effects"}]}
tag @a[tag=!tip19,scores={ride=19}] add tip19

tellraw @a[tag=!tip23,scores={ride=23}] {"rawtext":[{"text":"§7[§bBlaze§7] §bPunch to throw fireball"}]}
tag @a[tag=!tip23,scores={ride=23}] add tip23


tellraw @a[tag=!tip20,scores={ride=20}] {"rawtext":[{"text":"§7[§bWither§7] §bPunch to throw wither skulls"}]}
tag @a[tag=!tip20,scores={ride=20}] add tip20

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=axolotl,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=axolotl,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=axolotl,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 1
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=axolotl,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=axolotl,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=axolotl,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bee,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bee,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bee,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 2
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bee,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bee,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bee,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cat,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cat,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cat,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 3
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cat,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cat,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cat,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=chicken,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=chicken,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=chicken,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 4
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=chicken,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=chicken,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=chicken,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cow,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cow,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cow,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 5
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cow,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cow,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=cow,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=creeper,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=creeper,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=creeper,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 6
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=creeper,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=creeper,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=creeper,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=dolphin,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=dolphin,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=dolphin,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 7
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=dolphin,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=dolphin,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=dolphin,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=fox,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=fox,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=fox,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 8
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=fox,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=fox,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=fox,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=iron_golem,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=iron_golem,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=iron_golem,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 9
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=iron_golem,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=iron_golem,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=iron_golem,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ocelot,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ocelot,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ocelot,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 10
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ocelot,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ocelot,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ocelot,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=pillager,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=pillager,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=pillager,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 11
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=pillager,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=pillager,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=pillager,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=rabbit,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=rabbit,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=rabbit,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 12
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=rabbit,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=rabbit,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=rabbit,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ravager,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ravager,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ravager,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 13
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ravager,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ravager,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=ravager,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=sheep,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=sheep,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=sheep,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 14
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=sheep,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=sheep,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=sheep,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=skeleton,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=skeleton,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=skeleton,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 15
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=skeleton,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=skeleton,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=skeleton,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=snow_golem,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=snow_golem,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=snow_golem,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 16
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=snow_golem,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=snow_golem,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=snow_golem,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 17
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=vindicator,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=vindicator,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=vindicator,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 18
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=vindicator,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=vindicator,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=vindicator,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=witch,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=witch,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=witch,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 19
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=witch,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=witch,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=witch,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wither,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wither,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wither,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 20
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wither,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wither,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wither,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wolf,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wolf,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wolf,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 21
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wolf,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wolf,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=wolf,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=zombie,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=zombie,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=zombie,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 22
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=zombie,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=zombie,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=zombie,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=blaze,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=blaze,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=blaze,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 23
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=blaze,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=blaze,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=blaze,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bat,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bat,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bat,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 24
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bat,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bat,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=bat,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1

execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=piglin,c=1,r=4.5] ^ ^0.5 ^1 event entity @s minecraft:masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=piglin,c=1,r=4.5] ^ ^0.5 ^1 playsound record.wait @a[r=10]
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=piglin,c=1,r=4.5] ^ ^0.5 ^1 scoreboard players set @p ride 25
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=piglin,c=1,r=4.5] ^ ^0.5 ^1 tag @s add masked
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=piglin,c=1,r=4.5] ^ ^0.5 ^1 particle mm:masked ~ ~ ~
execute @p[tag=usedmask,scores={masktime=1}] ~ ~ ~ execute @e[type=piglin,c=1,r=4.5] ^ ^0.5 ^1 clear @p mm:mob_mask 0 1


tag @p[tag=usedmask,scores={masktime=55}] add removetime
tag @p[tag=usedmask,scores={masktime=55}] remove usedmask
scoreboard players set @p[tag=removetime,scores={masktime=55}] masktime 0
tag @p remove removetime


scoreboard players add @p[tag=attacking] attacktime 1

execute @p[tag=attacking,scores={ride=6,attacktime=1}] ~ ~ ~ event entity @e[type=!player,type=creeper,r=2,c=1] minecraft:fire_explode
execute @p[tag=attacking,scores={ride=6,attacktime=1}] ~ ~ ~ effect @s resistance 4 255 true
execute @p[tag=attacking,scores={ride=9,attacktime=1}] ~ ~ ~ event entity @e[type=!player,type=iron_golem,r=6,c=1] minecraft:giant
execute @p[tag=attacking,scores={ride=9,attacktime=1}] ~ ~ ~ summon mm:instanttntgolem ^ ^ ^6
execute @p[tag=attacking,scores={ride=9,attacktime=54}] ~ ~ ~ event entity @e[type=!player,type=iron_golem,r=6,c=1] minecraft:giant_off
execute @p[tag=attacking,scores={ride=16,attacktime=1}] ~ ~ ~ event entity @s sp:n_snowball
execute @p[tag=attacking,scores={ride=17,attacktime=1}] ~ ~ ~ execute @e[type=spider,c=1,r=10] ~ ~ ~ execute @e[type=!player,type=!item,r=5] ~ ~ ~ setblock ~ ~ ~ web
execute @p[tag=attacking,scores={ride=23,attacktime=1}] ~ ~ ~ event entity @s sp:n_fire_ball
execute @p[tag=attacking,scores={ride=25,attacktime=1}] ~ ~ ~ event entity @s sp:n_arrows
execute @p[tag=attacking,scores={ride=15,attacktime=1}] ~ ~ ~ event entity @s sp:n_arrows
execute @p[tag=attacking,scores={ride=11,attacktime=1}] ~ ~ ~ event entity @s sp:n_arrows
execute @p[tag=attacking,scores={ride=20,attacktime=1}] ~ ~ ~ event entity @s sp:n_wither_shoot
execute @p[tag=attacking,scores={ride=4,attacktime=1}] ~ ~ ~ event entity @s sp:n_eggs
execute @p[tag=attacking,scores={ride=22,attacktime=1}] ~ ~ ~ effect @e[type=!player,type=!zombie,r=6] fatal_poison 1 3 true
execute @p[tag=attacking,scores={ride=11,attacktime=1}] ~ ~ ~ effect @e[type=!player,type=!pillager,r=6] fatal_poison 1 3 true
execute @p[tag=attacking,scores={ride=18,attacktime=1}] ~ ~ ~ effect @e[type=!player,type=!vindicator,r=6] fatal_poison 1 3 true
execute @p[tag=attacking,scores={ride=25,attacktime=1}] ~ ~ ~ effect @e[type=!player,type=!piglin,r=6] fatal_poison 1 3 true
execute @p[tag=attacking,scores={ride=24,attacktime=1}] ~ ~ ~ effect @s invisibility 3 255 true
execute @p[scores={ride=1}] ~ ~ ~ effect @s water_breathing 2 255 true
execute @p[scores={ride=7}] ~ ~ ~ effect @s water_breathing 2 255 true
execute @p[scores={ride=12}] ~ ~ ~ effect @e[r=3] jump_boost 2 2 true

execute @p[scores={ride=1,attacktime=1},tag=attacking] ~ ~ ~ tag @s add water
execute @p[scores={ride=19,attacktime=1},tag=attacking] ~ ~ ~ tag @s add soul

scoreboard players add @a[tag=water] watertime 1
execute @p[tag=water] ~ ~ ~ function waterwand
execute @p[tag=water,scores={watertime=1}] ~ ~ ~ playsound bubble.upinside @a[r=5]
tag @p[tag=water,scores={watertime=40}] add removetimenature
tag @p[tag=water,scores={watertime=40}] remove water
scoreboard players set @p[tag=removetimenature,scores={watertime=40}] watertime 0
tag @p remove removetimenature

scoreboard players add @e[tag=waterlocked] watertime 1
execute @e[tag=waterlocked] ~ ~ ~ particle mm:bubble_color ~ ~1.5 ~
execute @e[tag=waterlocked] ~ ~ ~ effect @s levitation 1 2 true
effect @e[tag=waterlocked] slowness 2 255 true
tag @e[tag=waterlocked,scores={watertime=50}] remove waterlocked
scoreboard players set @e[tag=waterlocked,scores={watertime=50}] watertime 0

scoreboard players add @a[tag=soul] soultime 1
execute @p[tag=soul] ~ ~ ~ function soulwand
execute @p[tag=soul,scores={soultime=1}] ~ ~ ~ playsound mob.shulker.teleport @a[r=5]
tag @p[tag=soul,scores={soultime=40}] add removetimes
tag @p[tag=soul,scores={soultime=40}] remove soul
scoreboard players set @p[tag=removetimes,scores={soultime=40}] soultime 0
tag @p remove removetimes

scoreboard players add @e[tag=soullocked] soultime 1
execute @e[tag=soullocked] ~ ~ ~ particle mm:magic ~ ~1.5 ~
execute @e[tag=soullocked] ~ ~ ~ effect @s fatal_poison 2 6 true
effect @e[tag=soullocked] slowness 2 255 true
tag @e[tag=soullocked,scores={soultime=50}] remove soullocked
scoreboard players set @e[tag=soullocked,scores={soultime=50}] soultime 0


tag @p[tag=attacking,scores={attacktime=55}] add removetime
tag @p[tag=attacking,scores={attacktime=55}] remove attacking
scoreboard players set @p[tag=removetime,scores={attacktime=55}] attacktime 0
tag @p remove removetime


scoreboard players add @e[type=mm:fire_ball] firetime 1
execute @e[type=mm:fire_ball,scores={firetime=20}] ~ ~ ~ summon mm:instanttnt
execute @e[type=mm:fire_ball,scores={firetime=20}] ~ ~ ~ kill @s




scoreboard players add @e[type=mm:mask_npc,tag=intro1,tag=!introstop] introtime 1
execute @e[type=mm:mask_npc,tag=!intro1] ~ ~ ~ title @a[r=8] actionbar §7[§aPunch the Mask§7]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§f§lHey!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=5}] ~ ~ ~ difficulty peaceful
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=5}] ~ ~ ~ playsound mob.villager.yes @a[r=15]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=35}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fI am Yuggy!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=35}] ~ ~ ~ playanimation @e[type=mm:mask_npc] animation.mask.talk
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fI have been living in this world for a long time!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fIt's total anarchy here!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=170}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fFinally some new visitors to fix that"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=240}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fYou're probably wondering what I am?"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=320}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fI am a mind controller mask!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=410}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fThat means I can control mobs and their attacks!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=525}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fFollow me! I'll teach you how to control them!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=595}] ~ ~ ~ tp @s ~ ~ ~ facing -256 68 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=625}] ~ ~ ~ particle mm:tp ~ ~ ~
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=625}] ~ ~ ~ playsound mob.shulker.teleport @a[r=30]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=625}] ~ ~ ~ tp @s -264 70 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=700}] ~ ~ ~ particle mm:tp ~ ~ ~
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=700}] ~ ~ ~ playsound mob.shulker.teleport @a[r=30]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=700}] ~ ~ ~ tp @s -253 67 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=780}] ~ ~ ~ particle mm:tp ~ ~ ~
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=780}] ~ ~ ~ playsound mob.shulker.teleport @a[r=30]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=780}] ~ ~ ~ tp @s -236 65 -105 facing @p
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=820}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7Use the mask on a mob to control it, then ride it."}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=800}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7While riding, use your attack button for the special attacks."}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=910}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7To get back your mask, punch the masked entity, or kill it."}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1105}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7You will receive tips when it is your first time using a certain mob."}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1350}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fLet's try to control this axolotl! Use your mask on it."}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1377}] ~ ~ ~ playanimation @s animation.mask.take f 100
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1387}] ~ ~ ~ particle mm:give
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1400}] ~ ~ ~ give @a mm:mob_mask
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1400}] ~ ~ ~ playsound record.chirp @a[r=10]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1400}] ~ ~ ~ effect @s invisibility 10000 255 true
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1400}] ~ ~ ~ summon axolotl -235 65 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=1400}] ~ ~ ~ effect @e[type=axolotl] slowness 5 255 true
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2050}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fNow let's try something more useful!"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2100}] ~ ~ ~ tp @a -403 -21 -152
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2230}] ~ ~ ~ summon iron_golem -402 -21 -153
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2100}] ~ ~ ~ effect @a night_vision 1000 255 true
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2100}] ~ ~ ~ kill @e[type=axolotl,tag=masked]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2100}] ~ ~ ~ clear @a mm:mob_mask
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2100}] ~ ~ ~ give @a mm:mob_mask
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=2120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fControl the Iron Golem to mine around the Cave"}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3200}] ~ ~ ~ tp @a -276 68 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3200}] ~ ~ ~ effect @a clear
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3200}] ~ ~ ~ kill @e[type=iron_golem,tag=masked]
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fYou are now ready for your adventure! If you want have fun, punch Egyptian Yuggy and you'll receive a random spawn egg! Or start a playground wave. If you ever loose your mask, you can always craft it using the sign at the spawn."}]}
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3200}] ~ ~ ~ clear @a
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3205}] ~ ~ ~ give @a mm:mob_mask
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3202}] ~ ~ ~ summon mm:gold_mask_npc -287 70 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3202}] ~ ~ ~ summon mm:playground -276 70 -95
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3202}] ~ ~ ~ execute @e[type=mm:playground] ~ ~ ~ tp @s ~ ~ ~ facing -276 70 -106
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3202}] ~ ~ ~ tp @e[type=mm:gold_mask_npc] -287 70 -106 facing @p
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3202}] ~ ~ ~ difficulty normal
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3205}] ~ ~ ~ tp @s ~ ~-1000 ~
execute @e[type=mm:mask_npc,tag=intro1,scores={introtime=3209}] ~ ~ ~ kill @s

execute @e[type=mm:gold_mask_npc] ~ ~ ~ title @a[r=6,tag=!random] actionbar §7[§aRandom Spawn Egg§7]


scoreboard players add @p[tag=random] randomtime 1
scoreboard players random @p[tag=random,scores={randomtime=1}] randomluck 1 18
title @a[tag=random,scores={randomtime=1}] actionbar §7[§aSpawn Egg§7]
title @a[tag=random,scores={randomtime=5}] actionbar §7[§bSpawn Egg§7]
title @a[tag=random,scores={randomtime=10}] actionbar §7[§cSpawn Egg§7]
title @a[tag=random,scores={randomtime=15}] actionbar §7[§dSpawn Egg§7]
title @a[tag=random,scores={randomtime=20}] actionbar §7[§eSpawn Egg§7]
title @a[tag=random,scores={randomtime=25}] actionbar §7[§fSpawn Egg§7]
title @a[tag=random,scores={randomtime=30}] actionbar §7[§9Spawn Egg§7]
title @a[tag=random,scores={randomtime=35}] actionbar §7[§2Spawn Egg§7]
title @a[tag=random,scores={randomtime=40}] actionbar §7[§3Spawn Egg§7]
title @a[tag=random,scores={randomtime=45}] actionbar §7[§aSpawn Egg§7]
execute @a[tag=random,scores={randomtime=1}] ~ ~ ~ execute @e[type=mm:gold_mask_npc] ~ ~ ~ particle mm:random ~ ~ ~

execute @e[type=mm:gold_mask_npc] ~ ~ ~ execute @p[tag=random,scores={randomtime=50}] ~ ~ ~ playsound record.chirp @a[r=10]
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=1}] axolotl_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=2}] bat_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=3}] blaze_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=4}] cat_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=5}] chicken_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=6}] cow_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=7}] creeper_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=8}] dolphin_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=10}] fox_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=11}] goat_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=12}] ocelot_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=13}] piglin_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=14}] pillager_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=15}] rabbit_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=16}] ravager_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=17}] witch_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=18}] wolf_spawn_egg 1
execute @e[type=mm:gold_mask_npc] ~ ~ ~ give @p[tag=random,scores={randomtime=50,randomluck=9}] spider_spawn_egg 1

tag @p[tag=random,scores={randomtime=55}] add removetimezz
tag @p[tag=random,scores={randomtime=55}] remove random
scoreboard players set @p[tag=removetimezz,scores={randomtime=55}] randomtime 0
tag @p remove removetimezz

scoreboard players add @e[type=mm:playground] round 0

scoreboard players add @e[type=mm:playground,tag=clicked] roundtime 1
execute @e[type=mm:playground,tag=clicked,scores={roundtime=1}] ~ ~ ~ playanimation @s animation.button.clicked
execute @e[type=mm:playground,tag=clicked,scores={roundtime=10}] ~ ~ ~ particle mm:button ~ ~ ~
execute @e[type=mm:playground,tag=clicked,scores={roundtime=40}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§aPlayground§7] §aA mobs wave is approaching!"}]}
execute @e[type=mm:playground,tag=clicked,scores={roundtime=40}] ~ ~ ~ time set night
execute @e[type=mm:playground,tag=clicked,scores={roundtime=40}] ~ ~ ~ playsound mob.zombie.say @a[r=40]
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -277 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -275 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -277 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -275 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -277 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=0,roundtime=200}] ~ ~ ~ summon zombie -275 72 -72


execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon vindicator -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon skeleton -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=1,roundtime=200}] ~ ~ ~ summon zombie -276 72 -72

execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon vindicator -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon witch -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=2,roundtime=200}] ~ ~ ~ summon piglin -276 72 -72

execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon ravager -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon vindicator -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon pillager -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=3,roundtime=200}] ~ ~ ~ summon ravager -276 72 -72

execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon snow_golem -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon blaze -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=4,roundtime=200}] ~ ~ ~ summon creeper -276 72 -72


execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ summon ravager -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=5,roundtime=200}] ~ ~ ~ execute @p ~ ~ ~ summon iron_golem

execute @e[type=mm:playground,tag=clicked,scores={round=6,roundtime=200}] ~ ~ ~ summon wither -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=6,roundtime=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§aPlayground§7] §aControl the wither to start shooting wither skulls!"}]}

execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon spider -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -312 68 -106
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -312 68 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -312 68 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon spider -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -276 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -277 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -275 67 -135
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon spider -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -246 67 -106
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -246 67 -105
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -246 67 -107
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon snow_golem -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon blaze -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon creeper -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon spider -276 72 -72
execute @e[type=mm:playground,tag=clicked,scores={round=7..,roundtime=200}] ~ ~ ~ summon wither -276 72 -72



execute @e[type=mm:playground,tag=clicked,scores={roundtime=1000..}] ~ ~ ~ tag @e[type=mm:playground] remove clicked
execute @e[type=mm:playground,scores={roundtime=1000..}] ~ ~ ~ scoreboard players add @s round 1
execute @e[type=mm:playground,scores={roundtime=1000..}] ~ ~ ~ scoreboard players set @e[type=mm:playground,scores={roundtime=1000}] roundtime 0


execute @e[type=mm:playground,r=4] ~ ~ ~ tellraw @a[r=20,tag=!plgtip] {"rawtext":[{"text":"§7[§aPlayground§7] §bThis is the playground area, using this button you can choose to start summon mobs waves. Each wave mobs become more aggressives."}]}
execute @e[type=mm:playground,r=4] ~ ~ ~ tag @a[r=20,tag=!plgtip] add plgtip


