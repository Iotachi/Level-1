
# Effects
execute at @s if block ~ ~-1 ~ #game:stage6/deadly run tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" stepped off the rainbow road"}]
execute at @s unless block ~ ~-1 ~ #game:stage6/deadly run tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" tasted too much rainbow"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1
function game:player/death_flash

# Teleports player to respawn point
execute if block 272 98 19 minecraft:air run tp @s[scores={atFinish=0}] 272 95 19 180 0
execute unless block 272 98 19 minecraft:air run tp @s[scores={atFinish=0}] 272 99 19 0 0
tp @s[scores={atFinish=1..}] 272 105 41 180 0