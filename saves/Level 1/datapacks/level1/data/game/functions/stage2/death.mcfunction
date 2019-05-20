
# Teleports player to respawn point
execute if block 144 94 19 minecraft:gold_block run tp @s[scores={atFinish=0}] 144 95 19 180 0
execute unless block 144 94 19 minecraft:gold_block run tp @s[scores={atFinish=0}] 144 99 19 0 0
tp @s[scores={atFinish=1..}] 144 105 41 180 0

# Cosmetics
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" didn't jump to the beat"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1