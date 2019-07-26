
# Resets checkpoint
setblock 305 93 22 minecraft:redstone_block
setblock 305 93 22 minecraft:lapis_block

# Kills stage-specific entities
tp @e[tag=s7_delete] ~ -65 ~
kill @e[tag=s7_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove isCrouched
scoreboard objectives remove page
scoreboard objectives remove playerId

# DELETE WHEN FINISHED
scoreboard players set #stage functionActive -1
# DELETE WHEN FINISHED