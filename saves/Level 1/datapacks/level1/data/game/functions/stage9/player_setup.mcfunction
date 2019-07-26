
# Teleport player to stage
tp @s 304 95 19 180 0
execute unless block 304 98 19 minecraft:air run tp @s 304 99 19 0 0

# Sets spawn point to stage
spawnpoint @s 304 99 19

# Requires players to get tools
tag @s add needs_tools
execute unless block 304 98 19 minecraft:air run tag @s remove needs_tools

# Recieving unique id
scoreboard players operation @s playerId = %player_count playerId
scoreboard players add %player_count playerId 1

# Summons program GUI
summon minecraft:llama 304 95 26 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tame:1b,Strength:5,ChestedHorse:1b,Team:"no_collision",CustomName:'{"text":"Program GUI","color":"dark_aqua"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],DecorItem:{id:"minecraft:book",Count:1b,tag:{page:1b,s7_kill:1b,display:{Name:'{"text":"Turn Page","color":"aqua","italic":false}',Lore:['{"text":"Left-Click to page forward.","color":"gray"}','{"text":"Right-Click to page back.","color":"gray"}']}}},Tags:["init","program_gui","s7_delete","s7_kill"]}
scoreboard players operation @e[type=minecraft:llama,tag=program_gui,tag=init,limit=1] playerId = @s playerId
scoreboard players set @e[type=minecraft:llama,tag=program_gui,tag=init,limit=1] page 1
tag @e[type=minecraft:llama,tag=program_gui,tag=init,scores={playerId=0..}] remove init

# Creates program reader
#execute at @e[type=minecraft:chest_minecart,tag=program_storage,tag=current] run summon minecraft:chest_minecart ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Team:"no_collision",Tags:["init","program_reader","s7_delete","s7_kill"]}
#scoreboard players operation @e[type=minecraft:chest_minecart,tag=program_reader,tag=init,limit=1] playerId = @s playerId
#execute at @e[type=minecraft:chest_minecart,tag=program_reader,tag=init] run setblock ~ ~-1 ~ minecraft:hopper{TransferCooldown:32767}
#tag @e[type=minecraft:chest_minecart,tag=program_reader,tag=init,scores={playerId=0..}] remove init

# Summons program storage
execute at @e[type=minecraft:chest_minecart,tag=program_storage,tag=current] run summon minecraft:chest_minecart ~ ~ ~1 {NoGravity:1b,Invulnerable:1b,Team:"no_collision",Tags:["init","program_storage","s7_delete","s7_kill"]}
scoreboard players operation @e[type=minecraft:chest_minecart,tag=program_storage,tag=init,limit=1] playerId = #player_count playerId
scoreboard players set @e[type=minecraft:chest_minecart,tag=program_storage,tag=init,limit=1] page 1
tag @e[type=minecraft:chest_minecart,tag=program_storage,tag=current] remove current
tag @e[type=minecraft:chest_minecart,tag=program_storage,tag=init,limit=1] add current
tag @e[type=minecraft:chest_minecart,tag=program_storage,tag=init,tag=current] remove init

# Show title
title @s subtitle {"text":"TuTuring","color":"gray"}
title @s title {"text":"1.7","color":"dark_aqua"}

# Remove setup tag
tag @s remove updateStage