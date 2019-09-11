
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage4/player_setup

# Activating the checkpoint
execute if block 208 95 17 minecraft:air if block 199 100 17 minecraft:detector_rail[powered=true] run function game:stage4/checkpoint

# Activator rail timer
scoreboard players add #activatorTimer s4_control 1
execute if score #activatorTimer s4_control matches 80.. run scoreboard players remove #activatorTimer s4_control 80
execute if score #activatorTimer s4_control matches 0 as @e[type=area_effect_cloud,tag=activatorRail] at @s run setblock ~ ~-1 ~ minecraft:red_terracotta
execute if score #activatorTimer s4_control matches 65 as @e[type=area_effect_cloud,tag=activatorRail] at @s run setblock ~ ~-1 ~ minecraft:redstone_block
execute if score #activatorTimer s4_control matches 65.. as @e[type=area_effect_cloud,tag=activatorRail] at @s run particle minecraft:firework ~ ~.2 ~ .1 .1 .1 .07 1

# Spawning minecarts
execute store result score #player_count s4_control if entity @a[scores={ignoreTrack=0}]
execute store result score #minecart_count s4_control if entity @e[type=minecraft:command_block_minecart,tag=payload_minecart]
execute if score #minecart_count s4_control <= #player_count s4_control unless entity @e[type=minecraft:command_block_minecart,tag=payload_minecart,x=213,y=95,z=21,dx=0,dy=1,dz=8] run summon minecraft:command_block_minecart 213 96 28 {Invulnerable:1b,Command:"function game:stage4/explode",CustomDisplayTile:1,DisplayOffset:6,DisplayState:{Name:"minecraft:tnt"},Tags:["payload_minecart","s4_kill"]}

# Pushing minecarts out of the spawn area
data merge entity @e[type=minecraft:command_block_minecart,tag=payload_minecart,x=213,y=95,z=26.5,distance=..1,limit=1] {Motion:[0.0,0.0,-0.1]}

# Blowing up minecarts that pressed a detector rail
execute as @e[type=minecraft:command_block_minecart,tag=payload_minecart,tag=noMessageExplode] at @s run function game:stage4/explode