#> guncraft:core/projectile/msg/kill_by_projectile
#
# デスメッセージ
#
# @public

#> Temp
# @private
    #declare score_holder $gamerule ゲームルール保存用
    #declare tag HeadShot

# ゲームルール取得
    execute store result score $gamerule GunCraft.Temp run gamerule showDeathMessages

# ゲームルール変更
    gamerule showDeathMessages false

# デスメッセージ
    ## ヘッドショット
        execute if entity @s[tag=HeadShot] run function guncraft:core/projectile/msg/kill_by_head

    ## 普通
        execute unless entity @s[tag=HeadShot] run function guncraft:core/projectile/msg/kill_by_body

# キル
    effect give @s instant_damage 1 16 false

# ゲームルール戻して
    execute if score $gamerule GunCraft.Temp matches 1 run gamerule showDeathMessages true
    execute if score $gamerule GunCraft.Temp matches 0 run gamerule showDeathMessages false