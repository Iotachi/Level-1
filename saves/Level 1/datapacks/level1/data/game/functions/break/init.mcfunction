
# Stops stage functions from running
scoreboard players set #stage functionActive 0

# Runs break room main function every tick
scoreboard players set #break functionActive 1

# Spawns break room entities
summon minecraft:minecart 235.0 82 32 {CustomDisplayTile:1,DisplayState:{Name:"minecraft:jukebox"},Rotation:[90f,0f],DisplayOffset:43,Tags:["break_kill"]}
summon slime 235.0 84.1 32 {NoAI:1,Silent:1,NoGravity:1,CustomName:'{"text":"C418 - Mall","color":"light_purple"}',Tags:["jukebox","break_kill"]}