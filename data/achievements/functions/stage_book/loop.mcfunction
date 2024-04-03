data modify block 2 2 2 front_text.messages[0] set value '[{"block":"2 2 2","nbt":"front_text.messages[0]","interpret":true},{"text":"\\n<"},{"storage":"achievements:","nbt":"Stage[1].Number","color":"#008DEF","interpret":true},{"text":">  "},{"storage":"achievements:","nbt":"TempAchievements[1].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"TempAchievements[1].Flawless","interpret":true}]'

data modify block 2 2 2 front_text.messages[2] set value '["",{"storage":"achievements:","nbt":"Stage[1].Number","interpret":true},{"text":"\\n"},{"storage":"achievements:","nbt":"Stage[1].Name","color":"#008DEF","underlined":true,"interpret":true},{"text":"  "},{"storage":"achievements:","nbt":"TempAchievements[1].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"TempAchievements[1].Flawless","interpret":true},{"text":"\\n\\n\\n"},{"translate":"Waves","bold":true,"color":"#1D7546"},{"text":"\\n"},{"storage":"achievements:","nbt":"Stage[1].Waves"},{"text":"\\n\\n"},{"translate":"Monsters","bold":true,"color":"#1D7546"},{"text":"\\n"},{"storage":"achievements:","nbt":"Stage[1].Monsters","interpret":true},{"text":"\\n\\n\\n<","bold":true},{"storage":"achievements:","nbt":"Stage[1].Play","color":"light_purple","bold":true,"interpret":true},{"text":">\\n ","bold":true}]'
data modify storage achievements: pages append from block 2 2 2 front_text.messages[2]

data remove storage achievements: TempAchievements[1]
data remove storage achievements: Stage[1]
scoreboard players remove # Stage 1
execute if score # Stage matches 1.. run function achievements:stage_book/loop
