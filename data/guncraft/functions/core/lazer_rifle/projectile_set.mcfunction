#> guncraft:core/lazer_rifle/projectile_set
#
# スコア設定
#
# @within function guncraft:core/lazer_rifle/shot

# 性能
    data modify entity @s data set value {Damage:7.0d,HeadDamage:10.0d}
    scoreboard players set @s GunCraft.Speed 400
    scoreboard players set @s GunCraft.Reach 800

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0