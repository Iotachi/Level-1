
# Resets break room
function game:break/reset
scoreboard players reset #break functionActive

# Goes to next stage
function game:stage6/init

# Bumps updateTrack
scoreboard players add #controller updateTrack 1