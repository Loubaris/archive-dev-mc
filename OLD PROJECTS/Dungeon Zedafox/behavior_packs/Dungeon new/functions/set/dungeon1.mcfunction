// DESPAWN OLD COIN

event entity @e[type=zedafox:coin] to_death
kill @e[type=zedafox:myzombie]
kill @e[type=zedafox:acid_box]
kill @e[type=zedafox:acid_boss]

// SPAWN COIN

summon zedafox:coin 1975 99 0
summon zedafox:coin 1972 99 0
summon zedafox:coin 1969 99 0

summon zedafox:coin 1946 98 1.9
summon zedafox:coin 1946 98 0.25
summon zedafox:coin 1946 98 -2
summon zedafox:coin 1948 98 1.9
summon zedafox:coin 1948 98 0.25
summon zedafox:coin 1948 98 -2

summon zedafox:coin 1910 91 2
summon zedafox:coin 1912 91 2
summon zedafox:coin 1914 91 2

summon zedafox:coin 1910 91 16
summon zedafox:coin 1912 91 16
summon zedafox:coin 1914 91 16

summon zedafox:coin 1881 101 -4
summon zedafox:coin 1884 101 -4
summon zedafox:coin 1887 101 -4

summon zedafox:coin 1886 101 34
summon zedafox:coin 1884 101 34
summon zedafox:coin 1886 101 32
summon zedafox:coin 1884 101 32

summon zedafox:coin 1863 101 -45
summon zedafox:coin 1865 101 -45
summon zedafox:coin 1867 101 -45

summon zedafox:coin 1880 101 -51
summon zedafox:coin 1882 101 -51
summon zedafox:coin 1884 101 -51

summon zedafox:coin 1882 101 -38
summon zedafox:coin 1884 101 -38
summon zedafox:coin 1882 101 -40
summon zedafox:coin 1884 101 -40

summon zedafox:coin 1890 101 -88
summon zedafox:coin 1890 101 -90


// ZOMBIE SPAWN

summon zedafox:myzombie 1993 99 1
summon zedafox:myzombie 1990 99 -3

summon zedafox:myzombie 1957 99 0
summon zedafox:myzombie 1949 98 3
summon zedafox:myzombie 1944 98 0
summon zedafox:myzombie 1948 98 -5

summon zedafox:myzombie 1922 91 16
summon zedafox:myzombie 1916 91 16
summon zedafox:myzombie 1907 91 16
summon zedafox:myzombie 1919 91 2
summon zedafox:myzombie 1922 99 20
summon zedafox:myzombie 1911 99 0

summon zedafox:myzombie 1888 99 20
summon zedafox:myzombie 1884 99 20
summon zedafox:myzombie 1880 99 20
summon zedafox:myzombie 1889 101 -4
summon zedafox:myzombie 1879 101 -4

summon zedafox:myzombie 1878 101 -39
summon zedafox:myzombie 1872 101 -50
summon zedafox:myzombie 1879 101 -58

summon zedafox:myzombie 1880 101 -83
summon zedafox:myzombie 1878 101 -88


// ACID BOX SPAWN

summon zedafox:acid_box 1884 99 13
summon zedafox:acid_box 1872 101 -39
summon zedafox:acid_box 1872.02 101 -77.02


// BOSS SPAWN

summon zedafox:acid_boss 1912.93 101 -93.96 skin4

execute @e[type=zedafox:acid_boss] ~ ~ ~ tp @s ~ ~ ~ 90 