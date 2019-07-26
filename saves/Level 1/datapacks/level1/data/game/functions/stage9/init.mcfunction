
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 7

# Tracks when player crouches
scoreboard objectives add isCrouched minecraft.custom:minecraft.sneak_time
# Tracks program GUI page
scoreboard objectives add page dummy
# Separates droid entities by player
scoreboard objectives add playerId dummy
scoreboard players set %player_count playerId 0

# Summons first program info storage minecart
summon minecraft:chest_minecart 302 93 2 {NoGravity:1b,Invulnerable:1b,Team:"no_collision",Tags:["current","program_storage","s7_delete","s7_kill"]}
scoreboard players set @e[type=minecraft:chest_minecart,tag=program_storage] playerId 0
scoreboard players set @e[type=minecraft:chest_minecart,tag=program_storage] page 1

# Summons item entity that gives players programming tools
summon minecraft:item 304 95 10 {Item:{id:"minecraft:chain_command_block",Count:1b},Tags:["tool_giver","s7_kill"],Age:-32768s,PickupDelay:32767s}

# Summons button-covering glass
summon minecraft:wither_skeleton 293.9 99.4 19 {NoAI:1b,Silent:1b,NoGravity:1b,Invulnerable:1b,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b}],Tags:["glass_case","s7_kill"]}
summon minecraft:wither_skeleton 304 104.4 44.1 {NoAI:1b,Silent:1b,NoGravity:1b,Invulnerable:1b,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b}],Tags:["glass_case","s7_kill"]}