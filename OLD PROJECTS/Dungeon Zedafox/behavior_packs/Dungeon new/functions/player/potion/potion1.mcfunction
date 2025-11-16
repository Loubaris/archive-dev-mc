scoreboard players add @s potion1 1

clear @s[scores={potion1=200}] zedafox:potion1_empty1
give @s[scores={potion1=200}] zedafox:potion1_empty2

clear @s[scores={potion1=400}] zedafox:potion1_empty2
give @s[scores={potion1=400}] zedafox:potion1_empty3

clear @s[scores={potion1=600}] zedafox:potion1_empty3
give @s[scores={potion1=600}] zedafox:potion1

scoreboard players set @s[scores={potion1=601}] potion1 0