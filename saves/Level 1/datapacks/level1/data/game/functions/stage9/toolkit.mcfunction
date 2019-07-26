
# Tests if a position item will be overwritten
tag @s[nbt={Inventory:[{Slot:5b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:6b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:3b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:19b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:20b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:21b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:23b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:24b,Count:1b,tag:{position:1b}}]}] add overwritten
tag @s[tag=!overwritten,nbt={Inventory:[{Slot:25b,Count:1b,tag:{position:1b}}]}] add overwritten
tellraw @s[tag=overwritten] [{"text":"To get a new position item, right-click a placed position marker","color":"yellow"}]
tag @s[tag=overwritten] remove overwritten

# Interface item
execute unless entity @s[nbt={Inventory:[{Slot:5b,Count:1b,tag:{interface:1b}}]}] run tag @s add give_tool
clear @s[tag=give_tool] minecraft:emerald{interface:1b}
replaceitem entity @s[tag=give_tool] hotbar.5 minecraft:emerald{interface:1b,s7_kill:1b,display:{Name:'{"text":"Shift + Right-Click to Open Program GUI","color":"aqua","italic":false}'}}
tag @s[tag=give_tool] remove give_tool

# Position placement item
execute unless entity @s[nbt={Inventory:[{Slot:6b,Count:1b,tag:{marker:1b}}]}] run tag @s add give_tool
clear @s[tag=give_tool] minecraft:firework_rocket{marker:1b}
replaceitem entity @s[tag=give_tool] hotbar.6 minecraft:firework_rocket{marker:1b,s7_kill:1b,HideFlags:16,CanPlaceOn:["#game:stage7/can_place_marker"],display:{Name:'{"text":"Place Position Marker","italic":false,"color":"aqua"}'}}
tag @s[tag=give_tool] remove give_tool

# Run program item
execute unless entity @s[nbt={Inventory:[{Slot:3b,Count:1b,tag:{run_program:1b}}]}] run tag @s add give_tool
clear @s[tag=give_tool] minecraft:nether_star{run_program:1b}
replaceitem entity @s[tag=give_tool] hotbar.3 minecraft:nether_star{run_program:1b,s7_kill:1b,display:{Name:'{"text":"Run Program","italic":false,"color":"green"}'}}
tag @s[tag=give_tool] remove give_tool

# Droid sneak item
execute unless entity @s[nbt={Inventory:[{Slot:19b,Count:1b,tag:{sneak:1b}}]}] run replaceitem entity @s inventory.10 minecraft:gunpowder{sneak:1b,s7_kill:1b,display:{Name:'[{"text":"Set Speed: ","italic":false,"color":"yellow"},{"text":"Slow","color":"dark_aqua"}]',Lore:['{"text":"Droid will be unable to jump as","color":"gray"}','{"text":"far, but will stop at ledges.","color":"gray"}']}}

# Droid walk item
execute unless entity @s[nbt={Inventory:[{Slot:20b,Count:1b,tag:{walk:1b}}]}] run replaceitem entity @s inventory.11 minecraft:sugar{walk:1b,s7_kill:1b,display:{Name:'[{"text":"Set Speed: ","italic":false,"color":"yellow"},{"text":"Normal","color":"white"}]',Lore:['{"text":"Droid will walk at a normal pace.","color":"gray"}']}}

# Droid sprint item
execute unless entity @s[nbt={Inventory:[{Slot:21b,Count:1b,tag:{sprint:1b}}]}] run replaceitem entity @s inventory.12 minecraft:glowstone_dust{sprint:1b,s7_kill:1b,display:{Name:'[{"text":"Set Speed: ","italic":false,"color":"yellow"},{"text":"Fast","color":"gold"}]',Lore:['{"text":"Droid will jump further, but will","color":"gray"}','{"text":"drift past position markers.","color":"gray"}']}}

# Droid jump item
execute unless entity @s[nbt={Inventory:[{Slot:23b,Count:1b,tag:{jump:1b}}]}] run replaceitem entity @s inventory.14 minecraft:feather{jump:1b,s7_kill:1b,display:{Name:'[{"text":"Action: ","italic":false,"color":"dark_green"},{"text":"Jump","color":"aqua"}]',Lore:['{"text":"Droid leaps a distance based on","color":"gray"}','{"text":"its speed.","color":"gray"}']}}

# Droid climb item
execute unless entity @s[nbt={Inventory:[{Slot:24b,Count:1b,tag:{climb:1b}}]}] run replaceitem entity @s inventory.15 minecraft:ladder{climb:1b,s7_kill:1b,display:{Name:'[{"text":"Action: ","italic":false,"color":"dark_green"},{"text":"Climb","color":"light_purple"}]',Lore:['{"text":"Droid grabs and ascends to","color":"gray"}','{"text":"the top of a ladder.","color":"gray"}']}}

# Droid break item
execute unless entity @s[nbt={Inventory:[{Slot:25b,Count:1b,tag:{break:1b}}]}] run replaceitem entity @s inventory.16 minecraft:iron_pickaxe{break:1b,s7_kill:1b,HideFlags:2,display:{Name:'[{"text":"Action: ","italic":false,"color":"dark_green"},{"text":"Smash","color":"red"}]',Lore:['{"text":"Droid destroys a glass case.","color":"gray"}']}}