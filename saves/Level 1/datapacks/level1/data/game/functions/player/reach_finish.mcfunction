
# Runs when a player has reached the end of a level for the first time
tellraw @a[scores={ignoreTrack=0}] [{"selector":"@s","color":"aqua"},{"text":" has reached the finish"}]
execute as @a[scores={ignoreTrack=0}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 16 2 1