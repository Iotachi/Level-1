
# Raises platform
setblock 335 93 24 minecraft:redstone_block
setblock 335 93 24 minecraft:lapis_block

# Visual and audio effects
execute as @a[team=!in_hub] at @s run playsound minecraft:block.note_block.chime block @s
playsound minecraft:block.piston.extend block @a[team=!in_hub] 336 94 21 1 2
particle minecraft:block minecraft:gold_block 336 99 21 .8 .1 .8 0 100 normal

# Pushing players up
tp @a[x=335,y=95,z=20,dx=2,dy=1,dz=2] ~ 99 ~

# Announcing checkpoint activation
tellraw @a[team=!in_hub] [{"selector":"@p[x=325,y=100,z=21,team=!in_hub]","color":"green"},{"text":" has unlocked the checkpoint"}]