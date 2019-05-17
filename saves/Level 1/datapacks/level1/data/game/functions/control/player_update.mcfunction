
# Set correct update track
scoreboard players operation @s updateTrack = #controller updateTrack

# Remove level-specific effects and items


# Prepare for next stage
tag @s[scores={updateTrack=13}] add updateStage

# Return to hub
tag @s[scores={updateTrack_min=14}] add updateStage