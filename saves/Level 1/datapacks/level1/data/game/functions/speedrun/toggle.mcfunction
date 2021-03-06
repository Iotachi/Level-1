
# Turn timer on if it's off
execute unless score #speedrunDisplay functionActive matches 1 run scoreboard objectives setdisplay sidebar speedrun
execute unless score #speedrunDisplay functionActive matches 1 run data merge block 52 107 43 {Text4:"{\"text\":\"[ON]\",\"color\":\"dark_green\",\"bold\":true}"}
execute unless score #speedrunDisplay functionActive matches 1 run setblock 52 106 44 minecraft:green_wool

# Turn timer off it it's on
execute if score #speedrunDisplay functionActive matches 1 run scoreboard objectives setdisplay sidebar
execute if score #speedrunDisplay functionActive matches 1 run data merge block 52 107 43 {Text4:"{\"text\":\"[OFF]\",\"color\":\"dark_red\",\"bold\":true}"}
execute if score #speedrunDisplay functionActive matches 1 run setblock 52 106 44 minecraft:red_wool


# Change timer state
scoreboard players add #speedrunDisplay functionActive 1
execute if score #speedrunDisplay functionActive matches 2.. run scoreboard players set #speedrunDisplay functionActive 0