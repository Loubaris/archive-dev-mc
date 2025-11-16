execute @e[type=zedafox:wall,scores={time2=1..11},tag=!open] ~ ~ ~ function entity/wall_down
execute @e[type=zedafox:wall,scores={time2=1..11},tag=open] ~ ~ ~ function entity/wall_up
execute @e[type=zedafox:wall,tag=!open] ~ ~ ~ function entity/wall_kill

execute @e[type=zedafox:3x3door,scores={time2=1..29},tag=!open] ~ ~ ~ function entity/opendoor
execute @e[type=zedafox:3x3door,scores={time2=1..29},tag=open] ~ ~ ~ function entity/closedoor

execute @e[type=zedafox:spaceship] ~ ~ ~ function entity/spaceship_main2
execute @e[type=zedafox:squidhand_up] ~ ~ ~ function entity/squidhand