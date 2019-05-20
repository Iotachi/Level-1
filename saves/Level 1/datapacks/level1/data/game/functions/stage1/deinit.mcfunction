
# Resets stage
function game:stage1/reset

# Return to hub if stages have already been completed
execute unless score #controller updateTrack matches 1 run function game:hub/return

# Otherwise goes to next stage
execute if score #controller updateTrack matches 1 run function game:stage2/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1