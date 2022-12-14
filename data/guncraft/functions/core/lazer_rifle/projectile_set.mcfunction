#> guncraft:core/lazer_rifle/projectile_set
#
# スコア設定
#
# @within function guncraft:core/lazer_rifle/shot

# 性能
    scoreboard players set @s GunCraft.Damage 700
    scoreboard players set @s GunCraft.HeadDamage 1000
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 400
    scoreboard players set @s GunCraft.Reach 800

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0