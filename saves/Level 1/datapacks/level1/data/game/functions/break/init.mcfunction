
# Stops stage functions from running
scoreboard players set #stage functionActive -1

# Runs break room main function every tick
scoreboard players set #break functionActive 1

# Tracks when to move on from break
scoreboard objectives add breakTime dummy
scoreboard players set #breakSeconds breakTime 30
data merge block 238 85 30 {Text2:'[{"score":{"name":"#breakSeconds","objective":"breakTime"},"italic":true},{"text":" seconds"}]'}

# Spawns jukebox entities
summon minecraft:minecart 235.0 82 32 {CustomDisplayTile:1,DisplayState:{Name:"minecraft:jukebox"},Rotation:[90f,0f],DisplayOffset:43,Tags:["break_kill"]}
summon slime 235.0 84.1 32 {NoAI:1,Silent:1,NoGravity:1,CustomName:'{"text":"C418 - Wait","color":"aqua"}',ActiveEffects:[{Id:11,Amplifier:127,Duration:20000000,ShowParticles:0b}],Tags:["break_jukebox","playing_wait","break_kill"]}

# Spawns painting
summon minecraft:painting 231 85 35 {Facing:3,Motive:"minecraft:bust",Invulnerable:1,Tags:["break_kill"]}

# Spawns bartender armor stand
summon minecraft:armor_stand 242 83 27 {Invulnerable:1,ShowArms:1,NoBasePlate:1,Rotation:[90.0f,0.0f],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1},{id:"minecraft:leather_leggings",Count:1},{id:"minecraft:leather_chestplate",Count:1},{}],Tags:["break_bartender","break_kill"]}

# Spawns flower pot interaction-blocking entities
summon bat 240 84 26 {NoAI:1,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon bat 245 84 34 {NoAI:1,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon bat 244 84 38 {NoAI:1,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon bat 240 84 38 {NoAI:1,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}

# Spawns trapdoor interaction-blocking entities
summon minecraft:panda 244 85.8 29.6 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 243 85.8 29.6 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 242 85.8 29.6 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 241 85.8 29.6 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 240.4 85.8 29.7 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 240.4 85.8 28 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 240.4 85.8 27 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 240.4 85.8 26 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 240.4 85.8 25 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 237.4 82.8 24 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 237.4 83.8 24 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 237.4 84.8 24 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 231 83.8 27.4 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 231 84.8 27.4 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 231.6 82.8 29 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 231.6 83.8 29 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 231.6 84.8 29 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 233.6 83.8 32 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}
summon minecraft:panda 233.6 84.8 32 {NoAI:1,NoGravity:1,Silent:1,Invulnerable:1,Team:"no_collision",ActiveEffects:[{Id:14,Duration:20000000,ShowParticles:0b}],Tags:["break_kill"]}