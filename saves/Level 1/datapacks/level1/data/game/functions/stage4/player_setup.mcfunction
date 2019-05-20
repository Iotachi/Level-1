
# Teleport player to stage
execute if block 208 94 19 minecraft:gold_block run tp @s 208 95 19 180 0
execute unless block 208 94 19 minecraft:gold_block run tp @s 208 99 19 0 0

# Show title
title @s subtitle {"text":"Payload","color":"red"}
title @s title {"text":"1.4","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage