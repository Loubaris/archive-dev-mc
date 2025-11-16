scoreboard players add @s time 1
playanimation @s[scores={time=1}] animation.wave.purplebomb_ignite
execute @s[scores={time=1}] ~ ~ ~ playsound random.fuse @a ~ ~ ~ 
particle zedafox:oxygen1 ~ ~1 ~

playanimation @s[scores={time=60}] animation.wave.purplebomb_explode

// AIDE SON COPAIN A S'ALLUMER

execute @s[scores={time=70}] ~ ~ ~ tag @e[type=zedafox:purplebomb,r=6] add ignited
execute @s[scores={time=70}] ~ ~ ~ scoreboard players set @e[type=zedafox:purplebomb,rm=1,r=6] time 50
execute @s[scores={time=70}] ~ ~ ~ playanimation @e[type=zedafox:purplebomb,rm=1,r=6] animation.wave.purplebomb_ignite

// EXPLOSION

execute @s[scores={time=70}] ~ ~ ~ effect @e[type=zedafox:raxly,r=8] resistance 1 255 true
execute @s[scores={time=70}] ~ ~ ~ particle zedafox:explosionfire ~ ~ ~
execute @s[scores={time=70}] ~ ~ ~ summon zedafox:explosion ~ ~ ~ 
execute @s[scores={time=70}] ~ ~ ~ playsound grenade @a ~ ~ ~
effect @s[scores={time=70}] invisibility 10 10 true
kill @s[scores={time=70..}]
