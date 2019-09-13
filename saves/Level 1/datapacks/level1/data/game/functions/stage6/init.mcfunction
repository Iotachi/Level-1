
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 6

# Tracks if player has recieved the paintball item
scoreboard objectives add has_snowball dummy
# Used for randomizing paint color
scoreboard objectives add paint_color dummy
# Tests for trapped players
scoreboard objectives add suffocate dummy

# Loading chunks
summon area_effect_cloud 0 0 0 {Tags:["chunk_load_base"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk0"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk1"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk2"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk3"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk4"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk5"]}]}
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load_base]
spreadplayers 264 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk0]
spreadplayers 280 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk1]
spreadplayers 264 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk2]
spreadplayers 280 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk3]
spreadplayers 264 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk4]
spreadplayers 280 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk5]
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load]

# Places structure_void where blocks are created
fill 263 95 4 281 108 43 minecraft:structure_void replace minecraft:light_blue_stained_glass

# Summons item entity that gives players the paintball
summon minecraft:item 272 95 10 {Item:{id:"minecraft:snowball",Count:1},Tags:["snowballGiver","s6_kill"],Age:-32768,PickupDelay:32767}