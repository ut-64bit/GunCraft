#> guncraft:core/fire_gun/projectile_set
#
#
#
# @within function guncraft:core/fire_gun/shot

# 性能
    data modify entity @s data set value {Damage:6.0d,HeadDamage:7.0d}
    scoreboard players set @s GunCraft.Speed 50
    scoreboard players set @s GunCraft.Reach 250

# 再帰カウント
    scoreboard players set @s GunCraft.Recursion 0