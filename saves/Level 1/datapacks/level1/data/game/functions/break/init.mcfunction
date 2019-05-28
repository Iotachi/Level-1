
# Stops stage functions from running
scoreboard players set #stage functionActive -1

# Runs break room main function every tick
scoreboard players set #break functionActive 1

# Spawns break room entities
summon minecraft:minecart 235.0 82 32 {CustomDisplayTile:1,DisplayState:{Name:"minecraft:jukebox"},Rotation:[90f,0f],DisplayOffset:43,Tags:["break_kill"]}
summon slime 235.0 84.1 32 {NoAI:1,Silent:1,NoGravity:1,CustomName:'{"text":"C418 - Mall","color":"light_purple"}',ActiveEffects:[{Id:11,Amplifier:127,Duration:20000000,ShowParticles:0b}],Tags:["break_jukebox","playing_wait","break_kill"]}
summon minecraft:painting 231 85 35 {Facing:3,Motive:"minecraft:bust",Invulnerable:1,Tags:["break_kill"]}
summon minecraft:armor_stand 242 83 27 {Invulnerable:1,ShowArms:1,NoBasePlate:1,Rotation:[90.0f,0.0f],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],Tags:["break_bartender","break_kill"]}
summon minecraft:item_frame 244 84 28 {Invulnerable:1,Facing:2,ItemRotation:7,Item:{id:"minecraft:paper",Count:1},Tags:["break_kill"]}