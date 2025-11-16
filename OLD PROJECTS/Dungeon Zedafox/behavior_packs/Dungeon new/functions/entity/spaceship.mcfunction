// SIDE 1

execute @s[scores={time=1..4,side=1}] ~ ~ ~ tp @s ~0.1 ~ ~ -90
execute @s[scores={time=5..9,side=1}] ~ ~ ~ tp @s ~0.15 ~ ~ -90
execute @s[scores={time=10..14,side=1}] ~ ~ ~ tp @s ~0.2 ~ ~ -90
execute @s[scores={time=15..19,side=1}] ~ ~ ~ tp @s ~0.25 ~ ~ -90
execute @s[scores={time=20..24,side=1}] ~ ~ ~ tp @s ~0.3 ~ ~ -90
execute @s[scores={time=25..29,side=1}] ~ ~ ~ tp @s ~0.35 ~ ~ -90
execute @s[scores={time=30..34,side=1}] ~ ~ ~ tp @s ~0.4 ~ ~ -90
execute @s[scores={time=35..,side=1}] ~ ~ ~ tp @s ~0.45 ~ ~ -90

// SIDE 2

execute @s[scores={time=1..4,side=2}] ~ ~ ~ tp @s ~-0.1 ~ ~ 90
execute @s[scores={time=5..9,side=2}] ~ ~ ~ tp @s ~-0.15 ~ ~ 90
execute @s[scores={time=10..14,side=2}] ~ ~ ~ tp @s ~-0.2 ~ ~ 90
execute @s[scores={time=15..19,side=2}] ~ ~ ~ tp @s ~-0.25 ~ ~ 90
execute @s[scores={time=20..24,side=2}] ~ ~ ~ tp @s ~-0.3 ~ ~ 90
execute @s[scores={time=25..29,side=2}] ~ ~ ~ tp @s ~-0.35 ~ ~ 90
execute @s[scores={time=30..34,side=2}] ~ ~ ~ tp @s ~-0.4 ~ ~ 90
execute @s[scores={time=35..,side=2}] ~ ~ ~ tp @s ~-0.45 ~ ~ 90

// SIDE 3

execute @s[scores={time=1..4,side=3}] ~ ~ ~ tp @s ~ ~ ~0.1 0
execute @s[scores={time=5..9,side=3}] ~ ~ ~ tp @s ~ ~ ~0.15 0
execute @s[scores={time=10..14,side=3}] ~ ~ ~ tp @s ~ ~ ~0.2 0
execute @s[scores={time=15..19,side=3}] ~ ~ ~ tp @s ~ ~ ~0.25 0
execute @s[scores={time=20..24,side=3}] ~ ~ ~ tp @s ~ ~ ~0.3 0
execute @s[scores={time=25..29,side=3}] ~ ~ ~ tp @s ~ ~ ~0.35 0
execute @s[scores={time=30..34,side=3}] ~ ~ ~ tp @s ~ ~ ~0.4 0
execute @s[scores={time=35..,side=3}] ~ ~ ~ tp @s ~ ~ ~0.45 0

// SIDE 4

execute @s[scores={time=1..4,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.1 180
execute @s[scores={time=5..9,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.15 180
execute @s[scores={time=10..14,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.2 180
execute @s[scores={time=15..19,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.25 180
execute @s[scores={time=20..24,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.3 180
execute @s[scores={time=25..29,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.35 180
execute @s[scores={time=30..34,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.4 180
execute @s[scores={time=35..,side=4}] ~ ~ ~ tp @s ~ ~ ~-0.45 180


// SIDE 5

execute @s[scores={time=1..4,side=5}] ~ ~ ~ tp @s ~-0.1 ~0.1 ~ 90
execute @s[scores={time=5..9,side=5}] ~ ~ ~ tp @s ~-0.15 ~0.15 ~ 90
execute @s[scores={time=10..14,side=5}] ~ ~ ~ tp @s ~-0.2 ~0.2 ~ 90
execute @s[scores={time=15..19,side=5}] ~ ~ ~ tp @s ~-0.25 ~0.25 ~ 90
execute @s[scores={time=20..24,side=5}] ~ ~ ~ tp @s ~-0.3 ~0.3 ~ 90
execute @s[scores={time=25..29,side=5}] ~ ~ ~ tp @s ~-0.35 ~0.35 ~ 90
execute @s[scores={time=30..34,side=5}] ~ ~ ~ tp @s ~-0.4 ~0.4 ~ 90
execute @s[scores={time=35..,side=5}] ~ ~ ~ tp @s ~-0.45 ~0.45 ~ 90

scoreboard players add @s time 1