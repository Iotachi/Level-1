execute @e[type=snowball,tag=!init] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {CustomName:paintMarker,Duration:2147483647}
execute @e[type=snowball,tag=!init] ~ ~ ~ scoreboard players operation @e[type=area_effect_cloud,name=paintMarker,c=1,r=0] sc0 = @r[type=area_effect_cloud,name=paintColorRandom] sc0
scoreboard players tag @e[type=snowball,tag=!init] add init
execute @e[type=snowball] ~ ~ ~ teleport @e[type=area_effect_cloud,name=paintMarker,c=1] ~ ~ ~
scoreboard players tag @e[type=area_effect_cloud,name=paintMarker,tag=hasSnowball] remove hasSnowball
execute @e[type=snowball] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=paintMarker,c=1,r=0] add hasSnowball
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball] ~ ~ ~ clone ~-1 ~-24 ~-1 ~1 ~-22 ~1 ~-1 ~-1 ~-1 masked

execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball,score_sc0_min=0,score_sc0=0] ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stained_hardened_clay 1 replace stained_hardened_clay 11
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball,score_sc0_min=1,score_sc0=1] ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stained_hardened_clay 2 replace stained_hardened_clay 11
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball,score_sc0_min=2,score_sc0=2] ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stained_hardened_clay 3 replace stained_hardened_clay 11
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball,score_sc0_min=3,score_sc0=3] ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stained_hardened_clay 4 replace stained_hardened_clay 11
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball,score_sc0_min=4,score_sc0=4] ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stained_hardened_clay 5 replace stained_hardened_clay 11
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball,score_sc0_min=5,score_sc0=5] ~ ~ ~ fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stained_hardened_clay 14 replace stained_hardened_clay 11
execute @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball] ~ ~ ~ playsound entity.slime.attack master @a[score_sc0_min=4,score_sc0=4]
kill @e[type=area_effect_cloud,name=paintMarker,tag=!hasSnowball]

kill @e[type=area_effect_cloud,name=paintMarker,x=94,y=117,z=-20,dx=20,dy=1,dz=40]
kill @e[type=snowball,x=94,y=117,z=-20,dx=20,dy=1,dz=40]
scoreboard players tag @e[type=item] add killEntity {Item:{tag:{isPaint:1b}}}
function cmd:wrongLevel