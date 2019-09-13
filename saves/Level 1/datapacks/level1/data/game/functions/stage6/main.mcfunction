
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage6/player_setup

# Tracks when players are at the end of the level
execute as @a[x=262,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=262,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] atFinish 1

# Gives paintball to players
execute at @e[type=item,tag=snowballGiver] if entity @p[distance=..1,scores={has_snowball=0},team=!in_hub] run playsound minecraft:entity.item.pickup block @a
execute at @e[type=item,tag=snowballGiver] run scoreboard players set @a[distance=..1,scores={ignoreTrack=0,has_snowball=0}] has_snowball 1
execute as @a[scores={ignoreTrack=0,has_snowball=1}] unless data entity @s Inventory[].tag.s6_snowball run clear @s minecraft:snowball{s6_snowball:1b}
execute as @a[scores={ignoreTrack=0,has_snowball=1}] unless data entity @s Inventory[].tag.s6_snowball run replaceitem entity @s hotbar.0 minecraft:snowball{s6_snowball:1b,display:{Name:"{\"text\":\"Paintball\",\"italic\":false,\"color\":\"aqua\"}"}}

# Kills snowball items if they've been dropped
execute as @e[type=minecraft:item] if data entity @s Item.tag.s6_snowball run kill @s

# Summons AEC when snowball is thrown
execute as @e[type=minecraft:snowball,tag=!s6_kill] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["s6_kill","paint"]}
tag @e[type=minecraft:snowball,tag=!s6_kill] add s6_kill

# Spawns blocks when a snowball disappears
execute as @e[type=minecraft:snowball] run tp @e[type=area_effect_cloud,tag=paint,limit=1,sort=nearest] @s
execute as @e[type=minecraft:snowball] at @s if block ~ ~ ~ minecraft:structure_void run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=paint] at @s unless entity @e[type=minecraft:snowball,distance=0] run function game:stage6/paint

# Stops paint from being thrown out the top of the stage
kill @e[tag=s6_kill,x=263,y=111,z=4,dx=18,dy=1,dz=38]

# Creating non-concrete blocks
execute unless block 272 100 27 minecraft:slime_block unless block 272 99 27 minecraft:structure_void run setblock 272 100 27 minecraft:slime_block
execute unless block 278 104 28 minecraft:ladder unless block 278 104 27 minecraft:structure_void run setblock 278 104 28 minecraft:ladder[facing=south]
execute unless block 277 106 20 minecraft:ladder unless block 276 106 20 minecraft:structure_void run setblock 277 106 20 minecraft:ladder[facing=east]

# Killing players who step on non-painted floor
execute as @a[scores={ignoreTrack=0}] at @s positioned ~ 95 ~ if entity @s[distance=..0.1] if block ~ 94 ~ #game:stage6/deadly run function game:stage6/death

# Killing players who are trapped
execute as @a[scores={ignoreTrack=0,suffocate=1..}] at @s anchored eyes unless block ~ ~ ~ #game:stage6/paint run scoreboard players set @s suffocate 0
execute as @a[scores={ignoreTrack=0}] at @s anchored eyes if block ~ ~ ~ #game:stage6/paint run scoreboard players add @s suffocate 1
execute as @a[scores={ignoreTrack=0,suffocate=20..}] run function game:stage6/death