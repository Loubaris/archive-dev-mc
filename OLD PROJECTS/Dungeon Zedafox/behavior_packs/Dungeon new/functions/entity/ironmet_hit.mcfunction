playanimation @s animation.wave.ironmet_hit
particle minecraft:critical_hit_emitter ~ ~2 ~
playsound ironmet @a ~ ~ ~
execute @e[family=connector,c=1] ~ ~ ~ function entity/orb_impact