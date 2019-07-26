
# Teleport player to stage
tp @s 176 95 19 180 0
execute unless block 176 98 19 minecraft:air run tp @s 176 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 176 99 19

# Show title
title @s subtitle {"text":"Rhythm","color":"light_purple"}
title @s title {"text":"1.3","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage