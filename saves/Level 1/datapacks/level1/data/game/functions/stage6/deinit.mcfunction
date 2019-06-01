
# Resets stage
function game:stage0/reset

# Return to hub if stages have already been completed
execute if score #hub functionActive matches 1 run function game:hub/return

# Otherwise goes to next stage
execute unless score #hub functionActive matches 1 run function game:stage1/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1