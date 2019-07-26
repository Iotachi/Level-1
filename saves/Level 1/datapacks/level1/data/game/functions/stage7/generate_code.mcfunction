loot spawn ~ ~ ~ loot game:stage7/generate_code
execute as @e[type=minecraft:item,nbt={Item:{tag:{isCode:0b}}}] store success score @s code run data modify entity @s Tags[0] set from entity @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{tag:{isCode:0b}}}] Item.tag.display.Name
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{isCode:0b}}},scores={code=1}] run kill @e[type=minecraft:item,nbt={Item:{tag:{isCode:0b}}}]
execute as @e[type=minecraft:item,nbt={Item:{tag:{isCode:0b}}}] run data modify entity @s Tags[0] set from entity @s Item.tag.display.Name
execute as @e[type=minecraft:item,nbt={Item:{tag:{isCode:0b}}}] run data modify entity @s Item.tag.isCode set value 1

execute store result score $controller code if entity @e[type=minecraft:item,nbt={Item:{tag:{isCode:1b}}}]
#execute if score $controller code matches ..2 run function game:stage7/generate_code