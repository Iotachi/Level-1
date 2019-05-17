
# Raises platform
setblock 111 93 102 minecraft:redstone_block
setblock 111 93 102 minecraft:lapis_block

# Cosmetics
playsound minecraft:block.piston.extend block @a[scores={ignoreTrack=0}] 112 94 99 1 2
playsound minecraft:block.note_block.chime block @a[scores={ignoreTrack=0}] 112 98 99
particle minecraft:block minecraft:gold_block 112.35 99.00 99.33 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=111,y=95,z=98,dx=2,dy=1,dz=2] ~ 99 ~

# Announcing checkpoint activation
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@p[x=102,y=100,z=99,scores={ignoreTrack=0}]","color":"green"},{"text":" has unlocked the checkpoint"}]