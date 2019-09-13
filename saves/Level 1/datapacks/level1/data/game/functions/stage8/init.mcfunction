
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 8

# Tracks when wind should blow
scoreboard objectives add wind dummy

# Shows when wind will blow
bossbar add wind {"text":"Turbine","color":"aqua"}
bossbar set minecraft:wind max 97