
# "players" team checks if a player has been initialized, and prevents multiplayer interference
team remove players
team add players
team modify players collisionRule pushOwnTeam
team modify players friendlyFire false

# "no_collision" team prevents collision
team remove no_collision
team add no_collision
team modify no_collision collisionRule never

# "trigger" scoreboard is used letting playersr interact with JSON
scoreboard objectives remove trigger
scoreboard objectives add trigger trigger



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



# Tracks if a player is at the end of a level
scoreboard objectives remove atFinish
scoreboard objectives add atFinish dummy

# Resets stages
function game:stage0/reset
function game:stage1/reset
function game:stage2/reset
function game:stage3/reset
function game:stage4/reset
function game:stage5/reset

# Resets break room
function game:break/reset