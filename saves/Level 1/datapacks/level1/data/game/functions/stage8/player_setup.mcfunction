
# Play wind sound effects
playsound minecraft:item.elytra.flying ambient @s ~ ~ ~ 8 .5 1

# Teleport player to stage
tp @s 336 95 21 180 0
execute unless block 336 98 21 minecraft:air run tp @s 336 99 21 0 0

# Sets spawn point to stage
spawnpoint @s 336 99 21

# Show title
title @s subtitle {"text":"Turbulence","color":"dark_blue"}
title @s title {"text":"1.8","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage