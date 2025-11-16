// EASTER EGG

scoreboard players add @s easter_egg 1

// SETBLOCK - OPTIMIZATION

execute @s[scores={easter_egg=20}] ~ ~ ~ setblock 371 58 492 redstone_block

//

execute @s[scores={easter_egg=40}] ~ ~ ~ summon zedafox:portal 450 65 538
execute @s[scores={easter_egg=80}] ~ ~ ~ summon zedafox:portal 450 65 547


// SETBLOCK - OPTIMIZATION

execute @s[scores={easter_egg=85}] ~ ~ ~ setblock 371 58 492 air


execute @s[scores={easter_egg=60}] ~ ~ ~ summon zedafox:character_inanimate 450 65 538
execute @s[scores={easter_egg=60}] ~ ~ ~ event entity @e[type=zedafox:character_inanimate,x=450,y=65,z=538,c=1] skin11
execute @s[scores={easter_egg=61}] ~ ~ ~ playanimation @e[type=zedafox:character_inanimate,x=450,y=65,z=538,c=1] animation.wave.running
execute @s[scores={easter_egg=60}] ~ ~ ~ scoreboard players set @e[type=zedafox:character_inanimate,x=450,y=65,z=538,c=1] is_running3 180

execute @s[scores={easter_egg=70}] ~ ~ ~ summon zedafox:character_inanimate 450 65 538
execute @s[scores={easter_egg=70}] ~ ~ ~ event entity @e[type=zedafox:character_inanimate,x=450,y=65,z=538,c=1] skin12
execute @s[scores={easter_egg=71}] ~ ~ ~ playanimation @e[type=zedafox:character_inanimate,x=450,y=65,z=538,c=1] animation.wave.running
execute @s[scores={easter_egg=70}] ~ ~ ~ scoreboard players set @e[type=zedafox:character_inanimate,x=450,y=65,z=538,c=1] is_running3 180


execute @e[type=zedafox:character_inanimate,tag=!verified] ~ ~ ~ detect ~ ~-2 ~ concrete 5 playanimation @s animation.wave.enter_the_portal
execute @e[type=zedafox:character_inanimate,tag=!verified] ~ ~ ~ detect ~ ~-2 ~ concrete 5 tag @s add verified
execute @e[type=zedafox:character_inanimate] ~ ~ ~ detect ~ ~-2 ~0.5 concrete 0 effect @s invisibility 9999 255 true
execute @e[type=zedafox:character_inanimate] ~ ~ ~ detect ~ ~-2 ~0.5 concrete 14 kill @s


scoreboard players set @s[scores={easter_egg=200}] easter_egg 0