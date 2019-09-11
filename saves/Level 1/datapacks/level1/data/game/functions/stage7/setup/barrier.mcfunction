
# Loads a structure file holding the correct number
summon minecraft:area_effect_cloud 297 93 0 {Tags:["barrier_structure","s7_kill"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=barrier_structure,limit=1] Pos[2] double 1 run scoreboard players get @e[type=minecraft:item_frame,tag=barrier,limit=1] code
execute at @e[type=minecraft:area_effect_cloud,tag=barrier_structure] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[type=minecraft:area_effect_cloud,tag=barrier_structure] run setblock ~ ~ ~ minecraft:lapis_block