
# Teleports player to respawn point
execute if block 112 94 99 minecraft:gold_block run tp @s[scores={atFinish=0}] 112 95 99 180 0
execute unless block 112 94 99 minecraft:gold_block run tp @s[scores={atFinish=0}] 112 99 99 0 0
tp @s[scores={atFinish=1..}] 112 105 121 180 0

# Cosmetics
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" pretended to burn to death"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1

# Removes fire from player
gamemode creative @s
tag @s add s1.setAdventure
schedule function game:stage1/extinguish 1t