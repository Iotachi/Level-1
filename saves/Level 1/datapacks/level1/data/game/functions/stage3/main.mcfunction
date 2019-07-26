
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage3/player_setup

# Tracks when players are at the end of the level
execute as @a[x=166,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=166,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0}] atFinish 3
scoreboard players remove @a[scores={ignoreTrack=0,atFinish=2..}] atFinish 1

# Ignores rhythm for players at the start or finish
execute if block 176 95 19 minecraft:air run tag @a[x=175,y=95,z=18,dx=2,dy=1,dz=2,scores={ignoreTrack=0}] add ignoreRhythm
execute unless block 176 94 19 minecraft:air run tag @a[x=175,y=99,z=18,dx=2,dy=1,dz=2,scores={ignoreTrack=0}] add ignoreRhythm
tag @a[scores={atFinish=2..,ignoreTrack=0}] add ignoreRhythm
scoreboard players set @a[tag=ignoreRhythm] rhythm 5

# Timing for jumps
scoreboard players add @a[tag=!ignoreRhythm,scores={ignoreTrack=0}] rhythm 1
execute as @a[scores={ignoreTrack=0,rhythm=18}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.32 1
execute as @a[scores={ignoreTrack=0,rhythm=38}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.05 1

scoreboard players set @a[scores={ignoreTrack=0,rhythm=53,jumped=1..}] jumped 0

execute as @a[scores={ignoreTrack=0,rhythm=58}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 .7 1

execute as @a[gamemode=adventure,scores={ignoreTrack=0,rhythm=60..,jumped=..0}] run function game:stage3/death
scoreboard players remove @a[scores={ignoreTrack=0,rhythm=60..}] rhythm 60

# Resets ignoreRhythm tag
tag @a[tag=ignoreRhythm] remove ignoreRhythm