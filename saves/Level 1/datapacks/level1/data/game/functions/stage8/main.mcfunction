
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage8/player_setup

# Tracks when players are at the end of the level
execute as @a[x=326,y=106.5,z=41,dx=20,dy=0,dz=4,scores={atFinish=0},team=!in_hub] run function game:player/reach_finish
scoreboard players set @a[x=326,y=105.5,z=41,dx=20,dy=1,dz=4,team=!in_hub] atFinish 3
scoreboard players remove @a[scores={atFinish=2..}] atFinish 1


# Wind sound effects
scoreboard players add @a[team=!in_hub] wind 1
stopsound @a[scores={wind=300..}] ambient minecraft:item.elytra.flying
execute as @a[scores={wind=300..},team=!in_hub] run playsound minecraft:item.elytra.flying ambient @s 336 99 25 8 .5 1
scoreboard players set @a[scores={wind=300..}] wind 0

# Wind particles
particle minecraft:cloud 336 102 25 4.5 3.5 7.5 .7 1
particle minecraft:cloud 336 102 25 4.5 3.5 7.5 .5 1


# Tracking when to blow players
scoreboard players add %blow_time wind 1
execute if score %blow_time wind matches 98 run scoreboard players set %blow_time wind -2
execute if score %blow_time wind matches -2 run particle minecraft:cloud 336 102 25 4.5 3.5 7.5 .7 200
execute store result bossbar minecraft:wind value run scoreboard players get %blow_time wind
bossbar set minecraft:wind players @a[scores={atFinish=..1},team=!in_hub]

# Blowing players
execute if score %blow_time wind matches -2 run tag @a[tag=blown] remove blown
execute if score %blow_time wind matches -2 as @a[gamemode=adventure,scores={atFinish=..1},team=!in_hub] at @s if block ~ ~1 ~1 #game:stage8/air_space unless entity @s[x=335,y=95,z=20,dx=2,dy=5,dz=2] unless entity @s[x=335,y=108,z=1,dx=5,dy=1,dz=4] run tag @s add blown
execute if score %blow_time wind matches -2 at @a[tag=blown] run summon armor_stand ~ ~ ~ {Silent:1b,Invisible:1b,Tags:["motion_marker","s8_kill"],Motion:[0.0d,0.4d,-0.75d]}
execute if score %blow_time wind matches -2 at @a[tag=blown] run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0

# Blow motion
execute at @e[type=minecraft:armor_stand,tag=motion_marker,nbt={Motion:[-0.0784000015258789d,0.0d]}] run tag @p[distance=..1,tag=blown] remove blown
kill @e[type=minecraft:armor_stand,tag=motion_marker,nbt={Motion:[-0.0784000015258789d,0.0d]}]
execute if score %blow_time wind matches -2..18 as @a[tag=blown] at @s at @e[type=minecraft:armor_stand,tag=motion_marker,distance=..1.5,limit=1,sort=nearest] run tp @s ~ ~ ~
execute if score %blow_time wind matches 18 run kill @e[type=minecraft:armor_stand,tag=motion_marker]
effect clear @a[nbt={ActiveEffects:[{Id:25b}]}] minecraft:levitation
execute if score %blow_time wind matches -2..18 run effect give @a[tag=blown,team=!in_hub] minecraft:levitation 1 255 true