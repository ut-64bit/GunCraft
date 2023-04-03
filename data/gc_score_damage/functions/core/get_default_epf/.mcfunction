#> gc_score_damage:core/get_default_epf/
#
# Enchantment Protection Factor (通称EPF)を取得します
#
# @within function gc_score_damage:core/get_status

#> Temp
# @within gc_score_damage:core/get_default_epf/**
    #declare score_holder $Temp

# 負荷軽減のためstorageに入れる
    data modify storage gc_score_damage: Protection set value []
    execute if entity @s[type=player] run function gc_score_damage:core/get_default_epf/from_player
    execute if entity @s[type=!player] run data modify storage gc_score_damage: Protection append from entity @s ArmorItems[].tag.Enchantments
# 明示的に0に設定
    scoreboard players set $EPF ScoreDamageCore 0
# ダメージ軽減の加算
    # 0
        execute store result score $Temp ScoreDamageCore run data get storage gc_score_damage: Protection[0][{id:"minecraft:protection"}].lvl
        scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
    # 1
        execute store result score $Temp ScoreDamageCore run data get storage gc_score_damage: Protection[1][{id:"minecraft:protection"}].lvl
        scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
    # 2
        execute store result score $Temp ScoreDamageCore run data get storage gc_score_damage: Protection[2][{id:"minecraft:protection"}].lvl
        scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
    # 3
        execute store result score $Temp ScoreDamageCore run data get storage gc_score_damage: Protection[3][{id:"minecraft:protection"}].lvl
        scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 各種エンチャントの加算
    execute if data storage gc_score_damage: Argument{DamageType:"Fire"} run function gc_score_damage:core/get_default_epf/enchant/fire
    execute if data storage gc_score_damage: Argument{DamageType:"Blast"} run function gc_score_damage:core/get_default_epf/enchant/blast
    execute if data storage gc_score_damage: Argument{DamageType:"Projectile"} run function gc_score_damage:core/get_default_epf/enchant/projectile
    execute if data storage gc_score_damage: Argument{DamageType:"Fall"} run function gc_score_damage:core/get_default_epf/enchant/fall
# リセット
    scoreboard players reset $Temp ScoreDamageCore
    data remove storage gc_score_damage: Protection