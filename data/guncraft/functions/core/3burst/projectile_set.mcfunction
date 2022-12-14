#> guncraft:core/3burst/projectile_set
#
# スコア設定
#
# @within function guncraft:core/3burst/shot

# 性能
    scoreboard players set @s GunCraft.Damage 200
    scoreboard players set @s GunCraft.HeadDamage 350
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 50
    scoreboard players set @s GunCraft.Reach 100

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0