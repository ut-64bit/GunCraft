#> guncraft:core/recoil
#
# リコイル処理
#
# @within function guncraft:core/main

# 二分探索って...コト!?
    execute if score @s GunCraft.Recoil matches 8.. rotated as @s run tp @s ^ ^ ^ ~ ~-0.4
    execute if score @s GunCraft.Recoil matches 8.. run scoreboard players remove @s GunCraft.Recoil 8

    execute if score @s GunCraft.Recoil matches 4.. rotated as @s run tp @s ^ ^ ^ ~ ~-0.2
    execute if score @s GunCraft.Recoil matches 4.. run scoreboard players remove @s GunCraft.Recoil 4

    execute if score @s GunCraft.Recoil matches 2.. rotated as @s run tp @s ^ ^ ^ ~ ~-0.1
    execute if score @s GunCraft.Recoil matches 2.. run scoreboard players remove @s GunCraft.Recoil 2

    execute if score @s GunCraft.Recoil matches 1.. rotated as @s run tp @s ^ ^ ^ ~ ~-0.05
    execute if score @s GunCraft.Recoil matches 1.. run scoreboard players remove @s GunCraft.Recoil 1


#execute store result score $Rotation GunCraft.Temp run data get entity @s Rotation[1] 1000
#summon area_effect_cloud 0.0 0.0 0.0 {Tags:["Recoil"]}
#execute positioned as @e[type=area_effect_cloud,tag=Recoil] rotated as @s run tp @e[type=area_effect_cloud,tag=Recoil] ~ ~ ~ ~ ~
#
#scoreboard players operation @s GunCraft.Recoil *= $7 GunCraft.Temp
#scoreboard players operation $Rotation GunCraft.Temp -= @s GunCraft.Recoil
#scoreboard players operation @s GunCraft.Recoil /= $10 GunCraft.Temp
#
#execute store result entity @e[type=area_effect_cloud,tag=Recoil,limit=1] Rotation[1] float 0.001 run scoreboard players get $Rotation GunCraft.Temp
#execute rotated as @e[type=area_effect_cloud,tag=Recoil] run tp @s ~ ~ ~ ~ ~