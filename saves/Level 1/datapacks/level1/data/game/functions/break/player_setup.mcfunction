
# Teleport player to break room
tp @s 236 83 30 -90 -20

# Sets spawn point to break room
spawnpoint @s 236 83 30

# Show title
title @s reset
title @s title {"text":"Break Time!","color":"yellow"}

# Play music
execute at @e[type=minecraft:slime,tag=break_jukebox,tag=playing_wait] run playsound minecraft:music_disc.wait record @s
execute at @e[type=minecraft:slime,tag=break_jukebox,tag=playing_stal] run playsound minecraft:music_disc.stal record @s
execute at @e[type=minecraft:slime,tag=break_jukebox,tag=playing_mall] run playsound minecraft:music_disc.mall record @s

# Causes hunger
effect clear @s minecraft:saturation
effect give @s minecraft:hunger 5 255 true

# Remove setup tag
tag @s remove updateStage