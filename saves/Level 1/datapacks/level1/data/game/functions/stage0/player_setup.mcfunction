
# Teleport player to stage
tp @s 80 95 19 180 0
execute unless block 80 98 19 minecraft:air run tp @s 80 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 80 99 19

# Show title
title @s subtitle {"text":"The Only Level"}
title @s title {"text":"1","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage