execute @a[lm=5,l=100] ~ ~ ~ scoreboard players set @e[type=zedafox:help,scores={levelcheck=4}] levelcheck 5
execute @a[lm=3,l=100] ~ ~ ~ scoreboard players set @e[type=zedafox:help,scores={levelcheck=2}] levelcheck 3
execute @a[lm=1,l=100] ~ ~ ~ scoreboard players set @e[type=zedafox:help,scores={levelcheck=0}] levelcheck 1

execute @e[type=zedafox:help,scores={levelcheck=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 102
execute @e[type=zedafox:help,scores={levelcheck=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
scoreboard players set @e[type=zedafox:help,scores={levelcheck=1}] levelcheck 2


execute @e[type=zedafox:help,scores={levelcheck=3}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 103
execute @e[type=zedafox:help,scores={levelcheck=3}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
scoreboard players set @e[type=zedafox:help,scores={levelcheck=3}] levelcheck 4

execute @e[type=zedafox:help,scores={levelcheck=5}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 104
execute @e[type=zedafox:help,scores={levelcheck=5}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] timedialog 1
scoreboard players set @e[type=zedafox:help,scores={levelcheck=5}] levelcheck 6




