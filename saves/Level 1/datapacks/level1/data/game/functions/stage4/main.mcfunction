
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage4/player_setup

# Activating the checkpoint
execute if block 208 94 27 minecraft:gold_block if block 199 100 27 minecraft:detector_rail[powered=true] run function game:stage4/checkpoint

# Activator rail timer
scoreboard players add #activatorTimer s4_control 1
execute if score #activatorTimer s4_control matches 80.. run scoreboard players remove #activatorTimer s4_control 80
execute if score #activatorTimer s4_control matches 0 as @e[type=area_effect_cloud,tag=activatorRail] at @s run setblock ~ ~-1 ~ minecraft:red_concrete
execute if score #activatorTimer s4_control matches 65 as @e[type=area_effect_cloud,tag=activatorRail] at @s run setblock ~ ~-1 ~ minecraft:redstone_block
execute if score #activatorTimer s4_control matches 65.. as @e[type=area_effect_cloud,tag=activatorRail] at @s run particle minecraft:firework ~ ~.2 ~ .1 .1 .1 .07 1

# Spawning minecarts
scoreboard players set #playerCount s4_control 0
execute as @a[scores={ignoreTrack=0}] run scoreboard players add #playerCount s4_control 1
scoreboard players set #minecartCount s4_control 0
execute as @e[type=minecraft:command_block_minecart,tag=payloadMinecart] run scoreboard players add #minecartCount s4_control 1
execute if score #minecartCount s4_control <= #playerCount s4_control unless entity @e[type=minecraft:command_block_minecart,tag=payloadMinecart,x=213,y=95,z=31,dx=0,dy=1,dz=9] run summon minecraft:command_block_minecart 213 96 40 {Invulnerable:1b,Command:"function game:stage4/explode",CustomDisplayTile:1,DisplayOffset:6,DisplayState:{Name:"minecraft:tnt"},Tags:["payloadMinecart","s4_kill"]}

# Easier minecart control when player crouches
execute as @a[scores={isCrouching=1..,ignoreTrack=0}] at @s rotated ~ 0 positioned ^ ^ ^1 run tp @e[type=minecraft:command_block_minecart,tag=payloadMinecart,distance=..0.5,limit=1,sort=nearest] ~ ~ ~
scoreboard players set @a[scores={isCrouching=1..,ignoreTrack=0}] isCrouching 0

# Pushing minecarts out of the spawn area
data merge entity @e[type=minecraft:command_block_minecart,tag=payloadMinecart,x=213,y=95,z=37.5,distance=..1,limit=1] {Motion:[0.0d,0.0d,-0.1d]}

# Blowing up minecarts that pressed a detector rail
execute as @e[type=minecraft:command_block_minecart,tag=payloadMinecart,tag=noMessageExplode] run function game:stage4/explode