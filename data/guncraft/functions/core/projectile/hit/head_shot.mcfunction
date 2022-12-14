#> guncraft:core/projectile/hit/head_shot
#
# HeadShot
#
# @within function guncraft:core/projectile/hit/hit_damage

#>
# @private
    #declare tag HeadShot

# ヘッドショット用スコア代入
    execute store result storage score_damage: Argument.Damage float 0.01 run scoreboard players get @e[tag=projectile_this,limit=1] GunCraft.HeadDamage

# bomだったら爆発
    execute if entity @e[tag=projectile_this,tag=GunCraft.Bom] run function guncraft:core/projectile/hit/explosion

# ダメージ判別用tag付与
    tag @s add HeadShot

# 攻撃音
    execute as @a[tag=AttackPlayer] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.5 1
    execute as @a[tag=AttackPlayer] at @s run playsound minecraft:block.anvil.place player @s ~ ~ ~ 1 2 1
    execute at @s run playsound minecraft:block.note_block.bell player @a[tag=!AttackPlayer] ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.anvil.place player @a[tag=!AttackPlayer] ~ ~ ~ 1 2

# パーティクル表示
    execute at @s anchored eyes positioned ^ ^ ^ run particle flash ~ ~ ~ 0 0 0 0 1 force @a[tag=!Damage]
    execute at @s anchored eyes positioned ^ ^ ^ run particle end_rod ~ ~ ~ 0 0 0 0.1 5 force
    execute at @s if entity @s[tag=GunCraft.HitFire] anchored eyes positioned ^ ^ ^ as @e[tag=projectile_this] run particle flame ~ ~ ~ 0 0 0 0.1 5 force