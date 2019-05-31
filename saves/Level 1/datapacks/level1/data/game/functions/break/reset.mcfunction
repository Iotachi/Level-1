
# Kills break room entities
tag @e[type=minecraft:item,x=231,y=83,z=24,dx=14,dy=4,dz=14] add break_kill
kill @e[tag=break_kill]

# Removes break room scoreboards
scoreboard objectives remove breakTime