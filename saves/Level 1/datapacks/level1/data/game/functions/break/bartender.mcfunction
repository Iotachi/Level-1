
# Looking at nearest player
execute facing entity @p[scores={ignoreTrack=0}] eyes run tp @s ~ ~ ~ ~ 0
tp @s[y_rotation=-135..44] ~ ~ ~ 0 0
tp @s[y_rotation=45..224] ~ ~ ~ 90 0
execute if entity @s[y_rotation=0] if block ~ ~1 ~ minecraft:chest[facing=west] run setblock ~ ~1 ~ minecraft:chest[facing=south]
execute if entity @s[y_rotation=90] if block ~ ~1 ~ minecraft:chest[facing=south] run setblock ~ ~1 ~ minecraft:chest[facing=west]

# Keeping chest supplied
data merge block ~ ~1 ~ {Items:[{Slot:2,id:"minecraft:paper",Count:1,tag:{display:{Name:'{"text":"Menu","italic":false}'}}},{Slot:10,id:"minecraft:cooked_salmon",Count:1,tag:{display:{Name:'{"text":"Smoked Salmon","italic":false}'}}},{Slot:12,id:"minecraft:suspicious_stew",Count:1,tag:{display:{Name:'{"text":"Caesar Salad","italic":false}'}}}]}