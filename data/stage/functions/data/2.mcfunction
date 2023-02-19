execute positioned 257.0 101 256.0 run function trap:crystal/summon

summon marker 230 100 270 {Tags:[Portal],data:{Group:1,Range:{X:5,Y:0,Z:0},Waves:[{System:"Message",Loop:1,Time:3,Title:'{"storage":"data:","nbt":"Stage[2].Name","color":"gold","interpret":true}'},{System:"Message",Loop:1,Time:2.5,Skip:1b,Tellraw:'[{"text":""},{"translate":"Defense Captain Zachariah","color":"yellow"},{"text":": "},{"translate":"This is a small fort on a single road."}'},{System:"Message",Loop:1,Time:2.5,Skip:1b,Tellraw:'{"translate":"Any enemy is a blow if you drop them in a magma moat, but the hoglins will be too heavy to drop."}'},{System:"Message",Loop:1,Time:3.5,Skip:1b,Tellraw:'{"translate":"Well, even if we can\'t drop that pig, we\'ll beat and roast him whole."}'},{System:"Message",Loop:1,Time:1,Skip:1b,Tellraw:'{"translate":"Start the Next Wave From the Sneak Menu!","color":"green"}'},{Enemy:[RouteGuide],Loop:1000000,Time:5,Skip:1b},{System:"NextWave",Loop:1,Time:3},{Enemy:[Zombie],Loop:8,Time:2.8},{Loop:1,Time:5},{Enemy:[Zombie],Loop:12,Time:2},{Loop:1,Time:5},{Enemy:[Zombie],Loop:15,Time:1.5},{Loop:1,Time:3},{System:"ShortInterval",Loop:1,Time:0},{Loop:1,Time:30,Skip:1b},{System:"NextWave",Loop:1,Time:3},{Enemy:[BabyRunner],Loop:5,Time:1},{Enemy:[Zombie],Loop:20,Time:1.5},{Loop:1,Time:5},{Enemy:[Husk],Loop:6,Time:2},{Loop:1,Time:7},{Enemy:[Zombie,Husk],Loop:22,Time:1.5},{Loop:1,Time:7},{Enemy:[BabyRunner],Loop:10,Time:1.5},{Loop:1,Time:4},{System:"ShortInterval",Loop:1,Time:0},{Loop:1,Time:30,Skip:1b},{System:"NextWave",Loop:1,Time:3},{Enemy:[Creeper],Loop:5,Time:1},{Loop:1,Time:7},{Enemy:[Zombie,Husk],Loop:25,Time:1.2},{Loop:1,Time:5},{Enemy:[Skeleton],Loop:8,Time:1.5},{Enemy:[Husk,Zombie,Zombie],Loop:15,Time:1},{Loop:1,Time:7},{Enemy:[Husk],Loop:11,Time:1.2},{Enemy:[Creeper,Husk,Zombie],Loop:15,Time:1},{Loop:1,Time:3},{System:"Message",Loop:1,Time:2,Skip:1b,Tellraw:'{"translate":"Start the Next Wave From the Sneak Menu!","color":"green"}'},{Enemy:[RouteGuide],Loop:1000000,Time:5,Skip:1b},{System:"NextWave",Loop:1,Time:3},{Enemy:[Hoglin],Loop:1,Time:15},{Enemy:[Zombie],Loop:20,Time:0.6},{Loop:1,Time:5},{Enemy:[BabyRunner],Loop:10,Time:0.8},{Enemy:[Zombie,Husk,Creeper],Loop:24,Time:0.8},{Loop:1,Time:5},{Enemy:[Zombie,Husk,Husk],Loop:25,Time:0.8},{Loop:1,Time:5},{System:"ShortInterval",Loop:1,Time:0},{Loop:1,Time:30,Skip:1b},{System:"NextWave",Loop:1,Time:3},{Enemy:[Husk],Loop:20,Time:0.8},{Loop:1,Time:7},{Enemy:[Creeper],Loop:10,Time:1},{Enemy:[Hoglin],Loop:1,Time:7},{Enemy:[Husk],Loop:10,Time:0.8},{Enemy:[Skeleton,Husk],Loop:10,Time:0.8},{Loop:1,Time:5},{Enemy:[Hoglin],Loop:1,Time:3},{Enemy:[BabyRunner],Loop:10,Time:1},{Loop:1,Time:5},{Enemy:[Husk,Skeleton,Husk,Creeper],Loop:20,Time:1},{Loop:1,Time:7},{Enemy:[Hoglin],Loop:1,Time:3},{System:"End",Loop:1000000,Time:1},{System:"Message",Loop:1,Time:5,Tellraw:'{"translate":"Return to the Lobby After 5 Seconds","color":"green"}'},{System:"BackToLobby",Loop:1,Time:1},{Loop:1,Time:1000000}]}}

data modify storage stage: Pathfinding set value [{Group:1,Area:{Start:{X:227,Y:50,Z:240},End:{X:238,Y:60,Z:271}},Target:{Start:{X:231,Y:50,Z:231},Range:{X:3,Y:0,Z:0}}},{Group:1,Area:{Start:{X:230,Y:50,Z:231},End:{X:249,Y:60,Z:239}},Target:{Start:{X:255,Y:50,Z:232},Range:{X:6,Y:0,Z:3}}},{Group:1,Area:{Start:{X:247,Y:50,Z:227},End:{X:266,Y:60,Z:265}},Target:{Start:{X:256,Y:50,Z:255},Range:{X:1,Y:0,Z:1}}}]

scoreboard players set Emerald Display 400
scoreboard players set #World Stage 2
