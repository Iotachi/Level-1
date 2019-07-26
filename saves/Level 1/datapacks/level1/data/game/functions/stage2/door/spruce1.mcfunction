
# Teleports player
execute as @a[x=133.5,y=101,z=21.5,distance=..0.3,y_rotation=0..180,scores={ignoreTrack=0}] at @s run tp @s ~22 ~ ~-16

# Plays door sounds
execute if block 154 101 5 minecraft:spruce_door[open=false] run playsound minecraft:block.wooden_door.open block @a[scores={ignoreTrack=0}] 154 101 5
execute if block 134 101 21 minecraft:spruce_door[open=true] run playsound minecraft:block.wooden_door.close block @a[scores={ignoreTrack=0}] 134 101 21

# Changes doors
setblock 154 101 5 minecraft:spruce_door[facing=west,hinge=right,open=true]
setblock 134 101 21 minecraft:spruce_door[facing=east,hinge=left,open=false]

# Plays warp sounds
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 155 102 5 1 .5
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 133 102 21 1 .5

# Creates particle effects
particle minecraft:portal 155 102 5 .3 .5 .3 .1 50
particle minecraft:portal 133 102 21 .3 .5 .3 .1 50