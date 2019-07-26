
# Paints a random color
execute store result score @s paint_color run loot spawn ~ ~ ~ loot game:stage6/paint_color
execute if score @s paint_color matches 0 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_concrete replace #game:stage6/paintable
execute if score @s paint_color matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lime_concrete replace #game:stage6/paintable
execute if score @s paint_color matches 2 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:orange_concrete replace #game:stage6/paintable
execute if score @s paint_color matches 3 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:purple_concrete replace #game:stage6/paintable
execute if score @s paint_color matches 4 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:red_concrete replace #game:stage6/paintable
execute if score @s paint_color matches 5 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:yellow_concrete replace #game:stage6/paintable

# Sound effects
playsound minecraft:entity.slime.attack block @a[scores={ignoreTrack=0}]

# Deletes self when finished
kill @s