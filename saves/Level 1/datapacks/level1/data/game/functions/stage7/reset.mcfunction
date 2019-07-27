
# Resets checkpoint
setblock 305 93 22 minecraft:redstone_block
setblock 305 93 22 minecraft:lapis_block

# Removes stage-specific scoreboards
scoreboard objectives remove code

# DELETE WHEN FINISHED
scoreboard players set #stage functionActive -1
# DELETE WHEN FINISHED