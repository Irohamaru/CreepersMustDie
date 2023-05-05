execute if block ~ ~0.5 ~ #cursor:death run scoreboard players set @s HP 0
execute if block ~ ~-0.5 ~ pointed_dripstone run scoreboard players set @s HP 0
execute unless data entity @s {AbsorptionAmount:1000000f} run function mob:ai/enemy/natural_damage
execute if score @s HP matches ..0 run function mob:ai/enemy/kill

function mob:ai/effect/
