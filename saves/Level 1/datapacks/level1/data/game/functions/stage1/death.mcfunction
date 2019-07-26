
# Teleports player to respawn point
execute if block 112 94 99 minecraft:gold_block run tp @s[scores={atFinish=0}] 112 95 99 180 0
execute unless block 112 94 99 minecraft:gold_block run tp @s[scores={atFinish=0}] 112 99 99 0 0
tp @s[scores={atFinish=1..}] 112 105 121 180 0

# Effects
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" pretended to burn to death"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1
function game:player/death_flash

# Removes fire from player
function game:player/creative_tick