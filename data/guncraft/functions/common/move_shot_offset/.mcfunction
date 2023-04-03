#> guncraft:common/move_shot_offset/
# @within function guncraft:core/**/shot

#define tag MoveShot

execute positioned ^ ^-0.3 ^0.4 run tp @e[tag=GunCraft.Preparation] ~ ~ ~ ~ ~
# AEC
    #summon area_effect_cloud 0.0 0.0 0.0 {Tags:["MoveShot"]}
    #data modify entity @e[type=area_effect_cloud,tag=MoveShot,limit=1] Pos set from entity @s Motion
    #execute at @s as @e[type=area_effect_cloud,tag=MoveShot,limit=1] run function guncraft:common/move_shot_offset/tp

# TP
    #execute positioned 0.0 0.0 0.0 facing entity @e[type=area_effect_cloud,tag=MoveShot,limit=1] feet as @e[tag=GunCraft.Preparation] positioned as @s positioned ~ ~ ~0.05 run tp @s ^ ^ ^0.05 ~ ~
    #kill @e[type=area_effect_cloud,tag=MoveShot,limit=1]