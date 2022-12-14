#> guncraft:core/projectile/hit/explosion
#
# 地形破壊しない爆発
#
# @within function guncraft:core/projectile/**

#> Temp
# @private
    #declare tag Explosion

    summon creeper ~ ~200 ~ {CustomName:'{"text":"Bazooka"}',Invulnerable:1b,ExplosionRadius:3b,Tags:[Explosion],Fuse:0s}
    execute at @s as @e[tag=Explosion,sort=nearest] run tp @s ~ ~0.2 ~
    tag @e[tag=Explosion] remove Explosion