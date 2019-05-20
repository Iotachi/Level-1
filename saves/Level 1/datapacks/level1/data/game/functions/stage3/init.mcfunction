
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 3

# Tracks if a player has recieved the paintball item
scoreboard objectives add hasSnowball dummy

# Places structure_void where blocks are created
fill 167 95 4 185 108 43 minecraft:structure_void replace minecraft:light_blue_stained_glass

# Creates snowball item entity that gives players the paintball
summon minecraft:item 176 95 10 {Item:{id:"minecraft:snowball",Count:1},Tags:["isSnowballGiver","stage3Kill"],Age:-2137486526,PickupDelay:2137486527}