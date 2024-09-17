function main:id/search_start
data modify entity @e[type=slime,scores={ParentID=0},distance=..3,limit=1] Size set value 0
kill @e[scores={ParentID=0},distance=..3]
function main:id/search_end
