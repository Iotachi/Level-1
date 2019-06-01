
# Initializes players
execute as @a[team=] run function game:player/init

# Updates player if they're behind
execute as @a[scores={ignoreTrack=0}] unless score @s updateTrack = #controller updateTrack run function game:player/update


# Sets players in survival mode to adventure mode
gamemode adventure @a[gamemode=survival]

# Allows players to interact with json
scoreboard players enable @a trigger

# Prevents eerie noises from playing
stopsound @a ambient minecraft:ambient.cave


# Speedrun timer count-up
execute if score #speedrun functionActive matches 1 run function game:speedrun/run

# Runs main function of active stage
execute if score #stage functionActive matches 0 run function game:stage0/main
execute if score #stage functionActive matches 1 run function game:stage1/main
execute if score #stage functionActive matches 2 run function game:stage2/main
execute if score #stage functionActive matches 3 run function game:stage3/main
execute if score #stage functionActive matches 4 run function game:stage4/main
execute if score #stage functionActive matches 5 run function game:stage5/main
execute if score #stage functionActive matches 6 run function game:stage6/main

# Runs main function of break room
execute if score #break functionActive matches 1 run function game:break/main