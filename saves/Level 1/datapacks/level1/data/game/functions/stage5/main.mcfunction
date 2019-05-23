
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage0/player_setup

# Tracks when players are at the end of the level
execute as @a[x=230,y=105.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=230,y=105.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] atFinish 1

# Updates players' jump boost if they left and rejoined the world
effect give @a[scores={ignoreTrack=0,leftGame=1..}] minecraft:jump_boost 1000000 250 true
scoreboard players set @a[scores={leftGame=1..}] leftGame 0