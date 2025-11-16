// BOSS SPAWN

execute @s[scores={cutscene2=1}] ~ ~ ~ summon zedafox:boss 381 58 494
execute @s[scores={cutscene2=1}] ~ ~ ~ execute @e[type=zedafox:boss] ~ ~ ~ tp @s ~ ~ ~ 90
execute @s[scores={cutscene2=20}] ~ ~ ~ tp @s[type=zedafox:boss] 380 110 494 90
execute @s[scores={cutscene2=2}] ~ ~ ~ tag @e[family=character] remove chat


// SOUND

execute @s[scores={cutscene2=1}] ~ ~ ~ effect @e[type=zedafox:boss] invisibility 30 1 true
execute @s[scores={cutscene2=1}] ~ ~ ~ scoreboard players set @a border 1


execute @s[scores={cutscene2=5}] ~ ~ ~ camerashake add @a 0.2 0.5
execute @s[scores={cutscene2=65}] ~ ~ ~ camerashake add @a 0.3 0.5
execute @s[scores={cutscene2=125}] ~ ~ ~ camerashake add @a 0.4 0.5
execute @s[scores={cutscene2=185}] ~ ~ ~ camerashake add @a 0.5 0.5

execute @s[scores={cutscene2=5}] ~ ~ ~ playsound impact @a
execute @s[scores={cutscene2=65}] ~ ~ ~ playsound impact @a
execute @s[scores={cutscene2=125}] ~ ~ ~ playsound impact @a
execute @s[scores={cutscene2=185}] ~ ~ ~ playsound impact @a

// PORTAL

execute @s[scores={cutscene2=245}] ~ ~ ~ summon zedafox:blackportal 380 108.52 494
execute @s[scores={cutscene2=245}] ~ ~ ~ execute @a ~ ~ ~ playsound hit @s ~ ~ ~ 0.2 1
execute @s[scores={cutscene2=245}] ~ ~ ~ execute @a ~ ~ ~ playsound portal @s ~ ~ ~ 1 0.5
execute @s[scores={cutscene2=245}] ~ ~ ~ playsound urgency @a

// BOSS APPEAR

execute @s[scores={cutscene2=259}] ~ ~ ~ playanimation @e[type=zedafox:boss] animation.wave.appear
execute @s[scores={cutscene2=245}] ~ ~ ~ setblock 380 110 494 light_block 15
execute @s[scores={cutscene2=260}] ~ ~ ~ effect @e[type=zedafox:boss] invisibility 0 0 true

// BOSS TALK

execute @s[scores={cutscene2=285}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] dialog 44
execute @s[scores={cutscene2=285}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] timedialog 1


scoreboard players add @s cutscene2 1