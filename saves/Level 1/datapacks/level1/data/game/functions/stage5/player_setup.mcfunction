
# Apply affects
effect give @s minecraft:jump_boost 1000000 250 true

# Teleport player to stage
execute if block 240 93 19 minecraft:gold_block run tp @s 240 94 19 180 0
execute unless block 240 93 19 minecraft:gold_block run tp @s 240 98 19 0 0

# Sets spawn point to stage
spawnpoint @s 240 98 19

# Show title
title @s subtitle {"text":"Ender Game","color":"light_purple"}
title @s title {"text":"1.5","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage