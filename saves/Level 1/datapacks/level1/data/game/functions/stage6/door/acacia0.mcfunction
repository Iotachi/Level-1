
# Teleports player
execute as @a[x=261.5,y=101,z=33.5,distance=..0.3,y_rotation=0..180,scores={ignoreTrack=0}] at @s run tp @s ~22 ~5 ~-12

# Plays door sounds
execute if block 262 101 33 minecraft:acacia_door[open=true] run playsound minecraft:block.wooden_door.close block @a[scores={ignoreTrack=0}] 262 101 33
execute if block 282 106 21 minecraft:acacia_door[open=false] run playsound minecraft:block.wooden_door.open block @a[scores={ignoreTrack=0}] 282 106 21

# Changes doors
setblock 262 101 33 minecraft:acacia_door[facing=east,hinge=left,open=false]
setblock 282 106 21 minecraft:acacia_door[facing=west,hinge=right,open=true]

# Plays warp sounds
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 261 102 33 1 .5
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 283 107 21 1 .5

# Creates particle effects
particle minecraft:portal 261 102 33 .3 .5 .3 .1 50
particle minecraft:portal 283 107 21 .3 .5 .3 .1 50