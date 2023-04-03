#> guncraft:core/shotgun/projectile_set
#
# スコア設定
#
# @within function guncraft:core/shotgun/shot

# 性能
    data modify entity @s data set value {Damage:2.0d,HeadDamage:4.0d}
    scoreboard players set @s GunCraft.Speed 35
    scoreboard players set @s GunCraft.Reach 110

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0