
# Stops whatever music is being played
stopsound @a[scores={ignoreTrack=0}] record

# Changing music
data merge entity @s[tag=playing_wait,tag=!updated] {CustomName:'{"text":"C418 - Stal","color":"gray"}',Tags:["break_kill","break_jukebox","playing_stal","updated"]}
data merge entity @s[tag=playing_stal,tag=!updated] {CustomName:'{"text":"C418 - Mall","color":"light_purple"}',Tags:["break_kill","break_jukebox","playing_mall","updated"]}
data merge entity @s[tag=playing_mall,tag=!updated] {CustomName:'{"text":"OFF","color":"red"}',Tags:["break_kill","break_jukebox","playing_none","updated"]}
data merge entity @s[tag=playing_none,tag=!updated] {CustomName:'{"text":"C418 - Wait","color":"aqua"}',Tags:["break_kill","break_jukebox","playing_wait","updated"]}
tag @s remove updated

# Playing new music
execute if entity @s[tag=playing_stal] run playsound minecraft:music_disc.stal record @a[scores={ignoreTrack=0}]
execute if entity @s[tag=playing_wait] run playsound minecraft:music_disc.wait record @a[scores={ignoreTrack=0}]
execute if entity @s[tag=playing_mall] run playsound minecraft:music_disc.mall record @a[scores={ignoreTrack=0}]