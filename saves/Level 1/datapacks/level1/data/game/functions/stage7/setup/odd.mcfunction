
# Resets scenes and spawns entities
setblock 300 92 33 minecraft:redstone_block
setblock 300 92 33 minecraft:lapis_block

# Selecting the odd scene and detail
scoreboard players set @e[type=minecraft:slime,tag=scene] code -1
execute store result score @e[type=minecraft:slime,tag=scene,limit=1,sort=random] code run loot spawn ~ ~ ~ loot game:stage7/rng_0-8



# Randomize bookshelf tops [Detail ID: 0]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=0}] run fill ~-2 ~3 ~-2 ~2 ~3 ~2 minecraft:spruce_slab replace minecraft:spruce_trapdoor

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=0},limit=1] run fill ~-2 ~3 ~-2 ~2 ~3 ~2 minecraft:spruce_slab replace minecraft:spruce_trapdoor


# Randomize flower pot position [Detail ID: 1]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=1},limit=1] run fill ~-2 ~3 ~-1 ~2 ~3 ~-1 minecraft:potted_jungle_sapling replace #game:stage7/odd_replaceables
execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=1}] run fill ~-2 ~3 ~1 ~2 ~3 ~1 minecraft:potted_jungle_sapling replace #game:stage7/odd_replaceables

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=1},limit=1] run fill ~-2 ~3 ~1 ~2 ~3 ~1 minecraft:potted_jungle_sapling replace #game:stage7/odd_replaceables
execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene,scores={code=1}] run fill ~-2 ~3 ~-1 ~2 ~3 ~-1 minecraft:potted_jungle_sapling replace #game:stage7/odd_replaceables


# Randomizing plants [Detail ID: 2]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=2}] run fill ~-2 ~3 ~-1 ~2 ~3 ~1 minecraft:potted_cornflower replace minecraft:potted_jungle_sapling
execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=2}] run fill ~-2 ~2 ~-2 ~2 ~2 ~2 minecraft:potted_jungle_sapling replace minecraft:potted_cornflower

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=2},limit=1] run fill ~-2 ~3 ~-1 ~2 ~3 ~1 minecraft:potted_cornflower replace minecraft:potted_jungle_sapling
execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=2},limit=1] run fill ~-2 ~2 ~-2 ~2 ~2 ~2 minecraft:potted_jungle_sapling replace minecraft:potted_cornflower


# Randomizing chair [Detail ID: 3]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=3}] run fill ~-1 ~1 ~1 ~1 ~1 ~1 minecraft:oak_stairs[facing=south] replace minecraft:spruce_stairs
execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,tag=negative,scores={code=3}] run setblock ~ ~1 ~1 minecraft:oak_wall_sign[facing=east]
execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,tag=positive,scores={code=3}] run setblock ~ ~1 ~1 minecraft:oak_wall_sign[facing=west]

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=3},limit=1] run fill ~-1 ~1 ~1 ~1 ~1 ~1 minecraft:oak_stairs[facing=south] replace minecraft:spruce_stairs
execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene,tag=negative] unless entity @e[distance=0,scores={code=3},limit=1] run setblock ~ ~1 ~1 minecraft:oak_wall_sign[facing=east]
execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene,tag=positive] unless entity @e[distance=0,scores={code=3},limit=1] run setblock ~ ~1 ~1 minecraft:oak_wall_sign[facing=west]


# Randomizing table leg [Detail ID: 4]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=4}] run fill ~-2 ~1 ~-1 ~2 ~1 ~-1 minecraft:spruce_fence replace minecraft:oak_fence

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=4},limit=1] run fill ~-2 ~1 ~-1 ~2 ~1 ~-1 minecraft:spruce_fence replace minecraft:oak_fence


# Randomizing floor [Detail ID: 5]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=5}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:spruce_planks replace minecraft:brown_wool

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=5},limit=1] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:spruce_planks replace minecraft:brown_wool


# Randomizing blocks behind chair [Detail ID: 6]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=6}] run fill ~-1 ~1 ~2 ~1 ~2 ~2 minecraft:bookshelf replace minecraft:spruce_planks

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=6},limit=1] run fill ~-1 ~1 ~2 ~1 ~2 ~2 minecraft:bookshelf replace minecraft:spruce_planks

execute at @e[type=minecraft:slime,tag=scene] if block ~ ~1 ~2 minecraft:bookshelf run fill ~ ~1 ~2 ~ ~2 ~2 minecraft:spruce_planks


# Randomizing blocks beside TV [Detail ID: 7]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=7}] run fill ~-2 ~1 ~-1 ~2 ~2 ~-1 minecraft:spruce_planks replace minecraft:bookshelf

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=7},limit=1] run fill ~-2 ~1 ~-1 ~2 ~2 ~-1 minecraft:spruce_planks replace minecraft:bookshelf


# Randomizing paintings [Detail ID: 8]
execute store result score %detail code run loot spawn ~ ~ ~ loot game:stage7/rng_0-1

execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=8},limit=1] run summon minecraft:painting ~ ~2 ~1 {Invulnerable:1b,Facing:2b,Motive:"minecraft:aztec2",Tags:["s7_kill"]}
execute if score %detail code matches 0 at @e[type=minecraft:slime,tag=scene,scores={code=8}] run summon minecraft:painting ~ ~2 ~1 {Invulnerable:1b,Facing:2b,Motive:"minecraft:bomb",Tags:["s7_kill"]}

execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene] unless entity @e[distance=0,scores={code=8},limit=1] run summon minecraft:painting ~ ~2 ~1 {Invulnerable:1b,Facing:2b,Motive:"minecraft:bomb",Tags:["s7_kill"]}
execute if score %detail code matches 1 at @e[type=minecraft:slime,tag=scene,scores={code=8}] run summon minecraft:painting ~ ~2 ~1 {Invulnerable:1b,Facing:2b,Motive:"minecraft:aztec2",Tags:["s7_kill"]}



# Retrieving 3 different single-digit numbers as items for use as red herrings
summon minecraft:silverfish 304 107 45 {DeathLootTable:"game:stage7/urng_0-9",Tags:["red_herring_generator"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:paper",Count:1b,tag:{value:-1b,urng:0b}}}]}
execute store result entity @e[type=minecraft:item,nbt={Item:{tag:{value:-1b,urng:0b}}},limit=1] Item.tag.value byte 1 run scoreboard players get @e[type=minecraft:item_frame,tag=odd,limit=1] code
scoreboard players set @e[type=minecraft:silverfish,tag=red_herring_generator] code 4
execute as @e[type=minecraft:silverfish,tag=red_herring_generator] run function game:stage7/setup/unique_rng

# Setting numbers to scenes
scoreboard players operation @e[type=minecraft:slime,tag=scene,scores={code=0..}] code = @e[type=minecraft:item_frame,tag=odd,limit=1] code
execute store result score @e[type=minecraft:slime,scores={code=-1},limit=1,sort=random] code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:2b}}},limit=1] Item.tag.value
execute store result score @e[type=minecraft:slime,scores={code=-1},limit=1,sort=random] code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:3b}}},limit=1] Item.tag.value
execute store result score @e[type=minecraft:slime,scores={code=-1}] code run data get entity @e[type=minecraft:item,nbt={Item:{tag:{urng:1b,result:4b}}},limit=1] Item.tag.value

# Killing number items
kill @e[type=minecraft:item,nbt={Item:{tag:{urng:1b}}}]

# Inscribing scene numbers to signs
fill 299 94 28 301 94 36 minecraft:birch_planks replace minecraft:birch_wall_sign
fill 299 94 36 299 94 28 minecraft:birch_wall_sign[facing=east]{Text2:'{"score":{"objective":"code","name":"@e[type=minecraft:slime,tag=scene,limit=1,sort=nearest]"}}'} replace minecraft:birch_planks
fill 301 94 28 301 94 36 minecraft:birch_wall_sign[facing=west]{Text2:'{"score":{"objective":"code","name":"@e[type=minecraft:slime,tag=scene,limit=1,sort=nearest]"}}'} replace minecraft:birch_planks