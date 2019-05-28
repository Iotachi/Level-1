
# Teleport player to stage
execute if block 208 94 27 minecraft:gold_block run tp @s 208 95 27 180 0
execute unless block 208 94 27 minecraft:gold_block run tp @s 208 99 27 0 0

# Sets spawn point to stage
spawnpoint @s 208 99 19

# Show title
title @s subtitle {"text":"Payload","color":"dark_red"}
title @s title {"text":"1.4","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage