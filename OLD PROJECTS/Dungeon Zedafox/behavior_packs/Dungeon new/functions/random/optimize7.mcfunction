scoreboard players remove @s hammer 1
execute @s[scores={hammer=1..2}] ~ ~ ~ effect @e[family=monster,type=!zombie,r=5] instant_damage 1 1 true
execute @s[scores={hammer=1..2}] ~ ~ ~ effect @e[family=monster,r=5] fatal_poison 1 255 true
execute @s[scores={hammer=0}] ~ ~ ~ effect @e[family=monster,r=5] fatal_poison 0 0
execute @s[scores={hammer=0}] ~ ~ ~ effect @e[family=monster,type=!zombie,r=5] instant_damage 0 0