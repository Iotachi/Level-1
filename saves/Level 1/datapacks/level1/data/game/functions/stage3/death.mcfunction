
# Teleports player to respawn point
execute if block 176 95 19 minecraft:air run tp @s[scores={atFinish=0}] 176 95 19 180 0
execute unless block 176 95 19 minecraft:air run tp @s[scores={atFinish=0}] 176 99 19 0 0
tp @s[scores={atFinish=1..}] 176 105 41 180 0

# Effects
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" didn't jump to the beat"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1
function game:player/death_flash