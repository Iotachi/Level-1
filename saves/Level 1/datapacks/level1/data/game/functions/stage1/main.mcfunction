
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage1/player_setup

# Tracks when players are at the end of the level
execute as @a[x=102,y=106.5,z=119,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=102,y=106.5,z=119,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] atFinish 1

# Kills players that touch lava
execute as @a[scores={ignoreTrack=0},gamemode=adventure] store result score @s s1.onFire run data get entity @s Fire
execute as @a[scores={s1.onFire=0..}] run function game:stage1/death