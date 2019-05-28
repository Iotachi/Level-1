
# Prepares players for break room
execute as @a[tag=updateStage] run function game:break/player_setup

# Chest bartender mechanics
execute as @e[type=minecraft:armor_stand,tag=break_bartender] at @s run function game:break/bartender

# Changing the music
execute as @e[type=minecraft:slime,tag=break_jukebox,nbt={HurtTime:10s}] at @s run function game:break/change_disc