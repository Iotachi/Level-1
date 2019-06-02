
# Teleports player
execute as @a[x=283.5,y=101,z=9.5,distance=..0.3,y_rotation=180..360,scores={ignoreTrack=0}] at @s run tp @s ~-22 ~5 ~

# Plays door sounds
execute if block 282 101 9 minecraft:oak_door[open=true] run playsound minecraft:block.wooden_door.close block @a[scores={ignoreTrack=0}] 282 101 9
execute if block 262 106 9 minecraft:oak_door[open=false] run playsound minecraft:block.wooden_door.open block @a[scores={ignoreTrack=0}] 262 106 9

# Changes doors
setblock 282 101 9 minecraft:oak_door[facing=west,hinge=right,open=false]
setblock 262 106 9 minecraft:oak_door[facing=east,hinge=left,open=true]

# Plays warp sounds
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 283 102 9 1 .5
playsound minecraft:entity.enderman.teleport block @a[scores={ignoreTrack=0}] 261 107 9 1 .5

# Creates particle effects
particle minecraft:portal 283 102 9 .3 .5 .3 .1 50
particle minecraft:portal 261 107 9 .3 .5 .3 .1 50