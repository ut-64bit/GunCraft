#> guncraft:core/scope_rifle/projectile_set
#
# スコア設定
#
# @within function guncraft:core/scope_rifle/shot

# 性能
    data modify entity @s data set value {Damage:10.0d,HeadDamage:15.0d}
    scoreboard players set @s GunCraft.Speed 100
    scoreboard players set @s GunCraft.Reach 800

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0