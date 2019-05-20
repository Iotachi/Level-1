
# Teleport player to stage
execute if block 176 94 19 minecraft:gold_block run tp @s 176 95 19 180 0
execute unless block 176 94 19 minecraft:gold_block run tp @s 176 99 19 0 0

# Show title
title @s subtitle {"text":"Color Crazy","color":"aqua"}
title @s title {"text":"1.3","color":"dark_aqua"}

# Initializes hasSnowball score for player
scoreboard players set @s hasSnowball 0

# Remove setup tag
tag @s remove updateStage