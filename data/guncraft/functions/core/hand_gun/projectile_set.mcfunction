#> guncraft:core/hand_gun/projectile_set
#
# スコア設定
#
# @within function guncraft:core/hand_gun/shot

# 性能
    data modify entity @s data set value {Damage:5.0d,HeadDamage:5.5d}
    scoreboard players set @s GunCraft.Speed 30
    scoreboard players set @s GunCraft.Reach 120

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0