
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage0/player_setup

# Tracks when players are at the end of the level
execute as @p[x=70,y=105,z=39,dx=20,dy=1,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=70,y=105,z=39,dx=20,dy=1,dz=4,scores={ignoreTrack=0,atFinish=0}] atFinish 1