#> guncraft:system/user/main
#
# 設定
#
# @handles advancement minecraft:tick

    execute as @a unless score @s Help matches 0 run function guncraft:system/user/help
    execute as @a unless score @s GunParticle matches 0 run function guncraft:system/user/gun_particle
