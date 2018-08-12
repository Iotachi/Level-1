execute @a[tag=wrongLevel] ~ ~ ~ detect ~ ~-1 ~ air 0 tp @p[r=0] ~ ~-4 ~ 180 ~
title @a[tag=wrongLevel] times 10 40 10
spawnpoint @a[tag=wrongLevel]
scoreboard players tag @a[tag=wrongLevel] remove reachedFinish {Tags:["reachedFinish"]}
scoreboard players tag @a[tag=wrongLevel] remove recievedPaint {Tags:["recievedPaint"]}
scoreboard players tag @a[tag=wrongLevel] remove recievedCodePaper {Tags:["recievedCodePaper"]}
scoreboard players tag @a[tag=wrongLevel] remove jumping {Tags:["jumping"]}
clear @a[tag=wrongLevel] snowball 0 -1 {isPaint:1b}
clear @a[tag=wrongLevel] paper 0 -1 {isCodePaper:1b}
clear @a[tag=wrongLevel] stone_button 0 -1 {isHealthButton:1b}
effect @a[tag=wrongLevel] night_vision 0
effect @a[tag=wrongLevel] jump_boost 0
scoreboard players tag @a[tag=wrongLevel] remove fireProof {Tags:["fireProof"]}
effect @a[tag=wrongLevel] minecraft:fire_resistance 0
clear @a minecraft:skull
scoreboard players tag @a remove inCubeLevel
scoreboard players tag @a remove inIoLevel
clear @a[tag=wrongLevel] minecraft:stick -1 -1 {ioReset:1b}
clear @a[tag=wrongLevel] minecraft:cobblestone -1 -1 {ioReset:1b}
clear @a[tag=wrongLevel] minecraft:cake -1 -1 {ioReset:1b}
clear @a[tag=wrongLevel] minecraft:written_book -1 -1 {ioReset:1b}
scoreboard players tag @a[tag=wrongLevel] remove wrongLevel
