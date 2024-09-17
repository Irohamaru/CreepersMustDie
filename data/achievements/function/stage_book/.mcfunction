#ClearCount + FlawlessCount/2 + 1 番目までステージ開放
execute store result score # Stage store result storage achievements: ClearCount int 1 if data storage achievements: Achievements[].Clear
execute store result score # X store result storage achievements: FlawlessCount int 1 if data storage achievements: Achievements[].Flawless
execute store result score # Y if data storage data: Stage[]

scoreboard players add # Stage 1
scoreboard players remove # Y 1

scoreboard players operation # X /= #2 _
scoreboard players operation # Stage += # X
scoreboard players operation # Stage < # Y

data modify storage achievements: TempAchievements set from storage achievements: Achievements
data modify storage achievements: Stage set from storage data: Stage
data modify storage achievements: pages set value []

data modify block 2 2 2 front_text.messages[0] set value '["",{"translate":"Stage Select"},{"text":" "},{"storage":"data:","nbt":"Icon.Clear","interpret":true},{"storage":"achievements:","nbt":"ClearCount","color":"light_purple"},{"text":" "},{"storage":"data:","nbt":"Icon.Flawless","interpret":true},{"storage":"achievements:","nbt":"FlawlessCount","color":"blue"},{"text":"\\n"}]'

function achievements:stage_book/loop

data modify storage achievements: pages prepend from block 2 2 2 front_text.messages[0]
data modify block 85 102 49 Book.components.minecraft:written_book_content set value {title:{raw:"Stage Book"},author:"Irohamaru"}
data modify block 85 102 49 Book.components.minecraft:written_book_content.pages set from storage achievements: pages
data modify block 85 102 49 Page set value 0
