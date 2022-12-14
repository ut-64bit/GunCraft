#> guncraft:core/recoil
#
# リコイル処理
#
# @within function guncraft:core/main

# スコアの値が高ければ高いほど上に向く
    tp @s ^ ^ ^ ~ ~-1
    execute if score @s GunCraft.Recoil matches 2.. run tp @s ^ ^ ^ ~ ~-1
    execute if score @s GunCraft.Recoil matches 4.. run tp @s ^ ^ ^ ~ ~-1
    execute if score @s GunCraft.Recoil matches 2.. run tp @s ^ ^ ^ ~ ~-1
    execute if score @s GunCraft.Recoil matches 8.. run tp @s ^ ^ ^ ~ ~-1
    execute if score @s GunCraft.Recoil matches 10.. run tp @s ^ ^ ^ ~ ~-1

# スコアの値が高ければ高いほど早く減る
    scoreboard players remove @s GunCraft.Recoil 1
    execute if score @s GunCraft.Recoil matches 5.. run scoreboard players remove @s GunCraft.Recoil 1
    execute if score @s GunCraft.Recoil matches 10.. run scoreboard players remove @s GunCraft.Recoil 1