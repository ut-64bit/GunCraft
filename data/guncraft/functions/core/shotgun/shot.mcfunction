#> guncraft:core/shotgun/shot
#
# 3burst の発射処理
#
# @within function
#    guncraft:core/projectile/trigger
#    guncraft:core/shotgun/shot

# 弾丸召喚
    summon marker ^ ^ ^ {Tags:["GunCraft.Projectile","GunCraft.Preparation"]}
    scoreboard players operation @e[tag=GunCraft.Preparation,limit=1] GunCraft.PlayerID = @s GunCraft.PlayerID

    ## 弾丸の性能設定
        execute as @e[tag=GunCraft.Preparation] run function guncraft:core/shotgun/projectile_set

# 発射音
    execute at @s run function guncraft:core/sounds/light_shot

# プレイヤーのスコア設定
    ## リコイル
        scoreboard players set @s GunCraft.Recoil 80
        execute if predicate guncraft:flag/sneaking run scoreboard players set @s GunCraft.Recoil 60

    ## クールタイム
        scoreboard players set @s GunCraft.CoolTime 5
        scoreboard players set @s GunCraft.Reload 30

# 微調整
    function guncraft:common/move_shot_offset/

    ## 拡散
        data modify storage forward_spreader: Distance set value 10f
        data modify storage forward_spreader: Spread set value 1.0f
        execute as @s at @s anchored eyes positioned ^ ^ ^0.5 run function guncraft:core/projectile/spread

# tag削除
    tag @e[tag=GunCraft.Preparation] remove GunCraft.Preparation

# 再帰
    scoreboard players remove @s GunCraft.Recursion 1
    execute if score @s GunCraft.Recursion matches 1.. run function guncraft:core/shotgun/shot