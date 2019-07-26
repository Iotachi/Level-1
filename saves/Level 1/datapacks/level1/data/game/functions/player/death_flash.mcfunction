
# Runs immediately
execute if entity @s run tag @s add flash
execute if entity @s run schedule function game:player/death_flash 1

# Runs one tick later
execute unless entity @s as @a[tag=flash] at @s anchored eyes run particle minecraft:flash ^ ^ ^.1 0 0 0 0 1 force @s
execute unless entity @s run tag @a[tag=flash] remove flash