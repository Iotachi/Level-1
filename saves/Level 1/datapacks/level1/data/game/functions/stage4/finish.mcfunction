
# Effects
tellraw @a[scores={ignoreTrack=0}] {"text":"3.164 tons of TNT has reached the finish","color":"aqua"}
execute as @a[scores={ignoreTrack=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 16 2 1

# Opens door
fill 207 105 42 209 107 42 air destroy

# Summons void illusion blocks
summon minecraft:falling_block 207 107.98 42.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 208 107.98 42.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}
summon minecraft:falling_block 209 107.98 42.51 {NoGravity:1,Time:-2147483648,BlockState:{Name:"minecraft:black_concrete"},Tags:["s4_kill"]}