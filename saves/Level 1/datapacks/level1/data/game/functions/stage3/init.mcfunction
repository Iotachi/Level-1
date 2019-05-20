
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 3

# Tracks if a player has recieved the paintball item
scoreboard objectives add hasSnowball dummy
# Used for randomizing paint color
scoreboard objectives add paintColor dummy

# Places structure_void where blocks are created
fill 167 95 4 185 108 43 minecraft:structure_void replace minecraft:light_blue_stained_glass

# Creates snowball item entity that gives players the paintball
summon minecraft:item 176 95 10 {Item:{id:"minecraft:snowball",Count:1},Tags:["isSnowballGiver","stage3Kill"],Age:-2137486526,PickupDelay:2137486527}

# Summons AECs used for randomizing paint color
summon minecraft:area_effect_cloud 176 95 10 {Duration:2147483647,Tags:["stage3Paint0","stage3Kill"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["stage3Paint1","stage3PaintColor","stage3Kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["stage3Paint2","stage3PaintColor","stage3Kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["stage3Paint3","stage3PaintColor","stage3Kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["stage3Paint4","stage3PaintColor","stage3Kill"]},{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["stage3Paint5","stage3PaintColor","stage3Kill"]}]}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stage3Paint0] paintColor 0
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stage3Paint1] paintColor 1
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stage3Paint2] paintColor 2
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stage3Paint3] paintColor 3
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stage3Paint4] paintColor 4
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stage3Paint5] paintColor 5