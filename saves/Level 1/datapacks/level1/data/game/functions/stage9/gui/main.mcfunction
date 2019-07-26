
# Teleporting GUI
execute if entity @p[distance=0,gamemode=adventure,scores={isCrouched=0}] run tp @s ~ ~7.9 ~
execute if entity @p[distance=0,gamemode=adventure,scores={isCrouched=1..}] run tp @s ^ ^ ^.5

# Checking if pages need turning
execute store result score %page_compare page run data get entity @s DecorItem.Count

# Storing current information
execute unless score %page_compare page = @s page at @s as @e[type=minecraft:chest_minecart,tag=program_storage] if score @s playerId = @e[type=minecraft:llama,distance=0,limit=1] playerId if score @s page = @e[type=minecraft:llama,distance=0,limit=1] page run data modify entity @s Items set from entity @e[type=minecraft:llama,distance=0,limit=1] Items

# Turning to next page
execute if score %page_compare page matches 0 at @s as @e[type=minecraft:chest_minecart,tag=program_storage,scores={page=1}] if score @s playerId = @e[type=minecraft:llama,distance=0,limit=1] playerId run function game:stage7/gui/next_page

# Turning to previous page
execute if score %page_compare page < @s page unless score %page_compare page matches 0 run function game:stage7/gui/previous_page

# Updating GUI's information
execute unless score %page_compare page = @s page at @s as @e[type=minecraft:chest_minecart,tag=program_storage] if score @s playerId = @e[type=minecraft:llama,distance=0,limit=1] playerId if score @s page = @e[type=minecraft:llama,distance=0,limit=1] page run data modify entity @e[type=minecraft:llama,distance=0,limit=1] Items set from entity @s Items
execute unless score %page_compare page = @s page run data merge entity @s {DecorItem:{id:"minecraft:book",Count:1b,tag:{page:1b,s7_kill:1b,display:{Name:'{"text":"Turn Page","color":"aqua","italic":false}',Lore:['{"text":"Left-Click to page forward.","color":"gray"}','{"text":"Right-Click to page back.","color":"gray"}']}}}}
execute unless score %page_compare page = @s page store result entity @s DecorItem.Count byte 1 run scoreboard players get @s page
execute unless score %page_compare page = @s page run clear @p[distance=0] minecraft:book{page:1b}