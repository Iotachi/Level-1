
# Retrieving 5 different maps to act as cypher symbols
summon minecraft:silverfish 306 107 45 {DeathLootTable:"game:stage7/urng_0-9",Tags:["cypher_generator"]}
scoreboard players set @e[type=minecraft:silverfish,tag=cypher_generator] code 5
execute as @e[type=minecraft:silverfish,tag=cypher_generator] at @s run function game:stage7/setup/unique_rng

# Displaying the maps above the anvil
data modify entity @e[type=minecraft:item_frame,tag=display0,limit=1] Item.tag.map set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:0b}}},limit=1] Item.tag.value
data modify entity @e[type=minecraft:item_frame,tag=display1,limit=1] Item.tag.map set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:1b}}},limit=1] Item.tag.value
data modify entity @e[type=minecraft:item_frame,tag=display2,limit=1] Item.tag.map set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:2b}}},limit=1] Item.tag.value
data modify entity @e[type=minecraft:item_frame,tag=display3,limit=1] Item.tag.map set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:3b}}},limit=1] Item.tag.value
data modify entity @e[type=minecraft:item_frame,tag=display4,limit=1] Item.tag.map set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:4b}}},limit=1] Item.tag.value

# Randomly assigning each map to a puzzle
tp @e[x=306,y=107,z=45,distance=..1,type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1,sort=random] @e[type=minecraft:item_frame,tag=odd,limit=1]
tp @e[x=306,y=107,z=45,distance=..1,type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1,sort=random] @e[type=minecraft:item_frame,tag=board,limit=1]
tp @e[x=306,y=107,z=45,distance=..1,type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1,sort=random] @e[type=minecraft:item_frame,tag=barrier,limit=1]
tp @e[x=306,y=107,z=45,distance=..1,type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1,sort=random] @e[type=minecraft:item_frame,tag=book,limit=1]
tp @e[x=306,y=107,z=45,distance=..1,type=minecraft:item,nbt={Item:{tag:{urng:1b}}}] @e[type=minecraft:item_frame,tag=jigsaw,limit=1]

# Setting the answer of each puzzle based on the order of the symbols
execute at @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:0b}}}] run scoreboard players operation @e[type=minecraft:item_frame,limit=1,sort=nearest] code = %digit0 code
execute at @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:1b}}}] run scoreboard players operation @e[type=minecraft:item_frame,limit=1,sort=nearest] code = %digit1 code
execute at @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:2b}}}] run scoreboard players operation @e[type=minecraft:item_frame,limit=1,sort=nearest] code = %digit2 code
execute at @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:3b}}}] run scoreboard players operation @e[type=minecraft:item_frame,limit=1,sort=nearest] code = %digit3 code
execute at @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:4b}}}] run scoreboard players operation @e[type=minecraft:item_frame,limit=1,sort=nearest] code = %digit4 code
execute at @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:5b}}}] run scoreboard players operation @e[type=minecraft:item_frame,limit=1,sort=nearest] code = %digit5 code

# Setting the puzzle item frames to display their map
execute as @e[type=minecraft:item_frame,tag=puzzle_display] at @s run data modify entity @s Item.tag.map set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1,sort=nearest] Item.tag.value

# Killing map items
kill @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}}]