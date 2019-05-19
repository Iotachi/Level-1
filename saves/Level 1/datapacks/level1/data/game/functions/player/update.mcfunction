
# Set correct update track
scoreboard players operation @s updateTrack = #controller updateTrack

# Resets at-finish track
scoreboard players set @s atFinish 0

# Prepare for next stage
tag @s add updateStage