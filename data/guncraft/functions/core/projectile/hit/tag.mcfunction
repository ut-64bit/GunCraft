#> guncraft:core/projectile/hit/tag
#
# ダメージの種類に応じてtagを付与
#
# @within function guncraft:core/projectile/hit/

# bom
    execute as @e[tag=Damage] if entity @s[tag=GunCraft.Bom] run tag @s add GunCraft.HitBom

# fire
    execute as @e[tag=Damage] if entity @s[tag=GunCraft.Fire] run tag @s add GunCraft.HitFire

# light
    execute as @e[tag=Damage] if entity @s[tag=GunCraft.Light] run tag @s add GunCraft.HitLight