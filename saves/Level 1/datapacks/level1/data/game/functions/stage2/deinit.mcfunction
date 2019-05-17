
# Resets checkpoint
setblock 145 93 22 minecraft:redstone_block
setblock 145 93 22 minecraft:lapis_block

# Return to hub if stages have already been completed
execute unless score #controller updateTrack matches 2 run function game:hub/return

# Otherwise goes to next stage
execute if score #controller updateTrack matches 2 run function game:stage3/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1