
# Raises platform
setblock 207 93 20 minecraft:redstone_block
setblock 207 93 20 minecraft:lapis_block

# Visual and audio effects
execute as @a[scores={ignoreTrack=0}] at @s run playsound minecraft:block.note_block.chime block @s
playsound minecraft:block.piston.extend block @a[scores={ignoreTrack=0}] 208 94 17 1 2
particle minecraft:block minecraft:gold_block 208 99 17 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=207,y=95,z=16,dx=2,dy=1,dz=2] ~ 99 ~

# Announcing checkpoint activation
tellraw @a[scores={ignoreTrack=0}] {"text":"1.364 tons of TNT has unlocked the checkpoint","color":"green"}