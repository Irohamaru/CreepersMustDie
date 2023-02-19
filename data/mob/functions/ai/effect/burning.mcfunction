data modify storage mob: Damage set from storage trap: Burning
function mob:damage/

scoreboard players remove @s Burning 1

attribute @s[scores={Burning=0}] generic.movement_speed modifier remove 0-0-0-0-20
data modify entity @s[scores={Burning=0}] HasVisualFire set value 0b
