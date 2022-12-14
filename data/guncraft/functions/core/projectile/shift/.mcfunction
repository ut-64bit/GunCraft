#> guncraft:core/projectile/shift/
#
# オフセット変更
#
# @internal

#> Temp
# @within function guncraft:core/projectile/shift/*
    #declare tag Shift

# 両手持ち
    ## マイナス方向
        execute if predicate guncraft:have/gun_double if score @s GunCraft.Rclick matches 1.. unless entity @s[tag=Shift] if score @s GunCraft.OffSet matches 1 run function guncraft:core/projectile/shift/minus_shift

    ## プラス方向
        execute if predicate guncraft:have/gun_double if score @s GunCraft.Rclick matches 1.. unless entity @s[tag=Shift] unless score @s GunCraft.OffSet matches 1 run function guncraft:core/projectile/shift/plus_shift

# 片手持ち
    ## 右手
        execute unless predicate guncraft:have/gun_double unless entity @s[tag=Shift] unless predicate guncraft:flag/sneaking if predicate guncraft:have/main/gun unless score @s GunCraft.OffSet matches 1 run function guncraft:core/projectile/shift/plus_shift

    ## 左手
        execute unless predicate guncraft:have/gun_double unless entity @s[tag=Shift] unless predicate guncraft:flag/sneaking if predicate guncraft:have/off/gun unless score @s GunCraft.OffSet matches -1 run function guncraft:core/projectile/shift/minus_shift

    ## 真ん中
        execute unless predicate guncraft:have/gun_double unless entity @s[tag=Shift] if predicate guncraft:flag/sneaking unless score @s GunCraft.OffSet matches 0 run scoreboard players set @s GunCraft.OffSet 0

# tag削除
    tag @s remove Shift