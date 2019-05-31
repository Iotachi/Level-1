
# Clears stage-specific items
clear @s minecraft:snowball{s3_snowball:1b}
clear @s minecraft:cooked_salmon{break_remove:1b}
clear @s minecraft:beetroot_soup{break_remove:1b}
clear @s minecraft:bread{break_remove:1b}
clear @s minecraft:baked_potato{break_remove:1b}
clear @s minecraft:suspicious_stew{break_remove:1b}
clear @s minecraft:bowl
clear @s minecraft:potion{break_remove:1b}
clear @s minecraft:glass_bottle

# Clears stage-specific affects
effect clear @s minecraft:jump_boost
effect give @s minecraft:saturation 1000000 0 true

# Stops stage-specific sounds
stopsound @s

# Resets trigger as failsafe to prevent overflow
scoreboard players set @s trigger 0

# Resets at-finish track
scoreboard players set @s atFinish 0

# Set correct update track
scoreboard players operation @s updateTrack = #controller updateTrack

# Prepare for next stage
tag @s add updateStage