
# Runs immediately
execute if entity @s[gamemode=!creative] run tag @s add creative
execute if entity @s[gamemode=!creative] run schedule function game:player/creative_tick 2
execute if entity @s[gamemode=!creative] run gamemode creative @s

# Runs one tick later
execute unless entity @s run gamemode adventure @a[tag=creative]
execute unless entity @s run tag @a[tag=creative] remove creative