summon armor_stand ~ ~ ~ {ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}],Tags:["droid_color_test"]}
execute store result entity @e[type=armor_stand,tag=droid_color_test,limit=1,sort=nearest] ArmorItems[0].tag.display.color int 167772 run loot spawn ~ ~ ~ loot game:stage7/droid_color
execute as @e[type=armor_stand,tag=droid_color_test] run data modify entity @s ArmorItems[1].tag.display.color set from entity @s ArmorItems[0].tag.display.color
execute as @e[type=armor_stand,tag=droid_color_test] run data modify entity @s ArmorItems[2].tag.display.color set from entity @s ArmorItems[0].tag.display.color
execute as @e[type=armor_stand,tag=droid_color_test] run data modify entity @s ArmorItems[3].tag.display.color set from entity @s ArmorItems[0].tag.display.color