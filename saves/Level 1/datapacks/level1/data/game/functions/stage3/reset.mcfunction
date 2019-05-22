
# Kills all entities summoned in stage
kill @e[tag=s3_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove hasSnowball
scoreboard objectives remove paintColor

# Resets checkpoint and painted blocks
setblock 177 93 22 minecraft:redstone_block
setblock 177 93 22 minecraft:lapis_block