
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage3/player_setup

# Tracks when players are at the end of the level
execute as @a[x=166,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=166,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] atFinish 1

# Gives paintball to players
execute at @e[type=item,tag=s3.snowballGiver] run scoreboard players set @a[distance=..1,scores={ignoreTrack=0,s3.hasSnowball=0}] s3.hasSnowball 1
execute as @a[scores={ignoreTrack=0,s3.hasSnowball=1}] unless data entity @s Inventory[].tag.s3snowball run clear @s minecraft:snowball{s3snowball:1b}
execute as @a[scores={ignoreTrack=0,s3.hasSnowball=1}] unless data entity @s Inventory[].tag.s3snowball run give @s minecraft:snowball{s3snowball:1b,display:{Name:"{\"text\":\"Paintball\",\"italic\":false,\"color\":\"aqua\"}"}}

# Kills snowball items if they've been dropped
execute as @e[type=minecraft:item] if data entity @s Item.tag.s3snowball run kill @s

# Summons AEC when snowball is thrown
execute as @e[type=minecraft:snowball,tag=!s3.kill] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["s3.kill","s3.paint"]}
tag @e[type=minecraft:snowball,tag=!s3.kill] add s3.kill

# Spawns blocks when a snowball disappears
execute as @e[type=minecraft:snowball] run tp @e[type=area_effect_cloud,tag=s3.paint,limit=1,sort=nearest] @s
execute as @e[type=minecraft:snowball] at @s if block ~ ~ ~ minecraft:structure_void run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=s3.paint] at @s unless entity @e[type=minecraft:snowball,distance=0] run function game:stage3/paint

# Stops paint from being thrown out the top of the stage
kill @e[tag=s3.kill,x=167,y=111,z=4,dx=18,dy=1,dz=38]

# Creating non-concrete blocks
execute unless block 176 100 27 minecraft:slime_block unless block 176 99 27 minecraft:structure_void run setblock 176 100 27 minecraft:slime_block
execute unless block 182 104 28 minecraft:ladder unless block 182 104 27 minecraft:structure_void run setblock 182 104 28 minecraft:ladder[facing=south]
execute unless block 181 106 20 minecraft:ladder unless block 180 106 20 minecraft:structure_void run setblock 181 106 20 minecraft:ladder[facing=east]

# Killing players who step on non-painted floor
execute as @a[scores={ignoreTrack=0}] at @s if block ~ ~-.1 ~ minecraft:quartz_block run function game:stage3/death
execute as @a[scores={ignoreTrack=0}] at @s if block ~ ~-.1 ~ minecraft:light_blue_terracotta run function game:stage3/death