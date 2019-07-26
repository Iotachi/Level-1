
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 4

# Tracks when activator rails should be active and whether a minecart should be spawned
scoreboard objectives add s4_control dummy

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