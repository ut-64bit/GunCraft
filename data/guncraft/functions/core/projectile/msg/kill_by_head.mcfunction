#> guncraft:core/projectile/msg/kill_by_head
#
# ヘッドショットでのデスメッセージ
#
# @within function guncraft:core/projectile/msg/kill_by_projectile

execute if entity @s[tag=GunCraft.HitBom] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に盛大に爆破された"}]
execute if entity @s[tag=GunCraft.HitFire] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に超アツアツにされた"}]
execute if entity @s[tag=GunCraft.HitLight] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に頭を正確に撃ち抜かれた"}]
execute unless entity @s[tag=GunCraft.HitBom] unless entity @s[tag=GunCraft.HitLight] unless entity @s[tag=GunCraft.HitFire] run tellraw @a [{"selector":"@s"},{"text":" は "},{"selector":"@a[tag=AttackPlayer]"},{"text":" に頭を正確に撃たれた"}]