
# Clears stage-specific items
clear @s minecraft:snowball
clear @s minecraft:cooked_salmon
clear @s minecraft:beetroot_soup
clear @s minecraft:bread
clear @s minecraft:baked_potato
clear @s minecraft:suspicious_stew
clear @s minecraft:bowl
clear @s minecraft:potion
clear @s minecraft:glass_bottle
clear @s minecraft:gunpowder
clear @s minecraft:sugar
clear @s minecraft:glowstone_dust
clear @s minecraft:feather
clear @s minecraft:ladder
clear @s minecraft:iron_pickaxe
clear @s minecraft:emerald
clear @s minecraft:firework_rocket
clear @s minecraft:nether_star

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