
# Setting entity name to item name
data modify entity @s CustomName set from entity @s Item.tag.display.Name

# Finding thrower through UUID
execute store result score @s code run data get entity @s Thrower.M .0000000001
execute as @a[team=!in_hub] store result score @s code run data get entity @s UUIDMost .0000000001
scoreboard players operation @a[team=!in_hub] code -= @s code

# Checking if code is correct
data modify entity @s Tags prepend from block 300 106 45 Text1
execute store success entity @s Item.tag.code_accuracy byte 1 run data modify entity @s Tags[0] set from entity @s Item.tag.display.Name

# Announcing incorrect code
execute if entity @s[nbt={Item:{tag:{code_accuracy:1b}}}] run tellraw @a[team=!in_hub] [{"selector":"@p[scores={code=0}]","color":"red"},{"text":" has input an incorrect code: ["},{"selector":"@s","color":"gray"},{"text":"]"}]
execute if entity @s[nbt={Item:{tag:{code_accuracy:1b}}}] run execute as @a[team=!in_hub] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 16 1.5 1

# Announcing correct code and opening door
execute if entity @s[nbt={Item:{tag:{code_accuracy:0b}}}] run tellraw @a[team=!in_hub] [{"selector":"@p[scores={code=0}]","color":"aqua"},{"text":" has input the correct code: ["},{"selector":"@s","color":"white"},{"text":"]"}]
execute if entity @s[nbt={Item:{tag:{code_accuracy:0b}}}] run fill 304 105 40 304 107 41 minecraft:air destroy
execute if entity @s[nbt={Item:{tag:{code_accuracy:0b}}}] as @a[team=!in_hub] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 16 2 1

# Kills self
kill @s