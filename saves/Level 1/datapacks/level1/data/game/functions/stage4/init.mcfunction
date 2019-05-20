
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 4

# Tracks when activator rails should be active
scoreboard objectives add s4.activation dummy

# Summoning activator rail markers
summon minecraft:area_effect_cloud 213 95 21 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 209 95 13 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 200 97 19 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 207 98 21 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 211 102 21 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 200 102 18 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 206 100 37 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 209 101 43 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 214 105 34 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 211 107 28 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 206 107 32 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 202 104 37 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}
summon minecraft:area_effect_cloud 201 105 44 {Duration:2147483647,Tags:["s4.activatorRail","s4.kill"]}