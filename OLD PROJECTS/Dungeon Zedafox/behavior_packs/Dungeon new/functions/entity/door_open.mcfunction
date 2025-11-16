execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ scoreboard players add @e[type=zedafox:help] timedoor 1

execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ playanimation @e[type=zedafox:wood_door] animation.wave.dooropen2
execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ function transition/size1
execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ playsound woodopendoor @a

// MUSIQUE MAISON

execute @s[x=385,y=112,z=511,r=2] ~ ~ ~ stopsound @a village2
execute @s[x=385,y=112,z=511,r=2] ~ ~ ~ stopsound @a urgency
execute @s[x=385,y=112,z=511,r=2] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 5
execute @s[x=385,y=112,z=511,r=2] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 1

// MUSIQUE VILLAGE

execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ stopsound @a sneak
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ stopsound @a hide
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 0
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0

execute @s[x=385,y=112,z=511,r=2] ~ ~ ~ setblock 371 58 494 redstone_block
execute @s[x=385,y=112,z=511,r=2] ~ ~ ~ scoreboard players set @a teleportation 15
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ scoreboard players set @a teleportation2 15
execute @s[x=443,y=65,z=542,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking] ~ ~ ~ setblock 371 58 494 redstone_block

// THE WIZARD

execute @e[type=zedafox:help,tag=!meetwizard] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 32
execute @e[type=zedafox:help,tag=!meetwizard] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
tag @e[type=zedafox:help] add meetwizard

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @a ~ ~ ~ execute @s[m=c] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 37
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @a ~ ~ ~ execute @s[m=c] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1

execute @e[type=zedafox:help,tag=is_talking] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cIt's rude to leave when someone is talking to you!"}]}




// TIME DOOR

execute @e[type=zedafox:help,scores={timedoor=1}] ~ ~ ~ effect @e[name=theblueman] invisibility 999999 255 true

execute @e[type=zedafox:help,scores={timedoor=2}] ~ ~ ~ effect @e[name=theblueman] invisibility 0 0 true
execute @e[type=zedafox:help,scores={timedoor=2}] ~ ~ ~ tag @e[name=theblueman] add chat
execute @e[type=zedafox:help,scores={timedoor=2}] ~ ~ ~ scoreboard players set @e[name=theblueman] dialog 31

execute @e[type=zedafox:help,scores={timedoor=3..}] ~ ~ ~ effect @e[name=theblueman] invisibility 999999 255 true
execute @e[type=zedafox:help,scores={timedoor=3..}] ~ ~ ~ tag @e[name=theblueman] remove chat
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=2}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 36
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=2}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1

// I KNOW YOU

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=3}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 43
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=3}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1

// WRONGDATE


// HEADACHE

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=4}] ~ ~ ~ clone 439 64 555 462 75 572 439 64 534
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=4}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 55
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=4}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1

// REVENGE

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=5}] ~ ~ ~ stopsound @a sneak
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=5}] ~ ~ ~ execute @a ~ ~ ~ playsound ending @s ~ ~ ~ 1 1
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=5}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 39
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=5}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1


// RICK AND MORTY

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=7}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] easter_egg 1



// GIVE ME THE CRYSTALS

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 53
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @s insist 0


// KALEY RELATIONSHIP

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=lovewaiting] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 98
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=lovewaiting] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1


// I KNOW WHAT YOU DID

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=screwup] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 73
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=screwup] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=screwup] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=screwup] ~ ~ ~ stopsound @a sneak


// I HATE RAXLY

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=not-screwup] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 100
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=not-screwup] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=not-screwup] ~ ~ ~ scoreboard players set @e[type=zedafox:help] musictime 0
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,tag=not-screwup] ~ ~ ~ stopsound @a sneak



// NEW MISSION

execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ scoreboard players set @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1}] dialog 212
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ scoreboard players set @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1}] timedialog 1

execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ scoreboard players set @e[type=zedafox:help,tag=!is_talking,scores={timedoor=2001}] dialog 212
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ scoreboard players set @e[type=zedafox:help,tag=!is_talking,scores={timedoor=2001}] timedialog 1



// ENDING

execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @a teleportation2 0
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @a teleportation3 65
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1001}] ~ ~ ~ function transition/size6
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1001}] ~ ~ ~ function character_tp2
execute @s[x=443,y=65,z=542,c=1,r=2] ~ ~ ~ execute @e[type=zedafox:help,tag=!is_talking,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] dialog 208



// OBJECTIVE REMOVE

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=1}] ~ ~ ~ function objective/reset
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=1001}] ~ ~ ~ function objective/reset
execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=2001}] ~ ~ ~ function objective/reset

execute @s[x=385,y=112,z=511,r=5] ~ ~ ~ execute @e[type=zedafox:help,scores={timedoor=1001}] ~ ~ ~ scoreboard players set @e[type=zedafox:help] song 9

