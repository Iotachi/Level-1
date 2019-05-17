
# "players" team checks if a player has been initialized, and prevents interpersonal sabotage
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
scoreboard players set #controller updateTrack 0

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