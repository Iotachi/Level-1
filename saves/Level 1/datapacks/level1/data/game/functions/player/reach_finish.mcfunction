
# Runs when a player has reached the end of a level for the first time
tellraw @a[team=!in_hub] [{"selector":"@s","color":"aqua"},{"text":" has reached the finish"}]
execute as @a[team=!in_hub] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 16 2 1