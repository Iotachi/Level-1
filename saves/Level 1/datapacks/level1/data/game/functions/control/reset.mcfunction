
# "players" team checks if a player has been initialized, and prevents multiplayer interference
team remove players
team add players
team modify players collisionRule pushOtherTeams
team modify players friendlyFire false

# "functionActive" scoreboard tracks what functions should be run every tick
scoreboard objectives remove functionActive
scoreboard objectives add functionActive dummy

# "updateTrack" scoreboard prevents players from being left behind if they log out and log back in
scoreboard objectives remove updateTrack
scoreboard objectives add updateTrack dummy
scoreboard players set #controller updateTrack -1

# "ignoreTrack" scoreboard prevents players from being updated while in the hub
scoreboard objectives remove ignoreTrack
scoreboard objectives add ignoreTrack dummy

# "speedrun" scoreboard uses sidebar to show players how long they've been playing
scoreboard objectives remove speedrun
scoreboard objectives add speedrun dummy {"text":"TIMER","color":"yellow","bold":true}
# Displays Milliseconds on sidebar even if not in use
scoreboard players set Milliseconds speedrun 0
# Sets "Speedrun Timer" ON/OFF sign to OFF
data merge block 52 107 43 {Text4:"{\"text\":\"[OFF]\",\"color\":\"dark_red\",\"bold\":true}"}
setblock 52 106 44 minecraft:red_wool

# "onFire" scoreboard tests if a player is on fire in stage1
scoreboard objectives remove onFire
scoreboard objectives add onFire dummy

# "rhythm" scoreboard tracks when each player needs to jump in stage2
scoreboard objectives remove rhythm
scoreboard objectives add rhythm dummy
# "jumped" scoreboard tests if a player jumped in stage2
scoreboard objectives remove jumped
scoreboard objectives add jumped minecraft.custom:minecraft.jump