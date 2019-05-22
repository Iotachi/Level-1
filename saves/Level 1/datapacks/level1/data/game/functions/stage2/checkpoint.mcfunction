
# Raises platform
setblock 143 93 22 minecraft:redstone_block
setblock 143 93 22 minecraft:lapis_block

# Cosmetics
playsound minecraft:block.piston.extend block @a[scores={ignoreTrack=0}] 144 94 19 1 2
playsound minecraft:block.note_block.chime block @a[scores={ignoreTrack=0}] 144 98 19
particle minecraft:block minecraft:gold_block 144 99 19 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=143,y=95,z=18,dx=2,dy=1,dz=2] ~ 99 ~

# Announcing checkpoint activation
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@p[x=134,y=100,z=19,scores={ignoreTrack=0}]","color":"green"},{"text":" has unlocked the checkpoint"}]