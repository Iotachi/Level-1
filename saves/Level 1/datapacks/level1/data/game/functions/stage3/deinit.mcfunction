
# Resets stage
function game:stage3/reset

# Return to hub if stages have already been completed
execute unless score #controller updateTrack matches 3 run function game:hub/return

# Otherwise goes to next stage
execute if score #controller updateTrack matches 3 run function game:stage4/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1