playsound talkywalky @a ~ ~ ~

tag @s[x=3009,y=50,z=3,r=30] add signal
tag @s[x=3987,y=50,z=-9,r=10] add signal
tag @s[x=4020,y=66,z=-27,r=10] add signal
tag @s[x=4034,y=72,z=-27,r=5] add signal
tag @s[x=6024,y=57,z=7,r=5] add signal
tag @s[x=6031,y=59,z=-52,r=5] add signal
tag @s[x=6146,y=66,z=-37,r=10] add signal
tag @s[x=6147,y=65,z=-94,r=15] add signal
tag @s[x=6149,y=67,z=-120,r=5] add signal
tag @s[x=381,y=108,z=495,r=30] add signal
tag @s[x=3986,y=50,z=-37,r=10] add signal
tag @s[x=1992,y=99,z=-28,r=5] add signal
tag @s[x=1948,y=98,z=-1,r=15] add signal
tag @s[x=1876,y=101,z=-42,r=15] add signal
tag @s[x=6166,y=114,z=11,r=20] add signal


// ACID

tellraw @s[x=1992,y=99,z=-28,r=5] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Hello? I don't think you need me, just go straight ahead!"}]}
tellraw @s[x=1948,y=98,z=-1,r=15] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Fight the monsters!"}]}
tellraw @s[x=1876,y=101,z=-42,r=15] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Dodge the acid puddles!"}]}


// MUSHROOM

tellraw @s[x=3009,y=50,z=3,r=30] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Oh, a problem? You can bounce on the big blue mushrooms."}]}

// IRONMET

tellraw @s[x=3987,y=50,z=-9,r=10] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Oh, a problem? Shoot the ironmets with the laser to open the door."}]}
tellraw @s[x=3986,y=50,z=-37,r=10] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Oh, a problem? You can shoot the mirror with the laser."}]}
tellraw @s[x=4020,y=66,z=-27,r=10] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Shoot the ironmet over the door, and take the ladder in front of you!"}]}
tellraw @s[x=4034,y=72,z=-27,r=5] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Remember, you can shoot the mirror!"}]}

// SPACESHIP

tellraw @s[x=6024,y=57,z=7,r=5] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Take the spaceship and shoot at the octopus with your laser!"}]}
tellraw @s[x=6031,y=59,z=-52,r=5] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Shoot the ironmets to open the door!"}]}
tellraw @s[x=6146,y=66,z=-37,r=10] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2There is an ironmet above when you take the spaceship, shoot it!"}]}
tellraw @s[x=6147,y=65,z=-94,r=15] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2There is an ironmet hidden in the left room!"}]}
tellraw @s[x=6149,y=67,z=-120,r=5] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Shoot the ironmets behind the walls!"}]}

tellraw @s[x=6166,y=114,z=11,r=20] {"rawtext":[{"text":"§8[ §9Grayson §8]: §2Shoot Raxly with your laser!"}]}

// VILLAGE

tellraw @s[x=381,y=108,z=495,r=30] {"rawtext":[{"text":"§7§oYou can't call Grayson, you are in the village!"}]}

tellraw @s[tag=!signal] {"rawtext":[{"text":"§7§oNo signal..."}]}
tag @s remove signal

