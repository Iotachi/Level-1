
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage0/player_setup

# Gives paintball to players
execute at @e[type=item,tag=isPaintballGiver] run scoreboard players set @a[distance=..1,scores={hasItem=..0,hasItem=2..,ignoreTrack=0}] hasItem 1