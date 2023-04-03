#> guncraft:core/scope_rifle/shot
#
# scope_rifle の発射処理
#
# @within function guncraft:core/projectile/trigger

# 弾丸召喚
    summon marker ^ ^ ^ {Tags:["GunCraft.Projectile","GunCraft.Preparation"]}
    scoreboard players operation @e[tag=GunCraft.Preparation,distance=..0.01,limit=1] GunCraft.PlayerID = @s GunCraft.PlayerID

    ## 弾丸の性能設定
        execute as @e[tag=GunCraft.Preparation,distance=..0.01] run function guncraft:core/scope_rifle/projectile_set

# 発射音
    execute at @s run function guncraft:core/sounds/heavy_shot

# プレイヤーのスコア設定
    ## リコイル
        scoreboard players set @s GunCraft.Recoil 100

    ## クールタイム
        scoreboard players set @s GunCraft.CoolTime 40
        scoreboard players set @s GunCraft.Reload 40

# 微調整
    function guncraft:common/move_shot_offset/

# tag削除
    tag @e[tag=GunCraft.Preparation,distance=..0.01] remove GunCraft.Preparation