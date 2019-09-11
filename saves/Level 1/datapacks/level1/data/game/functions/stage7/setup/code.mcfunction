
# Retrieving 5 different single-digit numbers as items
summon minecraft:silverfish ~ ~ ~ {DeathLootTable:"game:stage7/urng_0-9",Tags:["code_generator","reroll_zero"]}
scoreboard players set @e[type=minecraft:silverfish,tag=code_generator] code 5
execute as @e[type=minecraft:silverfish,tag=code_generator] run function game:stage7/setup/unique_rng

# Transfering numbers from items to scoreboard
execute store result score %digit0 code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:0b}}},limit=1] Item.tag.value
execute store result score %digit1 code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:1b}}},limit=1] Item.tag.value
execute store result score %digit2 code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:2b}}},limit=1] Item.tag.value
execute store result score %digit3 code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:3b}}},limit=1] Item.tag.value
execute store result score %digit4 code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:4b}}},limit=1] Item.tag.value

# Combining individual digits into a single 5-digit integer
scoreboard players set #10 code 10
scoreboard players operation %code code = %digit0 code
scoreboard players operation %code code *= #10 code
scoreboard players operation %code code += %digit1 code
scoreboard players operation %code code *= #10 code
scoreboard players operation %code code += %digit2 code
scoreboard players operation %code code *= #10 code
scoreboard players operation %code code += %digit3 code
scoreboard players operation %code code *= #10 code
scoreboard players operation %code code += %digit4 code

# Converting code integer into string
execute store result entity @e[type=item,nbt={Item:{tag:{urng:1b,result:0b}}},limit=1] Item.tag.int_to_string int 1 run scoreboard players get %code code
setblock 300 106 45 minecraft:oak_wall_sign[facing=south]{Text1:'{"nbt":"Item.tag.int_to_string","entity":"@e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:0b}}},limit=1]"}'} destroy

# Killing number items
kill @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}}]