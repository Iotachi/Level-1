
# Teleport player to stage
tp @s 304 95 19 180 0
execute unless block 304 98 19 minecraft:air run tp @s 304 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 304 99 19

# Show title
title @s subtitle {"text":"The Code","color":"gray"}
title @s title {"text":"1.7","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage