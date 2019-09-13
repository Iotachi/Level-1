
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 5
# Checks if players leave and rejoin the world so it can update their jump boost
scoreboard objectives add leftGame minecraft.custom:minecraft.leave_game

# Loading chunks
summon area_effect_cloud 0 0 0 {Tags:["chunk_load_base"],Passengers:[{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk0"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk1"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk2"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk3"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk4"]},{id:"minecraft:area_effect_cloud",Tags:["chunk_load","chunk5"]}]}
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load_base]
spreadplayers 232 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk0]
spreadplayers 248 8 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk1]
spreadplayers 232 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk2]
spreadplayers 248 24 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk3]
spreadplayers 232 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk4]
spreadplayers 248 40 0 1 false @e[type=minecraft:area_effect_cloud,tag=chunk5]
kill @e[type=minecraft:area_effect_cloud,tag=chunk_load]

# Summons levitation AECs
summon minecraft:area_effect_cloud 233 94 5 {Duration:2147483647,Effects:[{Id:25b,Amplifier:4b,Duration:17,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 234 96 11 {Duration:2147483647,Effects:[{Id:25b,Amplifier:3b,Duration:13,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 244 97 13 {Duration:2147483647,Effects:[{Id:25b,Amplifier:4b,Duration:15,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 244 98 9 {Duration:2147483647,Effects:[{Id:25b,Amplifier:6b,Duration:12,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 248 99 10 {Duration:2147483647,Effects:[{Id:25b,Amplifier:12b,Duration:7,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 242 101 13 {Duration:2147483647,Effects:[{Id:25b,Amplifier:12b,Duration:10,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 239 102 9 {Duration:2147483647,Effects:[{Id:25b,Amplifier:13b,Duration:6,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 233 101 11 {Duration:2147483647,Effects:[{Id:25b,Amplifier:0b,Duration:15,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 246 99 37 {Duration:2147483647,Effects:[{Id:25b,Amplifier:6b,Duration:15,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 245 102 32 {Duration:2147483647,Effects:[{Id:25b,Amplifier:12b,Duration:9,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 246 104 27 {Duration:2147483647,Effects:[{Id:25b,Amplifier:12b,Duration:8,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 247 104 20 {Duration:2147483647,Effects:[{Id:25b,Amplifier:6b,Duration:12,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 243 106 20 {Duration:2147483647,Effects:[{Id:25b,Amplifier:6b,Duration:12,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 237 102 32 {Duration:2147483647,Effects:[{Id:25b,Amplifier:8b,Duration:9,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 234 103 29 {Duration:2147483647,Effects:[{Id:25b,Amplifier:6b,Duration:16,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}

summon minecraft:area_effect_cloud 233 104 36 {Duration:2147483647,Effects:[{Id:25b,Amplifier:16b,Duration:7,ShowParticles:0b}],Radius:0.7,Particle:"minecraft:block minecraft:air",Tags:["levitator","s5_kill"]}