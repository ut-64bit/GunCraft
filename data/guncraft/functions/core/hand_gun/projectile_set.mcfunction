#> guncraft:core/hand_gun/projectile_set
#
# スコア設定
#
# @within function guncraft:core/hand_gun/shot

# 性能
    scoreboard players set @s GunCraft.Damage 500
    scoreboard players set @s GunCraft.HeadDamage 550
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 40
    scoreboard players set @s GunCraft.Reach 120

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0