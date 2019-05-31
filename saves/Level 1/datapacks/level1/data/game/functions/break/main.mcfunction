
# Prepares players for break room
execute as @a[tag=updateStage] run function game:break/player_setup

# Info sign information
tellraw @a[scores={ignoreTrack=0,trigger=1}] [{"text":""},{"text":"\n - Break Room -","color":"yellow","bold":true,"italic":true},{"text":"\n Have a break! Grab some refreshments! You've earned it!\n\n"},{"text":" Secret: ","bold":true},{"text":"[Workaholic]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Workaholic","color":"green"},{"text":"\nClick here to skip break.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger trigger set 2"}},{"text":"\n"}]
execute if entity @p[scores={ignoreTrack=0,trigger=2}] run tellraw @a[scores={ignoreTrack=0}] [{"selector":"@p[scores={ignoreTrack=0,trigger=2}]","color":"aqua"},{"text":" has skipped the break"}]
execute if entity @p[scores={ignoreTrack=0,trigger=2}] run scoreboard players set #breakSeconds breakTime 0
scoreboard players set @a[scores={ignoreTrack=0,trigger=1..}] trigger 0

# Going to next stage when break time is over
execute if score #breakSeconds breakTime matches ..0 run function game:break/deinit

# Break clock
scoreboard players add #breakTicks breakTime 1
execute if score #breakTicks breakTime matches 20 run scoreboard players remove #breakSeconds breakTime 1
execute if score #breakTicks breakTime matches 20 run data merge block 238 85 30 {Text2:'[{"score":{"name":"#breakSeconds","objective":"breakTime"},"italic":true},{"text":" seconds"}]'}
execute if score #breakTicks breakTime matches 20 run scoreboard players set #breakTicks breakTime 0

# Changing the music
execute as @e[type=minecraft:slime,tag=break_jukebox,nbt={HurtTime:10s}] at @s run function game:break/change_disc

# Chest bartender mechanics
execute as @e[type=minecraft:armor_stand,tag=break_bartender] at @s run function game:break/bartender

# Deletes display items
kill @e[type=minecraft:item,nbt={Item:{tag:{break_clear:1b}}}]
clear @a[scores={ignoreTrack=0}] minecraft:paper{break_clear:1b}
clear @a[scores={ignoreTrack=0}] minecraft:bowl{break_clear:1b}
clear @a[scores={ignoreTrack=0}] minecraft:glass_bottle{break_clear:1b}