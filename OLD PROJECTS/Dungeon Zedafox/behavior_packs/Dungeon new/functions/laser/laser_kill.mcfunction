tp @s ^ ^ ^1
tag @s add block
tag @s remove bounced

// PASSAGE A TRAVERS CES BLOCKS

execute @s ^ ^ ^1 detect ~ ~1.5 ~ glass -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ stained_glass -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ stained_glass_pane -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ tallgrass -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ air -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ diamond_block -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ gold_block -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ iron_block -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ carpet -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ leaves -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ leaves2 -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ water -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ lava -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ stone_button -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ iron_trapdoor -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ fence -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ frame -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ flower_pot -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ coral_fan_dead -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ light_block -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ web -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ zedafox:bush -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ weeping_vines -1 tag @s remove block
execute @s ^ ^ ^1 detect ~ ~1.5 ~ nether_sprouts -1 tag @s remove block

// PARTICLES

execute @s ^ ^ ^1 particle zedafox:laser ~ ~1.5 ~
execute @s ~ ~ ~ detect ~ ~ ~ zedafox:acid 0 particle zedafox:acid_impact ~ ~ ~

// HIT ENTITY

scoreboard players set @e[type=zedafox:dummy,r=2] electrification 10
scoreboard players set @e[type=zedafox:raxly,r=2.5] electrification 10
execute @e[type=zedafox:raxly,r=2] ~ ~ ~ function entity/raxly_hit
scoreboard players set @e[family=monster,family=!yellowguy,r=1.5] electrification 10
execute @e[type=zedafox:ironmet,r=2] ~ ~ ~ function entity/ironmet_hit 
execute @e[type=zedafox:purplebomb,r=2] ~ ~ ~ tag @s add ignited
event entity @e[family=eye,r=2] dying
execute @e[type=zedafox:squidhand_up,r=3] ~ ~ ~ function entity/squidhand_dying

// MIRROIR

execute @s[rym=1,ry=179] ^ ^ ^1 detect ~-1 ~1.5 ~ stained_glass 2 function laser/bounce_n
execute @s[rym=-180,ry=0] ^ ^ ^1 detect ~1 ~1.5 ~ stained_glass 2 function laser/bounce_s
execute @s[rym=-89,ry=89] ^ ^ ^1 detect ~ ~1.5 ~1 stained_glass 2 function laser/bounce_e
execute @s[rym=90,ry=179] ^ ^ ^1 detect ~ ~1.5 ~-1 stained_glass 2 function laser/bounce_w
execute @s[rym=-180,ry=-90] ^ ^ ^1 detect ~ ~1.5 ~-1 stained_glass 2 function laser/bounce_w

execute @s[rym=1,ry=179] ^ ^ ^1 detect ~-1 ~1.5 ~ stained_glass_pane 2 function laser/bounce_n
execute @s[rym=-180,ry=0] ^ ^ ^1 detect ~1 ~1.5 ~ stained_glass_pane 2 function laser/bounce_s
execute @s[rym=-89,ry=89] ^ ^ ^1 detect ~ ~1.5 ~1 stained_glass_pane 2 function laser/bounce_e
execute @s[rym=90,ry=179] ^ ^ ^1 detect ~ ~1.5 ~-1 stained_glass_pane 2 function laser/bounce_w
execute @s[rym=-180,ry=-90] ^ ^ ^1 detect ~ ~1.5 ~-1 stained_glass_pane 2 function laser/bounce_w


execute @s[tag=!bounced] ^ ^ ^1 detect ~ ~1 ~ stained_glass 2 function laser/bounce_b
execute @s[tag=!bounced] ^ ^ ^1 detect ~ ~2.5 ~ stained_glass 2 function laser/bounce_t

// DISTANCE

scoreboard players add @s distance 1

// DISTANCE KILL

execute @s[scores={distance=..100},tag=!hit,tag=!block] ~ ~ ~ function laser/laser_kill
execute @s[scores={distance=100..}] ~ ~ ~ kill @s
execute @s[tag=hit] ~ ~ ~ kill @s
execute @s[tag=block] ~ ~ ~ kill @s
