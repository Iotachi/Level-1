
# Teleport player to stage
execute if block 80 94 19 minecraft:gold_block run tp @s 112 95 99 180 0
execute unless block 80 94 19 minecraft:gold_block run tp @s 112 99 99 0 0

# Sets spawn point to stage
spawnpoint @s 112 99 99

# Show title
title @s subtitle {"text":"Pretend the Floor is Lava","color":"red"}
title @s title {"text":"1.1","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage