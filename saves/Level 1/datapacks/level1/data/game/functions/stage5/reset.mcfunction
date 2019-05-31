
# Kills stage-specific entities
kill @e[tag=s5_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove leftGame

# Resets checkpoint
setblock 241 92 23 minecraft:redstone_block
setblock 241 92 23 minecraft:lapis_block