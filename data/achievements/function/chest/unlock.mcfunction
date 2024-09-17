tellraw @a [{"translate":"Cleared Stage %s for the First Time!","color":"light_purple","with":[{"score":{"name":"#World","objective":"Stage"}}]}]

execute if score #World Stage matches 1 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Brimstone Tile","color":"aqua"}]}]

execute if score #World Stage matches 2 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Crusher","color":"aqua"}]}]
execute if score #World Stage matches 1 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Barricade","color":"aqua"}]}]

execute if score #World Stage matches 1 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Spring Trap","color":"aqua"}]}]
execute if score #World Stage matches 2 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Swing Mace","color":"aqua"}]}]
execute if score #World Stage matches 2 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Push Trap","color":"aqua"}]}]
execute if score #World Stage matches 1 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Masher","color":"aqua"}]}]
execute if score #World Stage matches 1 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Iron Golem","color":"aqua"}]}]
execute if score #World Stage matches 2 run tellraw @a [{"translate":"%s Unlocked!","with":[{"translate":"Void Wall","color":"aqua"}]}]
