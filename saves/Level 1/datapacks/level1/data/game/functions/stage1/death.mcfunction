
# Teleports player to respawn point
execute if block 112 94 99 minecraft:gold_block run tp @s 112 95 99 180 0
execute unless block 112 94 99 minecraft:gold_block run tp @s 112 99 99 0 0

# Cosmetics
effect give @s minecraft:blindness 1 0 true
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" pretended to burn to death"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1

# Removes fire from player
gamemode creative @s
tag @s add setAdventure