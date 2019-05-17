
# Begins speedrun timer count-up
execute if score #speedrunDisplay functionActive matches 1 run scoreboard players set #speedrun functionActive 1

# Bumps update track
scoreboard players add #controller updateTrack 1

# Activates stage 1
function game:stage1/init