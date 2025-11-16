scoreboard players add @s time2 1

// OUVERTURE

playanimation @s[scores={time2=1}] animation.wave.laserlight_open
execute @s[scores={time2=1}] ~ ~ ~ playsound gear @a ~ ~ ~ 0.5 1
execute @s[scores={time2=1}] ~ ~ ~ playsound charge @a ~ ~ ~

// LASER

playanimation @s[scores={time2=40}] animation.wave.laserlight_shoot
execute @s[scores={time2=40}] ~ ~ ~ playsound laser_impact @a ~ ~ ~

// KILL

execute @s[scores={time2=40..95}] ~ ~ ~ kill @a[y=~,dy=-50,x=~,dx=0,z=~,dz=0,c=1]

// RESET

scoreboard players set @s[scores={time2=180}] time2 0