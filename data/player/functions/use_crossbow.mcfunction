give @s arrow

data merge entity @e[type=arrow,nbt=!{inGround:1b},distance=..3,limit=1,sort=nearest] {damage:7,pickup:2b}

scoreboard players reset @s UseCrossbow
