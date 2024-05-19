data modify block 2 2 2 front_text.messages[0] set value '{"translate":"Chest  *Only Hotbar is Brought in"}'
data modify block 3 2 2 CustomName set from block 2 2 2 front_text.messages[0]

data remove block 3 2 2 Items
data remove block 3 2 3 Items

loot replace block 3 2 2 container.0 loot trap:armor/diamond_sword
loot replace block 3 2 2 container.1 loot trap:armor/crossbow
loot replace block 3 2 2 container.2 loot trap:armor/long_bow
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 2 container.9 loot trap:trap/tnt

loot replace block 3 2 3 container.0 loot trap:trap/spike_trap
execute if data storage achievements: Achievements[1].Clear run loot replace block 3 2 3 container.3 loot trap:trap/brimstone_tile
loot replace block 3 2 3 container.9 loot trap:trap/arrow_wall
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.11 loot trap:trap/crusher
execute if data storage achievements: Achievements[1].Clear run loot replace block 3 2 3 container.2 loot trap:trap/barricade
loot replace block 3 2 3 container.1 loot trap:trap/slime_pool
execute if data storage achievements: Achievements[1].Clear run loot replace block 3 2 3 container.4 loot trap:trap/spring_trap
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.19 loot trap:trap/swing_mace
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.10 loot trap:trap/push_trap
execute if data storage achievements: Achievements[1].Clear run loot replace block 3 2 3 container.18 loot trap:trap/masher
execute if data storage achievements: Achievements[1].Clear run loot replace block 3 2 3 container.5 loot trap:trap/iron_golem
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.6 loot trap:trap/lightning_spire
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.12 loot trap:trap/void_wall
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.13 loot trap:trap/auto_ballista
execute if data storage achievements: Achievements[2].Clear run loot replace block 3 2 3 container.14 loot trap:trap/tnt_dispenser

clone 3 2 2 3 2 3 85 102 51
