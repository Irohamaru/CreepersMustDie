scoreboard players set #World _ 0
execute as @a if score #World Stage = @s Stage run scoreboard players add #World _ 1

tag @s add CloseStage
execute store result score # _ if entity @a[tag=CloseStage]

execute unless score #World _ = # _ as @a[tag=CloseStage] if score #World Stage = @s Stage run tellraw @s [{"translate":"%1$s/%2$s Players Are Proposing to Retreat.","color":"yellow","with":[{"score":{"name":"#","objective":"_"}},{"score":{"name":"#World","objective":"_"}}]},{"text":" "},{"translate":"Awaiting Other Players...","color":"gray"}]
execute unless score #World _ = # _ as @a[tag=!CloseStage] if score #World Stage = @s Stage run tellraw @s [{"translate":"%1$s/%2$s Players Are Proposing to Retreat.","color":"yellow","with":[{"score":{"name":"#","objective":"_"}},{"score":{"name":"#World","objective":"_"}}]},{"text":"  "},{"translate":"<RETREAT>","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger Trigger set 1001"}}]

execute if score #World _ = # _ run function stage:leave/close
