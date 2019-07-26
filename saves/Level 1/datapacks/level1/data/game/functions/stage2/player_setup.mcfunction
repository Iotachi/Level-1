
# Teleport player to stage
tp @s 144 95 19 180 0
execute unless block 144 98 19 minecraft:air run tp @s 144 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 144 99 19

# Show title
title @s subtitle {"text":"Find the Exit","color":"light_purple"}
title @s title {"text":"1.2","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage