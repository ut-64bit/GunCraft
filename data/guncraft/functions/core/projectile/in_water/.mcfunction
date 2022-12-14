#> guncraft:core/projectile/in_water/
#
# 水中での処理
#
# @within function guncraft:core/projectile/move/

# 弾丸別の処理
    ## bom
        execute if entity @s[tag=GunCraft.Bom] run function guncraft:core/projectile/in_water/bom

    ## fire
        execute if entity @s[tag=GunCraft.Fire] run function guncraft:core/projectile/in_water/fire

# スコア減算
    execute unless entity @s[tag=GunCraft.Light] if score @s GunCraft.Reach matches 6.. run scoreboard players remove @s GunCraft.Reach 5
    execute if score @s GunCraft.Damage matches 100.. run scoreboard players remove @s GunCraft.Damage 15