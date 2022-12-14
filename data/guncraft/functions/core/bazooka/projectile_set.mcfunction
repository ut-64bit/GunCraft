#> guncraft:core/bazooka/projectile_set
#
# スコア設定
#
# @within function guncraft:core/bazooka/shot

# 性能
    scoreboard players set @s GunCraft.Damage 500
    scoreboard players set @s GunCraft.HeadDamage 600
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 10
    scoreboard players set @s GunCraft.Reach 150

    # 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0