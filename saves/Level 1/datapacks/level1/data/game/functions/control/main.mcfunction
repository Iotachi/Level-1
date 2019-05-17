
# Initializes players
execute as @a[team=] run function game:control/player_init

# Sets players in survival mode to adventure mode
gamemode adventure @a[gamemode=survival]

# Updates player if they're behind
execute as @a[scores={ignoreTrack=0}] unless score @s updateTrack = #controller updateTrack run function game:control/player_update

# Speedrun timer count-up
execute if score #speedrun functionActive matches 1 run function game:speedrun/run

# Runs main function of active stage
execute if score #stage functionActive matches 0 run function game:stage0/main
execute if score #stage functionActive matches 1 run function game:stage1/main