
# Resets checkpoint and painted blocks
setblock 273 93 22 minecraft:redstone_block
setblock 273 93 22 minecraft:lapis_block

# Kills stage-specific entities
kill @e[tag=s6_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove has_snowball
scoreboard objectives remove paint_color
scoreboard objectives remove suffocate