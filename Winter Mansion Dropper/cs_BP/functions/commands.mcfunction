function portal



titleraw @s actionbar {"rawtext":[{"text":"§eCoins: §g"},{"score":{"name":"@s","objective":"coins"}}]}
scoreboard players add @a coins 0
scoreboard players add @a levels 0
effect @a[x=-1796,y=213,z=-1341,r=15] night_vision 100000 255 true

execute @a[x=-1796,y=213,z=-1331,r=5,tag=!welcometext] ~ ~ ~ tellraw @a {"rawtext":[{"text":"Welcome text"}]}
execute @a[x=-1796,y=213,z=-1331,r=5,tag=!welcometext] ~ ~ ~ particle cs:welcome -1796 213 -1332
execute @a[x=-1796,y=213,z=-1331,r=5,tag=!welcometext] ~ ~ ~ spawnpoint @a -1860 207 -1229
execute @a[x=-1796,y=213,z=-1331,r=5,tag=!welcometext] ~ ~ ~ scoreboard players set @a levels 1
execute @a[x=-1796,y=213,z=-1331,r=5,tag=!welcometext] ~ ~ ~ tag @a add welcometext




execute @a[x=-1871,y=26,z=-1210,r=17,scores={levels=1}] ~ ~ ~ detect ~ ~-1 ~ water -1 function unlock/level_two
execute @a[x=-1871,y=26,z=-1210,r=17,scores={levels=1..}] ~ ~ ~ detect ~ ~-1 ~ water -1 function unlock/level_two_ard

execute @a[x=-1839,y=33,z=-1147,r=17,scores={levels=2}] ~ ~ ~ function unlock/level_three
execute @a[x=-1839,y=33,z=-1147,r=17,scores={levels=2..}] ~ ~ ~ function unlock/level_three_ard

execute @a[x=-1768,y=26,z=-1120,r=17,scores={levels=3}] ~ ~ ~ function unlock/level_four
execute @a[x=-1768,y=26,z=-1120,r=17,scores={levels=3..}] ~ ~ ~ function unlock/level_four_ard

execute @a[x=-1688,y=26,z=-1122,r=17,scores={levels=4}] ~ ~ ~ function unlock/level_five
execute @a[x=-1688,y=26,z=-1122,r=17,scores={levels=4..}] ~ ~ ~ function unlock/level_five_ard

execute @a[x=-1627,y=26,z=-1140,r=17,scores={levels=5}] ~ ~ ~ function unlock/level_six
execute @a[x=-1627,y=26,z=-1140,r=17,scores={levels=5..}] ~ ~ ~ function unlock/level_six_ard

execute @a[x=-1666,y=26,z=-1195,r=17,scores={levels=6}] ~ ~ ~ function unlock/level_seven
execute @a[x=-1666,y=26,z=-1195,r=17,scores={levels=6..}] ~ ~ ~ function unlock/level_seven_ard

execute @a[x=-1733,y=19,z=-1231,r=17,scores={levels=7}] ~ ~ ~ function unlock/level_eight
execute @a[x=-1733,y=19,z=-1231,r=17,scores={levels=7..}] ~ ~ ~ function unlock/level_eight_ard

