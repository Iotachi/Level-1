
# Resets stage
function game:stage5/reset

# Return to hub if stages have already been completed
execute unless score #controller updateTrack matches 5 run function game:hub/return

# Otherwise goes to next stage
execute if score #controller updateTrack matches 5 run function game:break/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1