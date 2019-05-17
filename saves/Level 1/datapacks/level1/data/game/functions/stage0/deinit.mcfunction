
# Resets checkpoint
setblock 81 93 22 minecraft:redstone_block
setblock 81 93 22 minecraft:lapis_block

# Return to hub if stages have already been completed
execute unless score #controller updateTrack matches 0 run function game:hub/return

# Otherwise goes to next stage
execute if score #controller updateTrack matches 0 run function game:stage1/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1