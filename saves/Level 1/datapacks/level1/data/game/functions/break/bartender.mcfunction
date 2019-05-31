
# Looking at nearest player
execute facing entity @p[scores={ignoreTrack=0}] eyes run tp @s ~ ~ ~ ~ 0
tp @s[y_rotation=-135..45] ~ ~ ~ 0 0
tp @s[y_rotation=45..225] ~ ~ ~ 90 0
execute if entity @s[y_rotation=0] unless block ~ ~1 ~ minecraft:chest[facing=south] run setblock ~ ~1 ~ minecraft:chest[facing=south]{CustomName:'{"text":"Refreshments"}'}
execute if entity @s[y_rotation=90] unless block ~ ~1 ~ minecraft:chest[facing=west] run setblock ~ ~1 ~ minecraft:chest[facing=west]{CustomName:'{"text":"Refreshments"}'}

# Keeping chest supplied
execute if entity @s[y_rotation=0] unless blocks ~ ~1 ~ ~ ~1 ~ ~5 ~1 ~-1 all run data modify block ~ ~1 ~ Items set from block ~5 ~1 ~-1 Items
execute if entity @s[y_rotation=90] unless blocks ~ ~1 ~ ~ ~1 ~ ~5 ~1 ~-2 all run data modify block ~ ~1 ~ Items set from block ~5 ~1 ~-2 Items