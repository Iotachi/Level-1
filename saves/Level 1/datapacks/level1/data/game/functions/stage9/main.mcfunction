
# Prepares players to play stage
execute as @a[tag=updateStage] run function game:stage7/player_setup

# Giving players programming tools
execute as @a[tag=needs_tools,scores={ignoreTrack=0}] at @e[type=minecraft:item,tag=tool_giver] run tag @s[distance=..1] remove needs_tools
execute as @a[tag=!needs_tools,scores={ignoreTrack=0}] unless entity @s[nbt={Inventory:[{Slot:5b,Count:1b,tag:{interface:1b}},{Slot:6b,Count:1b,tag:{marker:1b}},{Slot:3b,Count:1b,tag:{run_program:1b}},{Slot:19b,Count:1b,tag:{sneak:1b}},{Slot:20b,Count:1b,tag:{walk:1b}},{Slot:21b,Count:1b,tag:{sprint:1b}},{Slot:23b,Count:1b,tag:{jump:1b}},{Slot:24b,Count:1b,tag:{climb:1b}},{Slot:25b,Count:1b,tag:{break:1b}}]}] run function game:stage7/toolkit

# Program GUI
tp @e[type=minecraft:llama,tag=program_gui] 304 95 26
execute at @a[scores={ignoreTrack=0},nbt={SelectedItem:{tag:{interface:1b}}}] as @e[type=minecraft:llama,tag=program_gui] if score @s playerId = @p[distance=0,gamemode=adventure] playerId run function game:stage7/gui/main
scoreboard players set @a[scores={ignoreTrack=0,isCrouched=1..}] isCrouched 0