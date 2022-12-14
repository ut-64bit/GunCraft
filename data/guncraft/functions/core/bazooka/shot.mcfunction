#> guncraft:core/bazooka/shot
#
# bazooka の発射処理
#
# @within function guncraft:core/projectile/trigger

# 弾丸召喚
    summon marker ^ ^ ^ {Tags: ["GunCraft.Projectile", "GunCraft.Preparation","GunCraft.Bom"]}
    scoreboard players operation @e[tag=GunCraft.Preparation,distance=..0.01,limit=1] GunCraft.PlayerID = @s GunCraft.PlayerID

    ## 弾丸の性能設定
        execute as @e[tag=GunCraft.Preparation,distance=..0.01] run function guncraft:core/bazooka/projectile_set

# 発射音
    execute at @s run function guncraft:core/sounds/heavy_shot

# プレイヤーのスコア設定
    ## リコイル
        scoreboard players set @s GunCraft.Recoil 6

    ## クールタイム
        scoreboard players set @s GunCraft.CoolTime 40
        scoreboard players set @s GunCraft.Reload 40

# 微調整
    tp @e[tag=GunCraft.Preparation,distance=..0.01] ^ ^ ^0.5 ~ ~

    ## 拡散
        data modify storage forward_spreader: Distance set value 10f
        data modify storage forward_spreader: Spread set value 0.1f
        execute as @s at @s anchored eyes positioned ^ ^ ^0.5 run function guncraft:core/projectile/spread

# tag削除
    tag @e[tag=GunCraft.Preparation,distance=..0.01] remove GunCraft.Preparation