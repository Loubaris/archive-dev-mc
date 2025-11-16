execute @s[scores={musictime=1..}] ~ ~ ~ function music/main


// CUTSCENE

execute @s[scores={cutscene2=1..480}] ~ ~ ~ function cutscene/raxly/main
execute @s[scores={cutscene3=1..780}] ~ ~ ~ function cutscene/welcome/main
execute @s[scores={cutscene4=1..200}] ~ ~ ~ function cutscene/dungeon/main
execute @s[scores={cutscene5=1..2000}] ~ ~ ~ function cutscene/story/main
execute @s[scores={cutscene6=1..2000}] ~ ~ ~ function cutscene/wizard/main
execute @s[scores={cutscene7=1..2000}] ~ ~ ~ function cutscene/getcrystal1/main
execute @s[scores={cutscene8=1..2000}] ~ ~ ~ function cutscene/quiz/main
execute @s[scores={cutscene9=1..2000}] ~ ~ ~ function cutscene/getcrystal3/main
execute @s[scores={cutscene10=1..2000}] ~ ~ ~ function cutscene/getcrystal2/main
execute @s[scores={cutscene11=1..2000}] ~ ~ ~ function cutscene/afterend/main
execute @s[scores={cutscene12=1..200}] ~ ~ ~ function cutscene/almostfinal/main
execute @s[scores={cutscene13=1..1000}] ~ ~ ~ function cutscene/raxly_death/main

execute @s[scores={cutscene=1..480}] ~ ~ ~ function cutscene/main
execute @s[scores={cutscene=481..650}] ~ ~ ~ function cutscene/main2
execute @s[scores={cutscene=651..940}] ~ ~ ~ function cutscene/main3
execute @s[scores={cutscene=941..1480}] ~ ~ ~ function cutscene/main4
execute @s[scores={cutscene=1481..1910}] ~ ~ ~ function cutscene/main5
execute @s[scores={cutscene=1911..}] ~ ~ ~ function cutscene/main6

execute @s[scores={easter_egg=1..}] ~ ~ ~ function cutscene/rickandmorty/main

// SHOP

execute @s[scores={in_shop=1}] ~ ~ ~ function shop/close
scoreboard players remove @s[scores={in_shop=1..}] in_shop 1

// TALKWALKY DIALOG

execute @s[scores={timedialog=1..}] ~ ~ ~ function timedialog2



// BOSS FIGHTED AND START CUTSCENE

scoreboard players remove @s[scores={deathboss=1..}] deathboss 1

execute @s[scores={startboss=2,dungeon=1}] ~ ~ ~ function event/boss/acidboss
execute @s[scores={startboss=2,dungeon=2}] ~ ~ ~ function event/boss/mushmanking
execute @s[scores={startboss=2,dungeon=3}] ~ ~ ~ function event/boss/neowheel

execute @s[scores={deathboss=1,dungeon=1}] ~ ~ ~ function cutscene/getcrystal1/start
execute @s[scores={deathboss=1,dungeon=2}] ~ ~ ~ function cutscene/getcrystal2/start
execute @s[scores={deathboss=1,dungeon=3}] ~ ~ ~ function cutscene/getcrystal3/start
execute @s[scores={deathboss=1,dungeon=4}] ~ ~ ~ function cutscene/raxly_death/start

execute @s[scores={startdungeon=2}] ~ ~ ~ scoreboard players set @a forced 6
execute @s[scores={startdungeon=2}] ~ ~ ~ playsound chat @a


// SPACESHIP FINAL

execute @s[scores={locationtime5=25}] ~ ~ ~ scoreboard players set @s[scores={cutscene12=0}] cutscene12 1


// ZONE

execute @s[scores={dungeon=1}] ~ ~ ~ function random/optimize17
execute @s[scores={dungeon=4}] ~ ~ ~ function random/optimize18

