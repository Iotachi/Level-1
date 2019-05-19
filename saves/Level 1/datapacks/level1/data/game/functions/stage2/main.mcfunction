
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage2/player_setup

# Tracks when players are at the end of the level
execute as @p[x=134,y=105,z=39,dx=20,dy=1,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=134,y=105,z=39,dx=20,dy=1,dz=4,scores={ignoreTrack=0}] atFinish 3
scoreboard players remove @a[scores={ignoreTrack=0,atFinish=2..}] atFinish 1
scoreboard players set @a[scores={ignoreTrack=0,atFinish=2..}] rhythm 0

# Timing for jumps
scoreboard players add @a[scores={ignoreTrack=0,atFinish=..1}] rhythm 1
execute as @a[scores={ignoreTrack=0,rhythm=58}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.32 1
execute as @a[scores={ignoreTrack=0,rhythm=78}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.05 1

scoreboard players set @a[scores={ignoreTrack=0,rhythm=93,jumped=1..}] jumped 0

execute as @a[scores={ignoreTrack=0,rhythm=98}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 .7 1

execute as @a[scores={ignoreTrack=0,rhythm=100..,jumped=..0}] run function game:stage2/death
scoreboard players remove @a[scores={ignoreTrack=0,rhythm=100..}] rhythm 100