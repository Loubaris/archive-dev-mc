

execute @p[scores={level=0},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §e1§7]"}]}
execute @p[scores={level=0},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§fTo finish the level, you must reach the §acheckpoint"}]}
execute @p[scores={level=0},tag=!playing] ~ ~ ~ title @a title 
execute @p[scores={level=0},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=0},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=0},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=230,z=0]
execute @p[scores={level=0},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=0},tag=!playing] ~ ~ ~ structure load "w1l1" 0 219 0
execute @p[scores={level=0},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=0},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=1},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §e2§7]"}]}
execute @p[scores={level=1},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=1},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=1},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=1},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=1},tag=!playing] ~ ~ ~ structure load "w1l2" 0 219 0
execute @p[scores={level=1},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=1},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=2},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §e3§7]"}]}
execute @p[scores={level=2},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=2},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=2},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=2},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=2},tag=!playing] ~ ~ ~ structure load "w1l3" 0 219 0
execute @p[scores={level=2},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=2},tag=!playing] ~ ~ ~ tag @a add playing


execute @p[scores={level=3},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §e4§7]"}]}
execute @p[scores={level=3},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=3},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=3},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=3},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=3},tag=!playing] ~ ~ ~ structure load "w1l4" 0 219 0
execute @p[scores={level=3},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=3},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=4},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §95§7]"}]}
execute @p[scores={level=4},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=4},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=4},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=4},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=4},tag=!playing] ~ ~ ~ structure load "w2l1" 0 219 0
execute @p[scores={level=4},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=4},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=5},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §96§7]"}]}
execute @p[scores={level=5},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=5},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=5},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=5},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=5},tag=!playing] ~ ~ ~ structure load "w2l2" 0 219 0
execute @p[scores={level=5},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=5},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=6},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §97§7]"}]}
execute @p[scores={level=6},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=6},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=6},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=6},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=6},tag=!playing] ~ ~ ~ structure load "w2l3" 0 219 0
execute @p[scores={level=6},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=6},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=7},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §98§7]"}]}
execute @p[scores={level=7},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=7},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=7},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=7},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=7},tag=!playing] ~ ~ ~ structure load "w2l4" 0 219 0
execute @p[scores={level=7},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=7},tag=!playing] ~ ~ ~ tag @a add playing


execute @p[scores={level=8},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §99§7]"}]}
execute @p[scores={level=8},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=8},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=8},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=8},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=8},tag=!playing] ~ ~ ~ structure load "w2l5" 0 219 0
execute @p[scores={level=8},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=8},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=9},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §910§7]"}]}
execute @p[scores={level=9},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=9},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=9},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=9},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=9},tag=!playing] ~ ~ ~ structure load "w3l1" 0 219 0
execute @p[scores={level=9},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=9},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=10},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §911§7]"}]}
execute @p[scores={level=10},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=10},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=10},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=10},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=10},tag=!playing] ~ ~ ~ structure load "w3l2" 0 219 0
execute @p[scores={level=10},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=10},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=11},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §912§7]"}]}
execute @p[scores={level=11},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=11},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=11},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=11},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=11},tag=!playing] ~ ~ ~ structure load "w3l3" 0 219 0
execute @p[scores={level=11},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=11},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=12},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §913§7]"}]}
execute @p[scores={level=12},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=12},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=12},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=12},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=12},tag=!playing] ~ ~ ~ structure load "w3l4" 0 219 0
execute @p[scores={level=12},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=12},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=13},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §914§7]"}]}
execute @p[scores={level=13},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=13},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=13},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=13},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=13},tag=!playing] ~ ~ ~ structure load "w3l5" 0 219 0
execute @p[scores={level=13},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=13},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=14},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §915§7]"}]}
execute @p[scores={level=14},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=14},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=14},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=14},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=14},tag=!playing] ~ ~ ~ structure load "w4l1" 0 219 0
execute @p[scores={level=14},tag=!playing] ~ ~ ~ tag @e[type=pk:msummoner,r=140] add dead
execute @p[scores={level=14},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=14},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=15},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §916§7]"}]}
execute @p[scores={level=15},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=15},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=15},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=15},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=15},tag=!playing] ~ ~ ~ structure load "w4l2" 0 219 0
execute @p[scores={level=15},tag=!playing] ~ ~ ~ tag @e[type=pk:msummoner,r=140] add dead
execute @p[scores={level=15},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=15},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=16},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §917§7]"}]}
execute @p[scores={level=16},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=16},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=16},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=16},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=16},tag=!playing] ~ ~ ~ structure load "w4l3" 0 219 0
execute @p[scores={level=16},tag=!playing] ~ ~ ~ tag @e[type=pk:msummoner,r=140] add dead
execute @p[scores={level=16},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=16},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=17},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fLevel: §918§7]"}]}
execute @p[scores={level=17},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=17},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=17},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=17},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=17},tag=!playing] ~ ~ ~ structure load "w4l4" 0 219 0
execute @p[scores={level=17},tag=!playing] ~ ~ ~ tag @e[type=pk:msummoner,r=140] add dead
execute @p[scores={level=17},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=17},tag=!playing] ~ ~ ~ tag @a add playing

execute @p[scores={level=18},tag=!playing] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7[§fBoss Level§7] §7-§r Punch all the canons to defeat the gorilla"}]}
execute @p[scores={level=18},tag=!playing] ~ ~ ~ kill @e[type=pk:spawn]
execute @p[scores={level=18},tag=!playing] ~ ~ ~ kill @e[type=pk:checkpoint]
execute @p[scores={level=18},tag=!playing] ~ ~ ~ kill @e[type=!player,type=!item,r=120,x=0,y=231,z=0]
execute @p[scores={level=18},tag=!playing] ~ ~ ~ structure load "clear" 0 219 0
execute @p[scores={level=18},tag=!playing] ~ ~ ~ structure load "w4l5p1" 0 219 0
execute @p[scores={level=18},tag=!playing] ~ ~ ~ structure load "w4l5p2" 0 219 64
execute @p[scores={level=18},tag=!playing] ~ ~ ~ tag @e[type=pk:msummoner,r=140] add dead
execute @p[scores={level=18},tag=!playing] ~ ~ ~ tp @a @e[type=pk:spawn]
execute @p[scores={level=18},tag=!playing] ~ ~ ~ tag @a add playing

