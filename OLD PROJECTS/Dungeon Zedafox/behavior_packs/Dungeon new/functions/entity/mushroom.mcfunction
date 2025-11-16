execute @a[y=~1.25,r=2,scores={mushroom=0}] ~ ~ ~ playsound bounce @a ~ ~ ~
execute @a[y=~1.25,r=2] ~ ~ ~ effect @s levitation 1 20 true
scoreboard players set @a[y=~1.25,r=2,scores={mushroom=0}] mushroom 1