scoreboard players add @p[tag=trainingroom,x=192,y=11,z=960,r=100] trainingtime 1
gamerule dotiledrops false
gamerule domobloot false
gamerule domobspawning false
scoreboard players add @p[tag=trainingroom,tag=!reset,x=192,y=11,z=960,r=100] swordused 0
tag @p[tag=trainingroom,tag=!reset,x=192,y=11,z=960,r=100] add reset

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=1}] ~ ~ ~ scoreboard players set @p trtp 0
execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=30}] ~ ~ ~ title @p actionbar §7[§cGENERATING KIT§7]

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=55}] ~ ~ ~ playsound random.orb @p

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=60}] ~ ~ ~ playsound random.orb @p

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=65}] ~ ~ ~ playsound random.orb @p

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=70}] ~ ~ ~ playsound random.orb @p

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=75}] ~ ~ ~ playsound random.orb @p

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=80}] ~ ~ ~ playsound random.orb @p

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=80}] ~ ~ ~ scoreboard players random @p random 1 8

execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=85}] ~ ~ ~ tag @s add givekit
execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=85}] ~ ~ ~ playsound 4ks.music.tutorial @a[x=192,y=11,z=960,r=70]
execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=85}] ~ ~ ~ title @p actionbar §aStart with a random kit and defeat all the enemies
execute @a[tag=trainingroom,x=192,y=11,z=960,r=100,scores={trainingtime=85}] ~ ~ ~ tag @s remove trainingroom

execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=1}] ~ ~ ~ give @p ninja:ninja_sword

execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=2}] ~ ~ ~ give @p ninja:explosion_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=2}] ~ ~ ~ give @p ninja:shulker_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=2}] ~ ~ ~ give @p ninja:explosion_n_startwo 32


execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=3}] ~ ~ ~ give @p ninja:asteroid_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=3}] ~ ~ ~ give @p ninja:chicken_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=3}] ~ ~ ~ give @p ninja:swift_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=3}] ~ ~ ~ give @p ninja:explosion_n_startwo 32

execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=4}] ~ ~ ~ give @p ninja:vortex_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=4}] ~ ~ ~ give @p ninja:creeper_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=4}] ~ ~ ~ give @p ninja:explosion_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=4}] ~ ~ ~ give @p ninja:lightning_n_star 32
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=4}] ~ ~ ~ give @p ninja:shulker_sword



execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=5}] ~ ~ ~ give @p ninja:fire_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=5}] ~ ~ ~ give @p ninja:asteroid_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=5}] ~ ~ ~ give @p ninja:fire_n_star 32
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=5}] ~ ~ ~ give @p ninja:explosion_sword



execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=6}] ~ ~ ~ give @p ninja:lightning_n_star 16
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=6}] ~ ~ ~ give @p ninja:n_star 16
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=6}] ~ ~ ~ give @p ninja:explosion_n_star 16
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=6}] ~ ~ ~ give @p ninja:explosion_n_startwo 8
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=6}] ~ ~ ~ give @p ninja:explosion_n_starthree 1
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=6}] ~ ~ ~ give @p ninja:fire_n_star 16

execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=7}] ~ ~ ~ give @p ninja:shulker_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=7}] ~ ~ ~ give @p ninja:tank_hammer
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=7}] ~ ~ ~ give @p ninja:chicken_sword
execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=7}] ~ ~ ~ give @p ninja:n_star 16

execute @a[tag=givekit,x=192,y=11,z=960,r=100,scores={random=8}] ~ ~ ~ give @p ninja:explosion_n_starthree 10

replaceitem entity @a[tag=givekit,x=192,y=11,z=960,r=100] slot.armor.head 1 glass


execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 979


execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 169 8 941


execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 941
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 941


execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 979
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon skeleton 218 8 979

execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 942
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 942
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 942
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 942
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 942
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976

execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon zombie 193 5 976

execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 158 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 158 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 158 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 158 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 158 16 961


execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 228 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 228 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 228 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 228 16 961
execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ summon vindicator 228 16 961

execute @a[tag=givekit,x=192,y=11,z=960,r=100] ~ ~ ~ tag @p add trainingdetect
