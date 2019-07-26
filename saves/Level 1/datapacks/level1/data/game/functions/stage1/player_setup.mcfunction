
# Teleport player to stage
tp @s 112 95 99 180 0
execute unless block 80 98 19 minecraft:air run tp @s 112 99 99 0 0

# Sets spawn point to stage
spawnpoint @s 112 99 99

# Show title
title @s subtitle {"text":"Pretend the Floor is Lava","color":"red"}
title @s title {"text":"1.1","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage