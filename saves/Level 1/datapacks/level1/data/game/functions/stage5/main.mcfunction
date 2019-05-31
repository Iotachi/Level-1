
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage5/player_setup

# Tracks when players are at the end of the level
execute as @a[x=230,y=105.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] run function game:player/reach_finish
scoreboard players set @a[x=230,y=105.5,z=39,dx=20,dy=0,dz=4,scores={ignoreTrack=0,atFinish=0}] atFinish 1

# Levitation visual and audio effects
execute as @a[scores={ignoreTrack=0},nbt={ActiveEffects:[{Id:25b}]}] at @s run particle minecraft:dragon_breath ~ ~.2 ~ .2 .2 .2 0 1
execute as @a[tag=playedSound,scores={ignoreTrack=0}] unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run tag @s remove playedSound
execute as @a[tag=!playedSound,nbt={ActiveEffects:[{Id:25b}]},scores={ignoreTrack=0}] at @s run playsound minecraft:entity.shulker.shoot block @a
tag @a[tag=!playedSound,nbt={ActiveEffects:[{Id:25b}]},scores={ignoreTrack=0}] add playedSound

# Updates players' jump boost if they left and rejoined the world
effect give @a[scores={ignoreTrack=0,leftGame=1..}] minecraft:jump_boost 1000000 250 true
scoreboard players set @a[scores={leftGame=1..}] leftGame 0