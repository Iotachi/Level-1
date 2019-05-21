
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 3

# Tracks if a player has recieved the paintball item
scoreboard objectives add hasSnowball dummy
# Used for randomizing paint color
scoreboard objectives add paintColor dummy

# Places structure_void where blocks are created
fill 167 95 4 185 108 43 minecraft:structure_void replace minecraft:light_blue_stained_glass

# Creates snowball item entity that gives players the paintball
summon minecraft:item 176 95 10 {Item:{id:"minecraft:snowball",Count:1},Tags:["snowballGiver","s3_kill"],Age:-2137486526,PickupDelay:2137486527}

# Summons AECs used for randomizing paint color
summon minecraft:area_effect_cloud 176 95 10 {Duration:2147483647,Tags:["paint0","s3_kill"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["paint1","paintColor","s3_kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["paint2","paintColor","s3_kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["paint3","paintColor","s3_kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["paint4","paintColor","s3_kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["paint5","paintColor","s3_kill"]}]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=paint0] paintColor 0
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=paint1] paintColor 1
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=paint2] paintColor 2
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=paint3] paintColor 3
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=paint4] paintColor 4
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=paint5] paintColor 5