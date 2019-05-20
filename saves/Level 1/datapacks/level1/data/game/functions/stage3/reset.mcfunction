
# Kills all entities summoned in stage
kill @e[tag=s3.kill]

# Removes stage-specific scoreboards
scoreboard objectives remove s3.hasPaintball
scoreboard objectives remove s3.paintColor

# Resets checkpoint and painted blocks
setblock 177 93 22 minecraft:redstone_block
setblock 177 93 22 minecraft:lapis_block