#> asset:guncraft/quick_shot/shot
#
# quick_shot の発射処理
#
# @within function
#    asset:guncraft/quick_shot/trigger

# 弾丸召喚
    summon marker ^ ^ ^ {Tags: ["GunCraft.Projectile", "GunCraft.Preparation"]}
    scoreboard players operation @e[tag=GunCraft.Preparation,limit=1] GunCraft.PlayerID = @s GunCraft.PlayerID

    ## 弾丸の性能設定
        execute as @e[tag=GunCraft.Preparation] run function asset:guncraft/quick_shot/projectile_set

# 発射音
    execute at @s run function guncraft:core/sounds/light_shot

# プレイヤーのスコア設定
    ## リコイル
        scoreboard players set @s GunCraft.Recoil 3
        execute if predicate guncraft:flag/sneaking run scoreboard players set @s GunCraft.Recoil 2

    ## クールタイム
        scoreboard players set @s GunCraft.CoolTime 02
        scoreboard players set @s GunCraft.Reload 07

# 微調整
    tp @e[tag=GunCraft.Preparation] ^ ^ ^0.5 ~ ~

    ## 拡散
        data modify storage forward_spreader: Distance set value 10f
        data modify storage forward_spreader: Spread set value 1.0f
        execute if predicate guncraft:flag/sneaking run data modify storage forward_spreader: Spread set value 0.5f
        execute as @s at @s anchored eyes positioned ^ ^ ^0.5 run function guncraft:core/projectile/spread

# tag削除
    tag @e[tag=GunCraft.Preparation] remove GunCraft.Preparation