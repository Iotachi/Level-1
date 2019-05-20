
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage4/player_setup

# Activating the checkpoint
execute if block 208 94 27 minecraft:gold_block if block 200 100 27 minecraft:detector_rail[powered=true] run function game:stage4/checkpoint