scoreboard players random @s random 1 3
scoreboard players add @s random2 1

playanimation @s[tag=!angry,scores={random=1}] animation.wave.raxly_hit
playanimation @s[tag=!angry,scores={random=2}] animation.wave.raxly_hit2
playanimation @s[tag=!angry,scores={random=3}] animation.wave.raxly_hit3

playsound raxly @a ~ ~ ~

execute @s[scores={random2=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fOuch!"}]}
execute @s[scores={random2=10}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fSTOP!!"}]}
execute @s[scores={random2=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fDo you really think you're hurting me?"}]}
execute @s[scores={random2=50}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fSTOP PLAYING AND GIVE ME THOSE CRYSTALS"}]}
execute @s[scores={random2=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou're ridiculous!"}]}
execute @s[scores={random2=90}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fThe universe was supposed to belong to us!!"}]}
execute @s[scores={random2=110}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fBut you messed it up!!!"}]}
execute @s[scores={random2=130}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYOU GOT NOTHING BETTER TO DO THAN SHOOT ME?"}]}
execute @s[scores={random2=150}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fSTOP IT!!!"}]}
execute @s[scores={random2=170}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fSTOP IIIIIT!!!"}]}
execute @s[scores={random2=190}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fI NEED IT SO MUCH!!!!!"}]}
execute @s[scores={random2=210}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou don't know how much you can do with them!"}]}
execute @s[scores={random2=230}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fTHE UNIVERSE NEEDS ME"}]}
execute @s[scores={random2=250}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§8[ §fRaxly§8 ]: §fYou are SO STUPID, you are ruining all your chances!!!"}]}


playanimation @s[scores={random2=80}] animation.wave.boss_angry