scoreboard objectives add luck dummy
scoreboard objectives add time dummy

scoreboard players random @e[type=!player,type=!item,type=!armor_stand,type=!minecart,type=!boat,type=!4ks:change,type=!arrow,type=!snowball,name=!Fireball,type=!splash_potion] luck -12 395


execute @e[scores={luck=0..}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~ ~
execute @e[scores={luck=0..}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.3 ~
execute @e[scores={luck=0..}] ~ ~ ~ particle minecraft:cauldron_explosion_emitter ~ ~0.5 ~
execute @e[scores={luck=0..}] ~ ~ ~ effect @s invisibility 2 255 true


execute @e[scores={luck=-6}] ~ ~ ~ summon wither
execute @e[scores={luck=-5..-3}] ~ ~ ~ summon ravager
execute @e[scores={luck=-2}] ~ ~ ~ summon warden
execute @e[scores={luck=-1..0}] ~ ~ ~ summon evocation_illager
execute @e[scores={luck=-8..-7}] ~ ~ ~ summon elder_guardian
execute @e[scores={luck=-10..-9}] ~ ~ ~ summon witch
execute @e[scores={luck=-12..-11}] ~ ~ ~ summon ghast

execute @e[scores={luck=1..5}] ~ ~ ~ summon zombie
execute @e[scores={luck=6..10}] ~ ~ ~ summon creeper
execute @e[scores={luck=11..15}] ~ ~ ~ summon skeleton
execute @e[scores={luck=16..20}] ~ ~ ~ summon wither_skeleton
execute @e[scores={luck=21..25}] ~ ~ ~ summon silverfish
execute @e[scores={luck=26..30}] ~ ~ ~ summon magma_cube
execute @e[scores={luck=31..35}] ~ ~ ~ summon slime
execute @e[scores={luck=36..39}] ~ ~ ~ summon sheep
execute @e[scores={luck=40..44}] ~ ~ ~ summon husk
execute @e[scores={luck=45..49}] ~ ~ ~ summon stray
execute @e[scores={luck=50..54}] ~ ~ ~ summon guardian
execute @e[scores={luck=55..59}] ~ ~ ~ summon shulker
execute @e[scores={luck=60..64}] ~ ~ ~ summon enderman
execute @e[scores={luck=65..69}] ~ ~ ~ summon iron_golem
execute @e[scores={luck=70..74}] ~ ~ ~ summon snow_golem
execute @e[scores={luck=75..79}] ~ ~ ~ summon wolf
execute @e[scores={luck=80..84}] ~ ~ ~ summon spider
execute @e[scores={luck=85..89}] ~ ~ ~ summon llama
execute @e[scores={luck=90..94}] ~ ~ ~ summon cat
execute @e[scores={luck=95..99}] ~ ~ ~ summon sheep
execute @e[scores={luck=100..104}] ~ ~ ~ summon pig
execute @e[scores={luck=105..109}] ~ ~ ~ summon cow
execute @e[scores={luck=110..114}] ~ ~ ~ summon chicken
execute @e[scores={luck=115..119}] ~ ~ ~ summon mooshroom
execute @e[scores={luck=120..124}] ~ ~ ~ summon villager
execute @e[scores={luck=125..129}] ~ ~ ~ summon squid
execute @e[scores={luck=130..134}] ~ ~ ~ summon bat
execute @e[scores={luck=135..139}] ~ ~ ~ summon rabbit
execute @e[scores={luck=140..144}] ~ ~ ~ summon horse
execute @e[scores={luck=145..149}] ~ ~ ~ summon parrot
execute @e[scores={luck=150..154}] ~ ~ ~ summon vindicator
execute @e[scores={luck=155..159}] ~ ~ ~ summon parrot
execute @e[scores={luck=160..164}] ~ ~ ~ summon warden
execute @e[scores={luck=165..169}] ~ ~ ~ summon pufferfish
execute @e[scores={luck=170..174}] ~ ~ ~ summon axolotl
execute @e[scores={luck=175..179}] ~ ~ ~ summon allay
execute @e[scores={luck=180..184}] ~ ~ ~ summon piglin
execute @e[scores={luck=185..189}] ~ ~ ~ summon piglin_brute
execute @e[scores={luck=190..194}] ~ ~ ~ summon sheep
execute @e[scores={luck=195..199}] ~ ~ ~ summon pig
execute @e[scores={luck=200..204}] ~ ~ ~ summon hoglin
execute @e[scores={luck=205..209}] ~ ~ ~ summon bee
execute @e[scores={luck=210..214}] ~ ~ ~ summon cave_spider
execute @e[scores={luck=215..219}] ~ ~ ~ summon dolphin
execute @e[scores={luck=220..224}] ~ ~ ~ summon goat
execute @e[scores={luck=225..229}] ~ ~ ~ summon panda
execute @e[scores={luck=230..234}] ~ ~ ~ summon polar_bear
execute @e[scores={luck=235..239}] ~ ~ ~ summon mooshroom
execute @e[scores={luck=240..244}] ~ ~ ~ summon panda
execute @e[scores={luck=245..249}] ~ ~ ~ summon zombie
execute @e[scores={luck=250..254}] ~ ~ ~ summon pig
execute @e[scores={luck=255..259}] ~ ~ ~ summon drowned
execute @e[scores={luck=260..264}] ~ ~ ~ summon bee
execute @e[scores={luck=265..269}] ~ ~ ~ summon endermite
execute @e[scores={luck=270..274}] ~ ~ ~ summon llama
execute @e[scores={luck=275..279}] ~ ~ ~ summon iron_golem
execute @e[scores={luck=280..284}] ~ ~ ~ summon guardian
execute @e[scores={luck=285..289}] ~ ~ ~ summon husk
execute @e[scores={luck=290..294}] ~ ~ ~ summon magma_cube
execute @e[scores={luck=295..299}] ~ ~ ~ summon phantom
execute @e[scores={luck=300..304}] ~ ~ ~ summon piglin_brute
execute @e[scores={luck=305..309}] ~ ~ ~ summon pillager
execute @e[scores={luck=310..314}] ~ ~ ~ summon goat
execute @e[scores={luck=315..319}] ~ ~ ~ summon shulker
execute @e[scores={luck=320..324}] ~ ~ ~ summon silverfish
execute @e[scores={luck=325..329}] ~ ~ ~ summon skeleton
execute @e[scores={luck=330..334}] ~ ~ ~ summon skeleton_horse
execute @e[scores={luck=335..339}] ~ ~ ~ summon slime
execute @e[scores={luck=340..344}] ~ ~ ~ summon sheep
execute @e[scores={luck=345..349}] ~ ~ ~ summon stray
execute @e[scores={luck=350..354}] ~ ~ ~ summon vex
execute @e[scores={luck=355..359}] ~ ~ ~ summon vindicator
execute @e[scores={luck=360..364}] ~ ~ ~ summon villager
execute @e[scores={luck=365..369}] ~ ~ ~ summon pig
execute @e[scores={luck=370..374}] ~ ~ ~ summon zoglin
execute @e[scores={luck=375..379}] ~ ~ ~ summon zombie_villager
execute @e[scores={luck=380..384}] ~ ~ ~ summon frog
execute @e[scores={luck=385..389}] ~ ~ ~ summon salmon
execute @e[scores={luck=390..394}] ~ ~ ~ summon turtle
execute @e[scores={luck=395..399}] ~ ~ ~ summon tadpole
execute @e[scores={luck=400..404}] ~ ~ ~ summon donkey
execute @e[scores={luck=405..409}] ~ ~ ~ summon glow_squid
execute @e[scores={luck=410..414}] ~ ~ ~ summon fox
execute @e[scores={luck=415..419}] ~ ~ ~ summon mule
execute @e[scores={luck=420..424}] ~ ~ ~ summon strider
execute @e[scores={luck=425..429}] ~ ~ ~ summon horse
execute @e[scores={luck=430..434}] ~ ~ ~ summon wandering_trader
execute @e[scores={luck=435..439}] ~ ~ ~ summon squid
execute @e[scores={luck=440..444}] ~ ~ ~ summon cod