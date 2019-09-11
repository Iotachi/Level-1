
# Clones a sign based on the code number
summon minecraft:area_effect_cloud 295 93 0 {Tags:["board_sign","s7_kill"]}
execute store result entity @e[type=minecraft:area_effect_cloud,tag=board_sign,limit=1] Pos[2] double 1 run scoreboard players get @e[type=minecraft:item_frame,tag=board,limit=1] code
execute at @e[type=minecraft:area_effect_cloud,tag=board_sign] run clone ~ ~ ~ ~ ~ ~ 299 97 3