
# Raises platform
setblock 207 93 30 minecraft:redstone_block
setblock 207 93 30 minecraft:lapis_block

# Cosmetics
playsound minecraft:block.piston.extend block @a[scores={ignoreTrack=0}] 208 94 27 1 2
playsound minecraft:block.note_block.chime block @a[scores={ignoreTrack=0}] 208 98 27
particle minecraft:block minecraft:gold_block 208 99 27 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=207,y=95,z=26,dx=2,dy=1,dz=2] ~ 99 ~

# Announcing checkpoint activation
tellraw @a[scores={ignoreTrack=0}] {"text":"1.364 tons of TNT has unlocked the checkpoint","color":"green"}