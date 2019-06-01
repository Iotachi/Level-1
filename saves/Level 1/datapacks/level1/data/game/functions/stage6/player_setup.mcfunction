
# Teleport player to stage
execute if block 272 94 19 minecraft:gold_block run tp @s 272 95 19 180 0
execute unless block 272 94 19 minecraft:gold_block run tp @s 272 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 272 99 19

# Show title
title @s subtitle {"text":"A Door","color":"light_purple"}
title @s title {"text":"1.6","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage