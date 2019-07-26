
# Resets activator rails
execute at @e[type=minecraft:area_effect_cloud,tag=activatorRail] run setblock ~ ~-1 ~ minecraft:red_terracotta

# Kills stage-specific entities
kill @e[tag=s4_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove s4_control

# Resets checkpoint
setblock 209 93 20 minecraft:redstone_block
setblock 209 93 20 minecraft:lapis_block

# Fixes messy rails
fill 208 95 15 209 95 15 minecraft:rail[shape=east_west]