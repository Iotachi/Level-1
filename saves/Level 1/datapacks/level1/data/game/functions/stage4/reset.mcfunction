
# Kills stage-specific entities
kill @e[tag=s4.Kill]

# Removes stage-specific scoreboards
scoreboard objectives remove s4.activation

# Resets checkpoint
setblock 209 93 22 minecraft:redstone_block
setblock 209 93 22 minecraft:lapis_block

# Fixes messy rails
fill 208 95 25 209 95 25 minecraft:rail[shape=east_west]