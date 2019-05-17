
# Resets checkpoint
setblock 113 93 102 minecraft:redstone_block
setblock 113 93 102 minecraft:lapis_block

# Return to hub if stages have already been completed
execute unless score #controller updateTrack matches 1 run function game:hub/return

# Otherwise goes to next stage
execute if score #controller updateTrack matches 1 run function game:stage2/init