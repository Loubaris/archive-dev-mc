execute @s[scores={is_walking=1..}] ~ ~ ~ function entity/is_walking
execute @s[scores={is_walking2=1..}] ~ ~ ~ function entity/is_walking2
execute @s[scores={is_walking3=1..}] ~ ~ ~ function entity/is_walking3
execute @s[scores={is_running=1..}] ~ ~ ~ function entity/is_running
execute @s[scores={is_running2=1..}] ~ ~ ~ function entity/is_running2
execute @s[scores={is_running3=1..}] ~ ~ ~ function entity/is_running3


execute @s[tag=chat] ~ ~ ~ particle zedafox:chat ~ ~2.8 ~


scoreboard players set @s[name=grayson,tag=meetgrayson,tag=!verified] timedialog 1
tag @s[name=grayson,tag=meetgrayson,tag=!verified] add verified

execute @s[name=kaley,tag=!chat,tag=!is_talking,tag=!is_shopping] ~ ~ ~ title @a[r=7] actionbar Click on Kaley to open the store interface.


// DIALOG

execute @s[name=Grayson,scores={timedialog=1..}] ~ ~ ~ function dialog/grayson
execute @s[name=Kaley,scores={timedialog=1..}] ~ ~ ~ function dialog/kaley
execute @s[name=Julia,scores={timedialog=1..}] ~ ~ ~ function dialog/julia
execute @s[name=Bruno,scores={timedialog=1..}] ~ ~ ~ function dialog/bruno
execute @s[name=Radley,scores={timedialog=1..}] ~ ~ ~ function dialog/radley
execute @s[name=TheblueMan,scores={timedialog=1..}] ~ ~ ~ function dialog/theblueman

execute @s[family=raxly,scores={timedialog=1..}] ~ ~ ~ function dialog/raxly
execute @s[family=wizard,scores={timedialog=1..}] ~ ~ ~ function dialog/thewizard