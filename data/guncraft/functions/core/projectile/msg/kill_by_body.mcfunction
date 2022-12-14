#> guncraft:core/projectile/msg/kill_by_body
#
# 頭以外を打たれたときのデスメッセージ
#
# @within function guncraft:core/projectile/msg/kill_by_projectile

# bom
    execute if entity @s[tag=GunCraft.HitBom] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に爆破された"}]

# fire
    execute if entity @s[tag=GunCraft.HitFire] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に熱々にされた"}]

# light
    execute if entity @s[tag=GunCraft.HitLight] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に撃ち抜かれた"}]

# normal
    execute unless entity @s[tag=GunCraft.HitBom] unless entity @s[tag=GunCraft.HitLight] unless entity @s[tag=GunCraft.HitFire] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に撃たれた"}]