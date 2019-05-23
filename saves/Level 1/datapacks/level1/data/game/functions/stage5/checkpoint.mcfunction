
# Raises platform
setblock 239 92 23 minecraft:redstone_block
setblock 239 92 23 minecraft:lapis_block

# Cosmetics
playsound minecraft:block.piston.extend block @a[scores={ignoreTrack=0}] 240 93 19 1 2
playsound minecraft:block.note_block.chime block @a[scores={ignoreTrack=0}] 240 97 19
particle minecraft:block minecraft:gold_block 240 98 19 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=239,y=94,z=18,dx=2,dy=1,dz=2] ~ 98 ~

# Announcing checkpoint activation
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@p[x=230,y=99,z=19,scores={ignoreTrack=0}]","color":"green"},{"text":" has unlocked the checkpoint"}]