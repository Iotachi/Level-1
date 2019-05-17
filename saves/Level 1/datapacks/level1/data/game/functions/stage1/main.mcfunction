
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage1/player_setup

# Sets players to adventure mode after the fire's been put out
gamemode adventure @a[tag=setAdventure]
tag @a[tag=setAdventure] remove setAdventure

# Kills players that touch lava
execute as @a[scores={ignoreTrack=0},gamemode=adventure] store result score @s onFire run data get entity @s Fire
execute as @a[scores={onFire=0..}] run function game:stage1/death