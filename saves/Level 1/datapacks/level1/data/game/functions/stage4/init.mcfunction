
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 4

# Tracks when activator rails should be active and whether a minecart should be spawned
scoreboard objectives add s4_control dummy

# Summoning activator rail markers
summon minecraft:area_effect_cloud 213 95 21 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 205 95 13 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 205 98 21 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 212 99 17 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 211 102 22 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 201 102 18 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 206 100 38 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 209 101 43 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 214 105 34 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 211 107 28 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 202 104 37 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}
summon minecraft:area_effect_cloud 201 105 44 {Duration:2147483647,Tags:["activatorRail","s4_kill"]}