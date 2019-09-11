
# Teleport player to stage
tp @s 306 95 19 180 0
execute unless block 306 98 19 minecraft:air run tp @s 306 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 306 99 19

# Show title
title @s subtitle {"text":"the Code","color":"gray"}
title @s title {"text":"1.7","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage