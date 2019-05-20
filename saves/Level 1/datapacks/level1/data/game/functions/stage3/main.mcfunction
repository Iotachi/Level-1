
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage0/player_setup

# Gives paintball to players
execute at @e[type=item,tag=isSnowballGiver] run scoreboard players set @a[distance=..1,scores={ignoreTrack=0,hasSnowball=0}] hasSnowball 1
execute as @a[scores={ignoreTrack=0,hasSnowball=1}] unless data entity @s Inventory[].tag.stage3Snowball run clear @s minecraft:snowball{stage3Snowball:1b}
execute as @a[scores={ignoreTrack=0,hasSnowball=1}] unless data entity @s Inventory[].tag.stage3Snowball run give @s minecraft:snowball{stage3Snowball:1b,display:{Name:"{\"text\":\"Paintball\",\"italic\":false,\"color\":\"aqua\"}"}}

# Kills snowball items if they've been thrown on the ground
execute as @e[type=item] if data entity @s Item.tag.stage3Snowball run kill @s

# Summons AEC when snowball is thrown
execute as @e[type=minecraft:snowball,tag=!stage3Kill] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["stage3Kill","stage3Paint"]}
tag @e[type=minecraft:snowball,tag=!stage3Kill] add stage3Kill

execute as @e[type=minecraft:snowball] run tp @e[type=area_effect_cloud,tag=stage3Paint,limit=1] @s