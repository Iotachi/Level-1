
# Checking if current storage is empty, preventing new storage to be added
execute as @e[type=minecraft:chest_minecart,tag=program_storage,nbt={Inventory:[]}] if score @s playerId = @e[type=minecraft:llama,distance=0,limit=1] playerId if score @s page = @e[type=minecraft:llama,distance=0,limit=1] page run tag @e[type=minecraft:llama,distance=0,limit=1] add is_empty

# Updating current page number
scoreboard players add @e[type=minecraft:llama,distance=0,limit=1] page 1

# Preventing page turn if no more storage and current storage is empty
execute as @e[type=minecraft:chest_minecart,tag=program_storage,scores={page=2..}] if score @s playerId = @e[type=minecraft:llama,distance=0,limit=1] playerId run tag @e[type=minecraft:llama,distance=0,limit=1] add page_found
scoreboard players remove @e[type=minecraft:llama,distance=0,limit=1,tag=is_empty,tag=!page_found] page 1
tag @e[type=minecraft:llama,distance=0,limit=1,tag=is_empty,tag=!page_found] add page_found

# Summoning new storage if needed
execute if entity @e[type=minecraft:llama,distance=0,limit=1,tag=!page_found] run summon minecraft:chest_minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Team:"no_collision",Tags:["init","program_storage","s7_delete","s7_kill"]}
execute if entity @e[type=minecraft:llama,distance=0,limit=1,tag=!page_found] run scoreboard players operation @e[tag=init,distance=0,limit=1] playerId = @s playerId
execute if entity @e[type=minecraft:llama,distance=0,limit=1,tag=!page_found] run scoreboard players operation @e[tag=init,distance=0,limit=1] page = @e[distance=0] page
execute if entity @e[type=minecraft:llama,distance=0,limit=1,tag=!page_found] run tag @e[tag=init,distance=0,limit=1] remove init

# Cleanup
tag @e[type=minecraft:llama,distance=0,limit=1,tag=is_empty] remove is_empty
tag @e[type=minecraft:llama,distance=0,limit=1,tag=page_found] remove page_found