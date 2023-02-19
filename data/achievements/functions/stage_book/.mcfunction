#{"storage":"data:","nbt":"Clear","interpret":true}
#{"storage":"data:","nbt":"Flawless","interpret":true}

#{"storage":"data:","nbt":"Mob.Zombie","interpret":true}
#{"storage":"data:","nbt":"Mob.Husk","interpret":true}
#{"storage":"data:","nbt":"Mob.Piglin","interpret":true}
#{"storage":"data:","nbt":"Mob.Skeleton","interpret":true}
#{"storage":"data:","nbt":"Mob.Drowned","interpret":true}
#{"storage":"data:","nbt":"Mob.BabyRunner","interpret":true}
#{"storage":"data:","nbt":"Mob.Creeper","interpret":true}
#{"storage":"data:","nbt":"Mob.ChargedCreeper","interpret":true}
#{"storage":"data:","nbt":"Mob.Hoglin","interpret":true}
#{"storage":"data:","nbt":"Mob.Ravager","interpret":true}

data modify block 85 102 49 Book.tag.pages set value []
data modify storage achievements: RawText set value ['["",{"translate":"Stage Select"},{"text":" "},{"storage":"data:","nbt":"Icon.Clear","interpret":true},{"storage":"achievements:","nbt":"ClearCount","color":"light_purple"},{"text":" "},{"storage":"data:","nbt":"Icon.Flawless","interpret":true},{"storage":"achievements:","nbt":"FlawlessCount","color":"blue"},{"text":"\\n"},{"text":"\\n<"},{"translate":"Stage","color":"#008DEF","clickEvent":{"action":"change_page","value":"2"}},{"text":" 01","color":"#008DEF","clickEvent":{"action":"change_page","value":"2"}},{"text":">  "},{"storage":"achievements:","nbt":"Achievements[1].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"Achievements[1].Flawless","interpret":true},{"text":"\\n<"},{"translate":"Stage","color":"#008DEF","clickEvent":{"action":"change_page","value":"3"}},{"text":" 02","color":"#008DEF","clickEvent":{"action":"change_page","value":"3"}},{"text":">  "},{"storage":"achievements:","nbt":"Achievements[2].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"Achievements[2].Flawless","interpret":true},{"text":"\\n<"},{"translate":"Stage","color":"#008DEF","clickEvent":{"action":"change_page","value":"4"}},{"text":" 03","color":"#008DEF","clickEvent":{"action":"change_page","value":"4"}},{"text":">  "},{"storage":"achievements:","nbt":"Achievements[3].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"Achievements[3].Flawless","interpret":true}]','["",{"translate":"Stage"},{"text":" 01\\n"},{"storage":"data:","nbt":"Stage[1].Name","color":"#008DEF","underlined":true,"interpret":true},{"text":"  "},{"storage":"achievements:","nbt":"Achievements[1].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"Achievements[1].Flawless","interpret":true},{"text":"\\n\\n\\n"},{"translate":"Monsters"},{"text":"\\n"},{"storage":"data:","nbt":"Mob.Zombie","interpret":true},{"storage":"data:","nbt":"Mob.Husk","interpret":true},{"storage":"data:","nbt":"Mob.Skeleton","interpret":true},{"storage":"data:","nbt":"Mob.Creeper","interpret":true},{"text":"\\n\\n\\n<"},{"translate":"Play","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger Trigger set 1"}},{"text":">\\n "}]','["",{"translate":"Stage"},{"text":" 02\\n"},{"storage":"data:","nbt":"Stage[2].Name","color":"#008DEF","underlined":true,"interpret":true},{"text":"  "},{"storage":"achievements:","nbt":"Achievements[2].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"Achievements[2].Flawless","interpret":true},{"text":"\\n\\n\\n"},{"translate":"Monsters"},{"text":"\\n"},{"storage":"data:","nbt":"Mob.Zombie","interpret":true},{"storage":"data:","nbt":"Mob.Husk","interpret":true},{"storage":"data:","nbt":"Mob.Skeleton","interpret":true},{"storage":"data:","nbt":"Mob.BabyRunner","interpret":true},{"storage":"data:","nbt":"Mob.Creeper","interpret":true},{"storage":"data:","nbt":"Mob.Hoglin","interpret":true},{"text":"\\n\\n\\n<"},{"translate":"Play","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger Trigger set 2"}},{"text":">\\n "}]','["",{"translate":"Stage"},{"text":" 03\\n"},{"storage":"data:","nbt":"Stage[3].Name","color":"#008DEF","underlined":true,"interpret":true},{"text":"  "},{"storage":"achievements:","nbt":"Achievements[3].Clear","interpret":true},{"text":" "},{"storage":"achievements:","nbt":"Achievements[3].Flawless","interpret":true},{"text":"\\n\\n\\n"},{"translate":"Monsters"},{"text":"\\n"},{"storage":"data:","nbt":"Mob.Zombie","interpret":true},{"storage":"data:","nbt":"Mob.Husk","interpret":true},{"storage":"data:","nbt":"Mob.Piglin","interpret":true},{"storage":"data:","nbt":"Mob.Drowned","interpret":true},{"storage":"data:","nbt":"Mob.BabyRunner","interpret":true},{"storage":"data:","nbt":"Mob.Creeper","interpret":true},{"storage":"data:","nbt":"Mob.ChargedCreeper","interpret":true},{"storage":"data:","nbt":"Mob.Hoglin","interpret":true},{"storage":"data:","nbt":"Mob.Ravager","interpret":true},{"text":"\\n\\n\\n<"},{"translate":"Play","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger Trigger set 3"}},{"text":">\\n "}]']
execute store result storage achievements: ClearCount int 1 if data storage achievements: Achievements[].Clear
execute store result storage achievements: FlawlessCount int 1 if data storage achievements: Achievements[].Flawless

execute positioned 85 102 49 run function achievements:stage_book/loop
clone 85 102 49 85 102 49 85 102 54
