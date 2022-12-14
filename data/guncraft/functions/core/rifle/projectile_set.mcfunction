#> guncraft:core/rifle/projectile_set
#
# スコア設定
#
# @within function guncraft:core/rifle/shot

# 性能
    scoreboard players set @s GunCraft.Damage 1000
    scoreboard players set @s GunCraft.HeadDamage 2500
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 100
    scoreboard players set @s GunCraft.Reach 800

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0