// DESPAWN OLD COIN

event entity @e[type=zedafox:coin] to_death
event entity @e[type=zedafox:boss] to_death
kill @e[type=zedafox:raxly_tp]

// SPAWN COIN

summon zedafox:coin 6020 54 15
summon zedafox:coin 6020 54 13
summon zedafox:coin 6020 54 11

summon zedafox:coin 6024 56 -51

summon zedafox:coin 6022 57 -57
summon zedafox:coin 6024 57 -57
summon zedafox:coin 6026 57 -57

summon zedafox:coin 6123 60 -56
summon zedafox:coin 6123 60 -54

summon zedafox:coin 6124 66 -44
summon zedafox:coin 6122 66 -44
summon zedafox:coin 6124 66 -46
summon zedafox:coin 6122 66 -46

summon zedafox:coin 6115 62 -98
summon zedafox:coin 6113 62 -98
summon zedafox:coin 6115 62 -96
summon zedafox:coin 6113 62 -96

summon zedafox:coin 6149 63 -106
summon zedafox:coin 6151 63 -106

summon zedafox:coin 6072 71 -116
summon zedafox:coin 6066 73 -123


// RAXLY

summon zedafox:boss 6166 117 4


// RAXLY CHAT

scoreboard players set @e[type=zedafox:boss] dialog 85
execute @e[type=zedafox:help,scores={partner=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:boss] dialog 86


// SPAWN TP RAXLY

summon zedafox:raxly_tp 6157 116 10
summon zedafox:raxly_tp 6155 120 4
summon zedafox:raxly_tp 6160 119 5
summon zedafox:raxly_tp 6166 117 1
summon zedafox:raxly_tp 6171 118 3
summon zedafox:raxly_tp 6175 118 6
summon zedafox:raxly_tp 6179 121 11
summon zedafox:raxly_tp 6176 116 15
summon zedafox:raxly_tp 6171 118 21
summon zedafox:raxly_tp 6162 119 22
summon zedafox:raxly_tp 6159 118 19


