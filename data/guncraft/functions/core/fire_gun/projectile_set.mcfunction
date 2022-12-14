#> guncraft:core/fire_gun/projectile_set
#
#
#
# @within function guncraft:core/fire_gun/shot

# 性能
    scoreboard players set @s GunCraft.Damage 400
    scoreboard players set @s GunCraft.HeadDamage 500
    scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
    scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
    scoreboard players set @s GunCraft.Speed 50
    scoreboard players set @s GunCraft.Reach 250

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0