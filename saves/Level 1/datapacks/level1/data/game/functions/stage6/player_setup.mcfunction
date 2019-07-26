
# Teleport player to stage
tp @s 272 95 19 180 0
execute unless block 272 95 19 minecraft:air run tp @s 272 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 272 99 19

# Show title
title @s subtitle {"text":"MC Paint","color":"aqua"}
title @s title {"text":"1.6","color":"dark_aqua"}

# Initializes has_snowball score for player
scoreboard players set @s has_snowball 0

# Remove setup tag
tag @s remove updateStage