#> asset:guncraft/quick_shot/projectile_set
#
# スコア設定
#
# @within function asset:guncraft/quick_shot/shot

# 性能
scoreboard players set @s GunCraft.Damage 300
scoreboard players set @s GunCraft.HeadDamage 400
scoreboard players operation @s GunCraft.Damage *= $Damage GunCraft.Temp
scoreboard players operation @s GunCraft.HeadDamage *= $Damage GunCraft.Temp
scoreboard players set @s GunCraft.Speed 30
scoreboard players set @s GunCraft.Reach 100

# 再帰カウント
scoreboard players set @s GunCraft.Recursion 0