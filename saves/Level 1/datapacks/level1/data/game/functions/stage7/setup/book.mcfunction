
# Retrieving 2 different colors/symbols as items
summon minecraft:silverfish ~ ~ ~ {DeathLootTable:"game:stage7/urng_symbols",Tags:["symbol_generator"]}
scoreboard players set @e[type=minecraft:silverfish,tag=symbol_generator] code 2
execute as @e[type=minecraft:silverfish,tag=symbol_generator] run function game:stage7/setup/unique_rng

# Selecting the primary color/symbol
data modify block 298 93 0 Items[0].tag.symbols set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:1b}}},limit=1] Item.tag.symbols


# Overwriting the top line if the number is 1 or 4
execute unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 0 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 2..3 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 5.. run data modify block 298 93 0 Items[0].tag.symbols[0] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[0]

# Overwriting the middle line if the number is 0, 1, or 7
execute unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 2..6 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 8.. run data modify block 298 93 0 Items[0].tag.symbols[1] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[1]

# Overwriting the bottom line if the number is 1, 4, 7, or 9
execute unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 0 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 2..3 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 5..6 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 8 run data modify block 298 93 0 Items[0].tag.symbols[2] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[2]

# Overwriting the top-left line if the number is 1, 2, 3, or 7
execute unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 0 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 4..6 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 8.. run data modify block 298 93 0 Items[0].tag.symbols[3] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[3]

# Overwriting the top-right line if the number is 5 or 6
execute unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 0..4 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 7.. run data modify block 298 93 0 Items[0].tag.symbols[4] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[4]

# Overwriting the bottom-left line if the number is 1, 3, 4, 5, 7, or 9
execute unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 0 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 2 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 6 unless score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 8 run data modify block 298 93 0 Items[0].tag.symbols[5] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[5]

# Overwriting the bottom-right line if the number is 2
execute if score @e[type=minecraft:item_frame,tag=book,limit=1] code matches 2 run data modify block 298 93 0 Items[0].tag.symbols[6] set from entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}},limit=1] Item.tag.symbols[6]


# Killing color/symbol items
kill @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}}]