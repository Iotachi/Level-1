
# Teleport player to stage
execute if block 80 95 19 minecraft:air run tp @s 80 95 19 180 0
execute unless block 80 95 19 minecraft:air run tp @s 80 99 19 0 0

# Show title
title @s subtitle {"text":"The Only Level"}
title @s title {"text":"1","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage