
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage7/player_setup


# Gives players levels
xp set @a[team=!in_hub] 100 levels
# Refils paper dispenser
execute unless block 306 97 9 minecraft:dispenser{Items:[{id:"minecraft:paper"}]} run data merge block 306 97 9 {Items:[{Slot:4b,id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":""}'}}}]}

# Dropping code into hopper
execute unless block 304 105 40 minecraft:air as @e[type=minecraft:item,x=300.5,y=105,z=41.5,distance=..0.5,nbt={Item:{id:"minecraft:paper",tag:{RepairCost:0}}}] at @s run function game:stage7/code_input

# Fixing anvil if broken
execute if block 300 105 43 minecraft:chipped_anvil run setblock 300 105 43 minecraft:anvil[facing=west]


# Item frame rotation prevention
execute as @e[type=minecraft:item_frame,tag=ignore_rotation,nbt={ItemRotation:1b}] run data modify entity @s ItemRotation set value 0

# Removes item from rotated item frames
execute as @e[type=minecraft:item_frame,tag=rotate_remove,nbt={ItemRotation:1b}] at @s run summon minecraft:item ^ ^ ^.4 {PickupDelay:10s,Item:{id:"minecraft:paper",Count:1b}}
execute as @e[type=minecraft:item_frame,tag=rotate_remove,nbt={ItemRotation:1b}] at @s positioned ^ ^ ^.4 run data modify entity @e[type=minecraft:item,distance=0,limit=1] Item set from entity @s Item
execute as @e[type=minecraft:item_frame,tag=rotate_remove,nbt={ItemRotation:1b}] run data merge entity @s {Item:{Count:0b},ItemRotation:0b}

# Makes filled item frames vulnerable and empty item frames invulnerable
execute as @e[type=minecraft:item_frame,tag=semivulnerable,nbt={Invulnerable:1b,Item:{Count:1b}}] run data modify entity @s Invulnerable set value 0b
execute as @e[type=minecraft:item_frame,tag=semivulnerable,nbt={Invulnerable:0b}] unless entity @s[nbt={Item:{Count:1b}}] run data modify entity @s Invulnerable set value 1b


# Book puzzle teleports
execute at @a[x=319.5,y=102.5,z=17.5,distance=..0.3,team=!in_hub] run tp @p[distance=0] ~-26 ~ ~
execute at @a[x=293.5,y=103.5,z=17.5,distance=..0.3,team=!in_hub] run tp @p[distance=0] ~26 ~ ~

# Book puzzle chest refill
execute unless blocks 294 101 17 294 101 17 298 93 0 all run data modify block 294 101 17 Items set from block 298 93 0 Items


# Jigsaw puzzle teleports
tag @a[x=293.5,y=106,z=25.5,distance=..1,tag=in_jigsaw,team=!in_hub] remove in_jigsaw
tag @a[x=293.5,y=106,z=25.5,distance=..1,tag=teleport,team=!in_hub] remove teleport
tag @a[x=287.5,y=106,z=33.5,distance=..1,tag=!in_jigsaw,team=!in_hub] add in_jigsaw
tag @a[x=293.5,y=101,z=25.5,distance=..1,tag=!teleport,team=!in_hub] add teleport
execute at @a[x=293.5,y=103.5,z=25.5,distance=..0.3,tag=teleport,tag=!in_jigsaw,team=!in_hub] run tp @p[distance=0] ~-6 ~ ~8
execute at @a[x=287.5,y=102.5,z=33.5,distance=..0.3,team=!in_hub] run tp @p[distance=0] ~6 ~ ~-8

# Removes empty chest
execute if block 294 105 34 minecraft:trapped_chest unless data block 294 105 34 Items[0] unless block 294 103 34 minecraft:note_block[powered=true] run setblock 294 105 34 minecraft:air destroy

# Removing map from extra piece item frame
execute as @e[type=minecraft:item_frame,tag=jigsaw_extra,tag=has_item] unless data entity @s Item run kill @e[type=minecraft:item,nbt={Item:{tag:{jigsaw_extra:1b}}}]
execute as @e[type=minecraft:item_frame,tag=jigsaw_extra,tag=has_item] unless data entity @s Item as @e[type=minecraft:item,nbt={Item:{tag:{jigsaw_clear:1b}}}] run data modify entity @s Item.tag.map set from entity @s Item.tag.jigsaw_piece
execute as @e[type=minecraft:item_frame,tag=jigsaw_extra,tag=has_item] unless data entity @s Item run tag @s remove has_item

# Placing map in extra piece item frame
execute as @e[type=minecraft:item_frame,tag=jigsaw_extra,tag=!has_item,nbt={Item:{id:"minecraft:filled_map"}}] run data modify entity @s Item.tag.map set from entity @s Item.tag.jigsaw_number
tag @e[type=minecraft:item_frame,tag=jigsaw_extra,tag=!has_item,nbt={Item:{id:"minecraft:filled_map"}}] add has_item