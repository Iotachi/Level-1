
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage6/player_setup

# Tracks when players are at the end of the level
execute as @a[x=271,y=105,z=38,dx=2,dy=0,dz=5,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=271,y=105,z=38,dx=2,dy=0,dz=5,scores={ignoreTrack=0,atFinish=0}] atFinish 1

# Oak doors
execute if entity @a[x=283.5,y=101,z=9.5,distance=..0.4,y_rotation=180..360,scores={ignoreTrack=0}] run function game:stage6/door/oak0
execute if entity @a[x=261.5,y=106,z=9.5,distance=..0.4,y_rotation=0..180,scores={ignoreTrack=0}] run function game:stage6/door/oak1