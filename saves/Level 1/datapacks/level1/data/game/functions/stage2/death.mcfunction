
# Teleports player to respawn point
execute if block 144 94 19 minecraft:gold_block run tp @s 144 95 19 180 0
execute unless block 144 94 19 minecraft:gold_block run tp @s 144 99 19 0 0

# Cosmetics
effect give @s minecraft:blindness 1 0 true
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" didn't jump to the beat"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1