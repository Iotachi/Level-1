
# Raises platform
setblock 271 93 22 minecraft:redstone_block
setblock 271 93 22 minecraft:lapis_block

# Visual and audio effects
execute as @a[scores={ignoreTrack=0}] at @s run playsound minecraft:block.note_block.chime block @s
playsound minecraft:block.piston.extend block @a[scores={ignoreTrack=0}] 272 94 19 1 2
particle minecraft:block minecraft:gold_block 272 99 19 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=271,y=95,z=18,dx=2,dy=1,dz=2] ~ 99 ~

# Announcing checkpoint activation
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@p[x=262,y=100,z=19,scores={ignoreTrack=0}]","color":"green"},{"text":" has unlocked the checkpoint"}]