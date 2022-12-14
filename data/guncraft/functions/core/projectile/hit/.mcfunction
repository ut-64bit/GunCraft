#> guncraft:core/projectile/hit/
#
# hit処理
#
# @within function guncraft:core/projectile/move/

#> temp
# @private
    #declare score_holder $hit Hit処理の実行

# ダメージ処理をon
    scoreboard players set $hit GunCraft.Temp 1

# HitしたEntityにTagを付与
    execute at @s positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=!#guncraft:no_health,dx=0] positioned ~-0.75 ~-0.75 ~-0.75 if entity @e[dx=0,sort=nearest,limit=1] run tag @s add Damage

    ## ダメージの種類に応じてtagを付与
        function guncraft:core/projectile/hit/tag

# もしHitしたEntityが発射したPlayerならダメージ処理をoff
    execute as @a if score @s GunCraft.PlayerID = @e[tag=projectile_this,limit=1] GunCraft.PlayerID run tag @s add AttackPlayer
    execute if entity @a[tag=AttackPlayer,tag=Damage] run scoreboard players set $hit GunCraft.Temp 0

# 爆発しそうなEntityにHitしたら即爆発☆
    execute if score $hit GunCraft.Temp matches 1 as @e[tag=Damage] if entity @s[type=#guncraft:bom] at @s run function guncraft:core/projectile/hit/hit_bom
    execute if score $hit GunCraft.Temp matches 1 if entity @e[type=#guncraft:bom,tag=Damage] run kill @s

# ダメージ与える
    execute if score $hit GunCraft.Temp matches 1 run function guncraft:core/projectile/hit/hit_damage

# tag削除
    execute if entity @e[tag=GunCraft.HitBom] run tag @e[tag=GunCraft.HitBom] remove GunCraft.HitBom
    execute if entity @e[tag=GunCraft.HitFire] run tag @e[tag=GunCraft.HitFire] remove GunCraft.HitFire
    execute if entity @e[tag=GunCraft.HitLight] run tag @e[tag=GunCraft.HitLight] remove GunCraft.HitLight
    tag @a[tag=AttackPlayer] remove AttackPlayer
    tag @e[tag=Damage] remove Damage

# score_holder削除
    scoreboard players reset $hit GunCraft.Temp