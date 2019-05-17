
# Teleport player to stage
execute if block 144 94 19 minecraft:gold_block run tp @s 144 95 19 180 0
execute unless block 144 94 19 minecraft:gold_block run tp @s 144 99 19 0 0

# Show title
title @s subtitle {"text":"Rhythm"}
title @s title {"text":"1.2","color":"light_purple"}

# Remove setup tag
tag @s remove updateStage