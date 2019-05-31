
# Runs when players first join or when the map resets
scoreboard players set @s ignoreTrack 0
effect give @s minecraft:saturation 1000000 0 true
effect give @s minecraft:resistance 1000000 127 true
gamemode adventure @s
tp @s 48 95 19 180 0
spawnpoint @s
clear @s
stopsound @s
team join players @s