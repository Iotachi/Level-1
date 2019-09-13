
# Resets checkpoint
setblock 307 93 22 minecraft:redstone_block
setblock 307 93 22 minecraft:lapis_block

# Kills stage-specific entities
tag @e[type=minecraft:item,x=287,y=94,z=3,dx=33,dy=15,dz=40] add s7_kill
tp @e[tag=s7_delete] ~ -65 ~
kill @e[tag=s7_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove code

# Empties paper dispenser
data modify block 306 97 9 Items set value []

# Removes jigsaw puzzle chest
setblock 294 105 34 minecraft:air

# Closes doors
fill 304 105 40 304 107 41 minecraft:gray_stained_glass