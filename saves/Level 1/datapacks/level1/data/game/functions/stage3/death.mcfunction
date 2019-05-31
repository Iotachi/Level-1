
# Teleports player to respawn point
execute if block 176 94 19 minecraft:gold_block run tp @s[scores={atFinish=0}] 176 95 19 180 0
execute unless block 176 94 19 minecraft:gold_block run tp @s[scores={atFinish=0}] 176 99 19 0 0
tp @s[scores={atFinish=1..}] 176 105 41 180 0
execute if entity @s[scores={atFinish=1..}] unless block ~ ~-1 ~ #game:paint run fill 175 104 40 177 104 42 minecraft:light_blue_concrete replace #game:paintable

# Cosmetics
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"red"},{"text":" stepped off the rainbow road"}]
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 16 1 1