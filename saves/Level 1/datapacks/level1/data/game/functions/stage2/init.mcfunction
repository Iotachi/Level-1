
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 2

# Tracks when players need to jump
scoreboard objectives add s2.rhythm dummy
# Tests if a player has jumped
scoreboard objectives add s2.jumped minecraft.custom:minecraft.jump