
# Teleports player
execute as @a[x=155.5,y=106,z=41.5,distance=..0.3,y_rotation=180..360,scores={ignoreTrack=0}] at @s run tp @s 155.3 101 33 ~180 ~

# Plays door sounds
execute if block 154 101 33 minecraft:birch_door[open=false] run playsound minecraft:block.wooden_door.open block @a[scores={ignoreTrack=0}] 154 101 33
execute if block 154 106 41 minecraft:birch_door[open=true] run playsound minecraft:block.wooden_door.close block @a[scores={ignoreTrack=0}] 154 106 41

# Changes doors
setblock 154 101 33 minecraft:birch_door[facing=west,hinge=right,open=true]
setblock 154 106 41 minecraft:birch_door[facing=west,hinge=left,open=false]

# Plays warp sounds
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 155 102 33 1 .5
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 155 107 41 1 .5

# Creates particle effects
particle minecraft:portal 155 102 33 .3 .5 .3 .1 50
particle minecraft:portal 155 107 41 .3 .5 .3 .1 50