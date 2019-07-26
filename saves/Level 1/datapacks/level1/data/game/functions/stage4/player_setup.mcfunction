
# Teleport player to stage
tp @s 208 95 17 180 0
execute unless block 208 95 17 minecraft:air run tp @s 208 99 17 0 0

# Sets spawn point to stage
spawnpoint @s 208 99 17

# Show title
title @s subtitle {"text":"Payload","color":"dark_red"}
title @s title {"text":"1.4","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage