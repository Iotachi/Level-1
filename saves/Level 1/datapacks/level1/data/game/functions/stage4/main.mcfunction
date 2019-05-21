
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage4/player_setup

# Activating the checkpoint
execute if block 208 94 27 minecraft:gold_block if block 200 100 27 minecraft:detector_rail[powered=true] run function game:stage4/checkpoint

# Activator rail timer
scoreboard players add #controller activatorTimer 1
execute if score #controller activatorTimer matches 80.. run scoreboard players remove #controller activatorTimer 80
execute if score #controller activatorTimer matches 0 as @e[type=area_effect_cloud,tag=activatorRail] at @s run setblock ~ ~-1 ~ minecraft:red_concrete
execute if score #controller activatorTimer matches 65 as @e[type=area_effect_cloud,tag=activatorRail] at @s run setblock ~ ~-1 ~ minecraft:redstone_block
execute if score #controller activatorTimer matches 65.. as @e[type=area_effect_cloud,tag=activatorRail] at @s run particle minecraft:firework ~ ~.2 ~ .1 .1 .1 .07 1