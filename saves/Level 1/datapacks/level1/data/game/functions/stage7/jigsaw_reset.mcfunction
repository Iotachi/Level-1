
# Summons extra piece item frame
kill @e[type=minecraft:item_frame,tag=jigsaw_extra]
summon minecraft:item_frame 290 106 34 {Facing:2b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:26,jigsaw_extra:1b,jigsaw_clear:1b}},Tags:["jigsaw_extra","has_item","semivulnerable","rotate_remove","s7_kill"]}

# Resets puzzle item frames
execute as @e[type=minecraft:item_frame,tag=jigsaw_clear] run data modify entity @s Item.Count set value 0b

# Kills jigsaw pieces on ground
kill @e[type=minecraft:item,nbt={Item:{tag:{jigsaw_clear:1b}}}]

# Clears jigsaw pieces from inventories
clear @a[scores={ignoreTrack=0}] minecraft:filled_map{jigsaw_clear:1b}

# Resets chest
clone 298 93 3 298 93 3 294 105 34