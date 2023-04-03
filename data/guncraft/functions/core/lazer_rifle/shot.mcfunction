#> guncraft:core/lazer_rifle/shot
#
# lazer_rifle の発射処理
#
# @within function guncraft:core/projectile/trigger

# 弾丸召喚
    summon marker ^ ^ ^ {Tags:["GunCraft.Projectile","GunCraft.Preparation","GunCraft.Light"]}
    scoreboard players operation @e[tag=GunCraft.Preparation,distance=..0.01,limit=1] GunCraft.PlayerID = @s GunCraft.PlayerID

    ## 弾丸の性能設定
    execute as @e[tag=GunCraft.Preparation,distance=..0.01] run function guncraft:core/lazer_rifle/projectile_set

# 発射音
    execute at @s run function guncraft:core/sounds/photon_shot

# プレイヤーのスコア設定
    ## リコイル
        scoreboard players set @s GunCraft.Recoil 100
        execute if predicate guncraft:flag/sneaking run scoreboard players set @s GunCraft.Recoil 70

    ## クールタイム
        scoreboard players set @s GunCraft.CoolTime 50
        scoreboard players set @s GunCraft.Reload 40

# 微調整
    function guncraft:common/move_shot_offset/

    ## 拡散
        data modify storage forward_spreader: Distance set value 10f
        data modify storage forward_spreader: Spread set value 0.1f
        execute if predicate guncraft:flag/sneaking run data modify storage forward_spreader: Spread set value 0f
        execute unless predicate guncraft:flag/sneaking at @s anchored eyes positioned ^ ^ ^ run function guncraft:core/projectile/spread

# tag削除
    tag @e[tag=GunCraft.Preparation,distance=..0.01] remove GunCraft.Preparation