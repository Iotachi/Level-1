
# Spawns a random item from a previously specified loot table
loot spawn ~ ~ ~ kill @s

# Prevents first digit from being 0, else it would be removed when code is converted into single integer
execute if entity @s[tag=reroll_zero] unless score %results code matches 1.. run kill @e[type=minecraft:item,nbt={Item:{tag:{value:0b,urng:0b}}}]


# Checks if that item has already been spawned
execute as @e[type=minecraft:item,nbt={Item:{tag:{urng:0b}}}] store result score @s code run data get entity @s Item.tag.value
execute as @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}}] if score @s code = @e[type=minecraft:item,nbt={Item:{tag:{urng:0b}}},limit=1] code run kill @e[type=minecraft:item,nbt={Item:{tag:{urng:0b}}}]

# If the new item is unique, store its result number and set to initialized
execute as @e[type=minecraft:item,nbt={Item:{tag:{urng:0b}}}] store result entity @s Item.tag.result byte 1 run scoreboard players get %results code
execute as @e[type=minecraft:item,nbt={Item:{tag:{urng:0b}}}] run data modify entity @s Item.tag.urng set value 1b


# Repeats until the correct number of items have been generated
execute store result score %results code if entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}}]
execute if score %results code < @s code run function game:stage7/setup/unique_rng

# Kills RNG setting entity
execute if score %results code = @s code run tp @s ~ -65 ~

# Resets %results' code score for future rng
execute if score %results code = @s code run scoreboard players reset %results code