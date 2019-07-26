
# Causes stage's main function to run every tick
scoreboard players set #stage functionActive 3

# Tracks when players need to jump
scoreboard objectives add rhythm dummy
# Tests if a player has jumped
scoreboard objectives add jumped minecraft.custom:minecraft.jump