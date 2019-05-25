
# Clears stage-specific items
clear @s minecraft:snowball{s3_snowball:1b}

# Clears stage-specific affects
effect clear @s minecraft:jump_boost
effect give @s minecraft:saturation 1000000 0 true

# Set correct update track
scoreboard players operation @s updateTrack = #controller updateTrack

# Resets at-finish track
scoreboard players set @s atFinish 0

# Prepare for next stage
tag @s add updateStage