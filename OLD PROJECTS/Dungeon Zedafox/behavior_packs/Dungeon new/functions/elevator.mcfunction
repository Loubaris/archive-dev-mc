scoreboard players add @s[tag=!stop] elevator 1
execute @s[tag=!stop,scores={elevator=1}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator1
execute @s[tag=!stop,scores={elevator=2}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator2
execute @s[tag=!stop,scores={elevator=3}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator3
execute @s[tag=!stop,scores={elevator=4}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator4
execute @s[tag=!stop,scores={elevator=5}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator5
execute @s[tag=!stop,scores={elevator=6}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator6
execute @s[tag=!stop,scores={elevator=7}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator7
execute @s[tag=!stop,scores={elevator=8}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator8
execute @s[tag=!stop,scores={elevator=9}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator9
execute @s[tag=!stop,scores={elevator=10}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator10
execute @s[tag=!stop,scores={elevator=11}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator11
execute @s[tag=!stop,scores={elevator=12}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator12
execute @s[tag=!stop,scores={elevator=13}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator13
execute @s[tag=!stop,scores={elevator=14}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator14
execute @s[tag=!stop,scores={elevator=15}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator15
execute @s[tag=!stop,scores={elevator=16}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator16

execute @s[tag=!stop,scores={elevator=17}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 air
execute @s[tag=!stop,scores={elevator=17}] ~ ~ ~ tp @s ~ ~-1 ~
execute @s[tag=!stop,scores={elevator=17}] ~ ~ ~ fill ~2 ~ ~2 ~-2 ~ ~-2 zedafox:elevator1
execute @s[scores={elevator=17}] ~ ~ ~ detect ~ ~-1 ~ concrete 14 kill @s
scoreboard players set @s[tag=!stop,scores={elevator=17}] elevator 1