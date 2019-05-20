
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage2/player_setup

# Tracks when players are at the end of the level
execute as @a[x=134,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=134,y=106.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0}] atFinish 3
scoreboard players remove @a[scores={ignoreTrack=0,atFinish=2..}] atFinish 1

# Ignores rhythm if players are at the start or at the finish
tag @a[tag=ignoreRhythm] remove ignoreRhythm
execute if block 144 94 19 minecraft:gold_block run tag @a[x=143,y=95,z=18,dx=2,dy=1,dz=2,scores={ignoreTrack=0}] add s2.ignoreRhythm
execute unless block 144 94 19 minecraft:gold_block run tag @a[x=143,y=99,z=18,dx=2,dy=1,dz=2,scores={ignoreTrack=0}] add s2.ignoreRhythm
tag @a[scores={ignoreTrack=0,atFinish=2..}] add s2.ignoreRhythm
scoreboard players set @a[tag=s2.ignoreRhythm] s2.rhythm 0

# Timing for jumps
scoreboard players add @a[tag=!s2.ignoreRhythm,scores={ignoreTrack=0}] s2.rhythm 1
execute as @a[scores={ignoreTrack=0,s2.rhythm=18}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.32 1
execute as @a[scores={ignoreTrack=0,s2.rhythm=38}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 1.05 1

scoreboard players set @a[scores={ignoreTrack=0,s2.rhythm=53,s2.jumped=1..}] s2.jumped 0

execute as @a[scores={ignoreTrack=0,s2.rhythm=58}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 16 .7 1

execute as @a[scores={ignoreTrack=0,s2.rhythm=60..,s2.jumped=..0}] run function game:stage2/death
scoreboard players remove @a[scores={ignoreTrack=0,s2.rhythm=60..}] s2.rhythm 60