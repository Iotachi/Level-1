
# Paints a random color
scoreboard players operation @s paintColor = @e[type=minecraft:area_effect_cloud,tag=paintColor,limit=1,sort=random] paintColor
execute if score @s paintColor matches 0 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_concrete replace #game:paintable
execute if score @s paintColor matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lime_concrete replace #game:paintable
execute if score @s paintColor matches 2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:orange_concrete replace #game:paintable
execute if score @s paintColor matches 3 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:purple_concrete replace #game:paintable
execute if score @s paintColor matches 4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:red_concrete replace #game:paintable
execute if score @s paintColor matches 5 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:yellow_concrete replace #game:paintable

# Sound effects
playsound minecraft:entity.slime.attack block @a[scores={ignoreTrack=0}]

# Deletes self when finished
kill @s