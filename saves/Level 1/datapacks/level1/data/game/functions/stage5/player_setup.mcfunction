
# Apply affects
effect give @s minecraft:jump_boost 1000000 250 true

# Teleport player to stage
execute if block 240 94 19 minecraft:gold_block run tp @s 80 95 19 180 0
execute unless block 240 94 19 minecraft:gold_block run tp @s 80 99 19 0 0

# Show title
title @s subtitle {"text":"Ender Game","color":"light_purple"}
title @s title {"text":"1.5","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage