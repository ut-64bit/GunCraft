#> guncraft:system/tick
#
# tick
#
# @handles advancement minecraft:tick

execute as @e[tag=GunCraft.Projectile] at @s anchored eyes positioned ^ ^ ^ run function guncraft:core/projectile/move/
