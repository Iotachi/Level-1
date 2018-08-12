
scoreboard players add Milliseconds speedrun 5

execute if score Milliseconds speedrun matches 100.. run scoreboard players add Seconds speedrun 1
execute if score Milliseconds speedrun matches 100.. run scoreboard players remove Milliseconds speedrun 100

execute if score Seconds speedrun matches 60.. run scoreboard players add Minutes speedrun 1
execute if score Seconds speedrun matches 60.. run scoreboard players remove Seconds speedrun 60

execute if score Minutes speedrun matches 60.. run scoreboard players add Hours speedrun 1
execute if score Minutes speedrun matches 60.. run scoreboard players remove Minutes speedrun 60