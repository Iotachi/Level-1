
# Resets activator rails
execute at @e[type=minecraft:area_effect_cloud,tag=activatorRail] run setblock ~ ~-1 ~ minecraft:red_concrete

# Kills stage-specific entities
kill @e[tag=s4_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove activatorTimer

# Resets checkpoint
setblock 209 93 30 minecraft:redstone_block
setblock 209 93 30 minecraft:lapis_block

# Fixes messy rails
fill 208 95 25 209 95 25 minecraft:rail[shape=east_west]