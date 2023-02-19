data modify block 2 2 2 Text1 set value '{"storage":"achievements:","nbt":"RawText[0]","interpret":true}'
data modify block ~ ~ ~ Book.tag.pages append from block 2 2 2 Text1
data remove storage achievements: RawText[0]
execute if data storage achievements: RawText[0] run function achievements:stage_book/loop
