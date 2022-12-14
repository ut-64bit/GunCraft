#> guncraft:core/lazer_hand_gun/projectile_set
#
# スコア設定
#
# @within function guncraft:core/lazer_hand_gun/shot

# 性能
    scoreboard players set @s GunCraft.Damage 300
    scoreboard players set @s GunCraft.HeadDamage 400
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 400
    scoreboard players set @s GunCraft.Reach 300

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0