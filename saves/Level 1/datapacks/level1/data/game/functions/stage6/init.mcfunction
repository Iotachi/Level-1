
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 6

# Tracks if player has recieved the paintball item
scoreboard objectives add has_snowball dummy
# Used for randomizing paint color
scoreboard objectives add paint_color dummy
# Tests for trapped players
scoreboard objectives add suffocate dummy

# Places structure_void where blocks are created
fill 263 95 4 281 108 43 minecraft:structure_void replace minecraft:light_blue_stained_glass

# Summons item entity that gives players the paintball
summon minecraft:item 272 95 10 {Item:{id:"minecraft:snowball",Count:1},Tags:["snowballGiver","s6_kill"],Age:-32768,PickupDelay:32767}