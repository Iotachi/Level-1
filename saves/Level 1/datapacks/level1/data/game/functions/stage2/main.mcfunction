
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage2/player_setup

# Timing for jumps
scoreboard players add @a[scores={ignoreTrack=0}] rhythm 1
execute as @a[scores={ignoreTrack=0,rhythm=58}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.32 1
execute as @a[scores={ignoreTrack=0,rhythm=78}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.05 1

scoreboard players set @a[scores={ignoreTrack=0,rhythm=93,jumped=1..}] jumped 0

execute as @a[scores={ignoreTrack=0,rhythm=98}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 .7 1

execute as @a[scores={ignoreTrack=0,rhythm=100..,jumped=..0}] run function game:stage2/death
scoreboard players remove @a[scores={ignoreTrack=0,rhythm=100..}] rhythm 100