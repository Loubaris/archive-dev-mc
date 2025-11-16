tellraw @p {"rawtext":[{"text":"§7You gave a hug to Turnip!"}]}
tellraw @p {"rawtext":[{"text":"§aTurnip is now §lHappy§r§a!"}]}

particle zedafox:heart_2 ~ ~1 ~
particle zedafox:heart_2 ~ ~2 ~
particle zedafox:heart_2 ~2 ~1 ~
particle zedafox:heart_2 ~ ~1 ~2
particle zedafox:heart_2 ~-2 ~1 ~
particle zedafox:heart_2 ~ ~1 ~-2

playsound hug @p
playsound hug2 @p

playanimation @s animation.wave.vegetable_eat

