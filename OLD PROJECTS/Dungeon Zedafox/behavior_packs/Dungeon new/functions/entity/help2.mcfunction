execute @s[scores={musictime=1..}] ~ ~ ~ function music/main


// CUTSCENE

execute @s[scores={cutscene12=1..200}] ~ ~ ~ function cutscene/almostfinal/main
execute @s[scores={cutscene13=1..1000}] ~ ~ ~ function cutscene/raxly_death/main

// TALKWALKY DIALOG

execute @s[scores={timedialog=1..}] ~ ~ ~ function timedialog2


// BOSS FIGHTED AND START CUTSCENE

scoreboard players remove @s[scores={deathboss=1..}] deathboss 1

execute @s[scores={deathboss=1,dungeon=4}] ~ ~ ~ function cutscene/raxly_death/start

