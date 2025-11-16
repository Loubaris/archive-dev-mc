execute @e[type=zedafox:acid_projectile] ~ ~ ~ function entity/acid_projectile
execute @e[type=zedafox:acid_box] ~ ~ ~ function entity/acid_box
execute @e[family=acid_snake] ~ ~ ~ function entity/acid_snake
execute @e[type=zedafox:acid_boss] ~ ~ ~ function entity/acid_boss

// ACID

execute @e[family=monster] ~ ~ ~ detect ~ ~ ~ zedafox:acid 0 function entity/acid
execute @e[family=monster,type=!zedafox:myzombie,type=zedafox:myzombie_frozen] ~ ~ ~ detect ~ ~ ~ zedafox:acid 0 kill @s

execute @e[type=zedafox:skeleton1] ~ ~ ~ function entity/skeleton1 