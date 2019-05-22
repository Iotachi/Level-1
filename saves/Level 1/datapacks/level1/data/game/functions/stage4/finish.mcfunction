
# Effects
tellraw @a[scores={ignoreTrack=0}] {"text":"3.164 tons of TNT has reached the finish","color":"aqua"}
execute as @a[scores={ignoreTrack=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 16 2 1

# Opens door
fill 207 105 52 209 107 52 air destroy