#> guncraft:core/projectile/move/particle/
#
# 移動時のパーティクル表示
#
# @within function guncraft:core/projectile/move/particle/player_check

# パーティクル表示
    ## 爆弾
        execute if entity @s[tag=GunCraft.Bom] run particle minecraft:flame ^ ^ ^ 0 0 0 0 1 force @a[tag=ShowParticle]
        execute if entity @s[tag=GunCraft.Bom] run particle minecraft:smoke ^ ^ ^ 0 0 0 0.03 1 force @a[tag=ShowParticle]
    ## 光線
        execute if entity @s[tag=GunCraft.Light] run particle minecraft:firework ^ ^ ^ 0 0 0 0 1 force @a[tag=ShowParticle]
    ## 火
        execute if entity @s[tag=GunCraft.Fire] run particle flame ~ ~ ~ 0 0 0 0 1 force @a[tag=ShowParticle]
    ## 普通
        execute at @s unless entity @s[tag=GunCraft.Bom] unless entity @s[tag=GunCraft.Light] unless entity @s[tag=GunCraft.Fire] unless block ~ ~ ~ #guncraft:in_water run particle minecraft:crit ^ ^ ^ 0 0 0 0 1 force @a[tag=ShowParticle]
    ## 水中
        execute at @s unless entity @s[tag=GunCraft.Bom] unless entity @s[tag=GunCraft.Light] unless entity @s[tag=GunCraft.Fire] if block ~ ~ ~ #guncraft:in_water run particle minecraft:bubble ^ ^ ^ 0 0 0 0 1 force @a[tag=ShowParticle]