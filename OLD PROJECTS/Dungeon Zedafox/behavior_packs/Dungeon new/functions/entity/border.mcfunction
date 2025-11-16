// MESSAGE

execute @s[x=355,r=1,scores={border=1}] ~ ~ ~ title @s actionbar §cYou can't leave during the cinematic
execute @s[z=485,r=1,scores={border=1}] ~ ~ ~ title @s actionbar §cYou can't leave during the cinematic
execute @s[z=502,r=1,scores={border=1}] ~ ~ ~ title @s actionbar §cYou can't leave during the cinematic

execute @s[z=485,r=1,scores={border=2}] ~ ~ ~ title @s actionbar §cSorry, you can't access this area yet.
execute @s[z=502,r=1,scores={border=2..3}] ~ ~ ~ title @s actionbar §cSorry, you can't access this area yet.



// TP - CUTSCENE RAXLY

execute @s[x=373,r=1,scores={border=1}] ~ ~ ~ tp @s ~-1 ~ ~
execute @s[x=355,r=1,scores={border=1}] ~ ~ ~ tp @s ~1 ~ ~
execute @s[z=485,r=1,scores={border=1}] ~ ~ ~ tp @s ~ ~ ~1
execute @s[z=502,r=1,scores={border=1}] ~ ~ ~ tp @s ~ ~ ~-1


// TP - BEGIN

execute @s[z=485,r=1,scores={border=2}] ~ ~ ~ tp @s ~ ~ ~1
execute @s[z=502,r=1,scores={border=2..3}] ~ ~ ~ tp @s ~ ~ ~-1