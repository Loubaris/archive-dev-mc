// RAXLY PROJECTILE

execute @e[type=zedafox:raxly] ~ ~ ~ function entity/raxly
execute @e[type=zedafox:raxly_projectile] ~ ~ ~ function entity/raxly_projectile
execute @e[type=zedafox:purplebomb,tag=ignited] ~ ~ ~ function entity/purplebomb

execute @e[type=zedafox:crocroc] ~ ~ ~ function entity/crocroc

execute @e[scores={electrification=1..10}] ~ ~ ~ function entity/electrification_player

// CHARACTER

execute @e[family=character] ~ ~ ~ function entity/character

// PLAYER

execute @a ~ ~ ~ function player/main3

execute @e[type=zedafox:help] ~ ~ ~ function entity/help2


// LASER

execute @e[type=zedafox:laser] ~ ~ ~ function laser/laser3