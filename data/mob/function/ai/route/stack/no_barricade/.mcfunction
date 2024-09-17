execute if score @s Interval matches ..-50 positioned as @n[tag=Barricade,distance=..16] as 0-0-0-0-1 on origin run function mob:ai/route/stack/no_barricade/target_barricade
execute if score @s Interval matches 0.. run function mob:ai/route/stack/no_barricade/abandon_target
