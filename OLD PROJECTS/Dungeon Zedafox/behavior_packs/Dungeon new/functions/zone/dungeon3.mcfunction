execute @e[type=zedafox:laser_light] ~ ~ ~ function entity/laser_light
execute @e[type=zedafox:neowheel] ~ ~ ~ function entity/neowheel
execute @e[type=zedafox:electricity] ~ ~ ~ function entity/electricity

execute @e[type=zedafox:3x3door,scores={time2=1..29},tag=!open] ~ ~ ~ function entity/opendoor
execute @e[type=zedafox:3x3door,scores={time2=1..29},tag=open] ~ ~ ~ function entity/closedoor

execute @e[type=zedafox:grounddoor,scores={time2=1..11},tag=!open] ~ ~ ~ function entity/grounddoor_open
execute @e[type=zedafox:grounddoor,scores={time2=1..11},tag=open] ~ ~ ~ function entity/grounddoor_close

execute @e[type=zedafox:machine,scores={time2=1..9},tag=!open] ~ ~ ~ function entity/machine_up
execute @e[type=zedafox:machine,scores={time2=1..9},tag=open] ~ ~ ~ function entity/machine_down