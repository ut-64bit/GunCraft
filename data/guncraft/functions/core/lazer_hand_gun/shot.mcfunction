#> guncraft:core/lazer_hand_gun/shot
#
# lazer_hand_gun の発射処理
#
# @within function guncraft:core/projectile/trigger

# 弾丸召喚
    summon marker ^ ^ ^ {Tags: ["GunCraft.Projectile", "GunCraft.Preparation","GunCraft.Light"]}
    scoreboard players operation @e[tag=GunCraft.Preparation,distance=..0.01,limit=1] GunCraft.PlayerID = @s GunCraft.PlayerID

    ## 弾丸の性能設定
    execute as @e[tag=GunCraft.Preparation,distance=..0.01] run function guncraft:core/lazer_hand_gun/projectile_set

# 発射音
    execute at @s run function guncraft:core/sounds/light_shot

# プレイヤーのスコア設定
    ## クールタイム
        scoreboard players set @s GunCraft.CoolTime 4
        execute if score @s GunCraft.SneakTime matches 1.. run scoreboard players add @s GunCraft.CoolTime 3
        scoreboard players set @s GunCraft.Reload 20

# 微調整
    tp @e[tag=GunCraft.Preparation,distance=..0.01] ^ ^ ^0.5 ~ ~

    ## 拡散
        data modify storage forward_spreader: Distance set value 10f
        data modify storage forward_spreader: Spread set value 0.5f
        execute if predicate guncraft:flag/sneaking run data modify storage forward_spreader: Spread set value 0.1f
        execute as @s at @s anchored eyes positioned ^ ^ ^0.5 run function guncraft:core/projectile/spread

# tag削除
    tag @e[tag=GunCraft.Preparation,distance=..0.01] remove GunCraft.Preparation