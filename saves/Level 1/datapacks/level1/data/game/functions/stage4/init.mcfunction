
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 4

# Tracks when activator rails should be active and whether a minecart should be spawned
scoreboard objectives add s4_control dummy

# Loading chunks
summon area_effect_cloud 0 0 0 {Tags:["chunk_load_base"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk0"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk1"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk2"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk3"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk4"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk5"]}]}
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load_base]
spreadplayers 200 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk0]
spreadplayers 216 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk1]
spreadplayers 200 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk2]
spreadplayers 216 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk3]
spreadplayers 200 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk4]
spreadplayers 216 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk5]
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load]

# Summons activator rail markers
summon minecraft:area_effect_cloud 213 95 11 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 205 95 3 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 205 98 11 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 212 99 7 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 211 102 12 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 201 102 8 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 206 100 28 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 209 101 33 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 214 105 24 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 211 107 18 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 202 104 27 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 201 105 34 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}

# Summons void illusion blocks at minecart dispensery
summon minecraft:falling_block 215.48 95 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 215.48 96 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 215.48 97 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 214 97.98 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 213 97.98 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 212 97.98 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 211.52 97 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 211.52 96 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 211.52 95 22.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 214.48 95 26.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 212.52 95 26.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}