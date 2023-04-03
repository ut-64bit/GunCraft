#> guncraft:core/projectile/hit/hit_damage
#
# Damage
#
# @within function guncraft:core/projectile/hit/

#> Temp
# @private
    #declare tag HeadShot

# 攻撃音
    execute at @a[tag=AttackPlayer] run playsound block.note_block.bell player @a ~ ~ ~ 1 1.5

# ダメージ設定
    data modify storage score_damage: Argument set value {Damage:1,DamageType:"Projectile"}
    data modify storage score_damage: Argument.Damage set from entity @s data.Damage
    execute if data entity @s data.DamageType run data modify storage score_damage: Argument.DamageType set from entity @s data.DamageType

    ## 環境補正
        execute if data entity @s {data:{DamageType:Fire}} as @e[tag=Damage] unless predicate guncraft:effect/fire_resistance run function guncraft:core/projectile/hit/fire_hit

# ヘッドショット判定
    execute as @e[tag=Damage] at @s anchored eyes positioned ^ ^ ^ positioned ~-0.3 ~-0.5 ~-0.5 if entity @e[tag=projectile_this,dx=0] run function guncraft:core/projectile/hit/head_shot

# ダメージ
    execute as @e[tag=Damage] run function score_damage:api/attack
    data remove storage score_damage: Damage

# tag解除
    execute if entity @e[tag=GunCraft.HitBom] run tag @e[tag=GunCraft.HitBom] remove GunCraft.HitBom
    execute if entity @e[tag=GunCraft.HitFire] run tag @e[tag=GunCraft.HitFire] remove GunCraft.HitFire
    execute if entity @e[tag=GunCraft.HitLight] run tag @e[tag=GunCraft.HitLight] remove GunCraft.HitLight
    execute if entity @e[tag=HeadShot] run tag @e[tag=HeadShot] remove HeadShot
    tag @a[tag=AttackPlayer] remove AttackPlayer
    tag @e[tag=Damage] remove Damage

# 弾丸破壊
    execute if entity @s[tag=GunCraft.Bom] at @s run function guncraft:core/projectile/hit/explosion
    kill @s