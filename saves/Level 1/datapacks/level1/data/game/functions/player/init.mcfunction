
# Temporary until ignoreTrack scoreboard has been replaced fully by in_hub team
scoreboard players set @s ignoreTrack 0

# General
gamemode adventure @s
clear @s
stopsound @s
xp set @s 100 levels

# Potion effects
effect give @s minecraft:saturation 1000000 0 true
effect give @s minecraft:night_vision 1000000 0 true
effect give @s minecraft:resistance 1000000 127 true

# Placing player in hub if hub has been reached
execute if score #hub functionActive matches 1 run team join in_hub @s
execute if score #hub functionActive matches 1 run tp @s 16 99 8 0 0
execute if score #hub functionActive matches 1 run spawnpoint @s 16 99 8

# Otherwise setting them to playing mode
execute unless score #hub functionActive matches 1 run team join playing @s
execute unless score #hub functionActive matches 1 run tp @s 48 95 19 180 0
execute unless score #hub functionActive matches 1 run spawnpoint @s 48 95 19