scoreboard players add @e[type=zedafox:help] insist 1

execute @s[type=zedafox:help,scores={insist=1}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 57
execute @s[type=zedafox:help,scores={insist=2}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 58
execute @s[type=zedafox:help,scores={insist=3}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 59
execute @s[type=zedafox:help,scores={insist=4}] ~ ~ ~ scoreboard players set @e[type=zedafox:wizard] dialog 60

execute @e[type=zedafox:wizard] ~ ~ ~ function dialog

tellraw @a {"rawtext":[{"text":"§7§oYou don't give the crystals."}]}

scoreboard players set @a forced 0