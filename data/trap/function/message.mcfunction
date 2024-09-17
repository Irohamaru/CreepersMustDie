scoreboard players add @s Interval 1
data merge entity @s[scores={Interval=2}] {transformation:{scale:[1f,1f,1f],translation:[0f,1f,0f]},start_interpolation:0,interpolation_duration:30}

kill @s[scores={Interval=30..}]
