
# Checks which blocks can be painted
clone ~-1 ~-19 ~-1 ~1 ~-17 ~1 ~-1 ~-1 ~-1 filtered minecraft:white_concrete

# Paints a random color
scoreboard players operation @s paintColor = @e[type=minecraft:area_effect_cloud,tag=stage3PaintColor,limit=1,sort=random] paintColor
execute if score @s paintColor matches 0 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_concrete replace minecraft:white_concrete
execute if score @s paintColor matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lime_concrete replace minecraft:white_concrete
execute if score @s paintColor matches 2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:orange_concrete replace minecraft:white_concrete
execute if score @s paintColor matches 3 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:purple_concrete replace minecraft:white_concrete
execute if score @s paintColor matches 4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:red_concrete replace minecraft:white_concrete
execute if score @s paintColor matches 5 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:yellow_concrete replace minecraft:white_concrete

# Sound effects
playsound minecraft:entity.slime.attack block @a[scores={ignoreTrack=0}]

# Deletes self when finished
kill @s