#> guncraft:core/projectile/spread
#
# 拡散
#
# @within function
#    guncraft:core/*/shot
#    asset:guncraft/*/shot

#> 
# @private
    #declare tag SpreadMarker
    #alias entity Marker @e[type=marker,tag=SpreadMarker,limit=1]
    #alias entity Projectile @e[[type=marker,tag=GunCraft.Preparation,limit=1]

# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# 処理の実行
    execute at @s anchored eyes positioned ^ ^ ^10 as @e[type=marker,tag=SpreadMarker,limit=1] run function forward_spreader:api/circle

# 実行者
    execute as @e[type=marker,tag=GunCraft.Preparation,limit=1] at @s facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run tp @s ~ ~ ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]