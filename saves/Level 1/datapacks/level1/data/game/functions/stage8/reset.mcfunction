
# Resets checkpoint
setblock 337 93 24 minecraft:redstone_block
setblock 337 93 24 minecraft:lapis_block

# Kills stage-specific entities
kill @e[tag=s8_kill]

# Removes stage-specific scoreboards
scoreboard objectives remove wind

# Removes stage-specific bossbars
bossbar remove minecraft:wind


# DELETE WHEN FINISHED
scoreboard players set #stage functionActive -1
# DELETE WHEN FINISHED