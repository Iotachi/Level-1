
# Effects
particle minecraft:explosion ~ ~ ~ 1 1 1 0 30
particle minecraft:smoke ~ ~ ~ 2 2 2 .1 100
playsound minecraft:entity.generic.explode block @a[scores={ignoreTrack=0}] ~ ~ ~ 1 .8
execute unless entity @s[tag=noMessageExplode] run tellraw @a[scores={ignoreTrack=0}] {"text":"1.364 tons of TNT did its job too early","color":"red"}

# Kills itself
kill @s