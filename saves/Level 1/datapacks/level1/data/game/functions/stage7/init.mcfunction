
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 7

# Stores code and randomization numbers
scoreboard objectives add code dummy

# Loading chunks
summon area_effect_cloud 0 0 0 {Tags:["chunk_load_base"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk0"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk1"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk2"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk3"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk4"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk5"]}]}
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load_base]
spreadplayers 296 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk0]
spreadplayers 312 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk1]
spreadplayers 296 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk2]
spreadplayers 312 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk3]
spreadplayers 296 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk4]
spreadplayers 312 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk5]
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load]


# Summons above-anvil item frames
summon minecraft:item_frame 302 106 43 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["display0","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 301 106 43 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["display1","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 300 106 43 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["display2","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 299 106 43 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["display3","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 298 106 43 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["display4","ignore_rotation","s7_kill"]}

# Summons cypher item frames
summon minecraft:item_frame 300 96 39 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["odd","puzzle_display","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 299 98 3 {Facing:3b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["board","puzzle_display","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 314 102 5 {Facing:3b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["barrier","puzzle_display","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 296 103 17 {Facing:5b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["book","puzzle_display","ignore_rotation","s7_kill"]}
summon minecraft:item_frame 290 107 34 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:filled_map",Count:1b},Tags:["jigsaw","puzzle_display","ignore_rotation","s7_kill"]}


# Generates code
function game:stage7/setup/code

# Randomizes symbols and puzzle order
function game:stage7/setup/cypher

# Odd-one-out puzzle setup
function game:stage7/setup/odd

# Sign board puzzle setup
function game:stage7/setup/board

# Invisible number puzzle setup
function game:stage7/setup/barrier

# Symbol book puzzle setup
function game:stage7/setup/book

# Jigsaw puzzle setup
function game:stage7/setup/jigsaw