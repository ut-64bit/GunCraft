#> guncraft:core/reload
#
# リロード
#
# @within function guncraft:core/main

# リロードのスコアがバグってる場合
    execute unless score @s GunCraft.Reload = @s GunCraft.Reload run scoreboard players set @s GunCraft.Reload 0

# リロード進行
    execute if score @s GunCraft.Reload matches 1.. run scoreboard players remove @s GunCraft.Reload 1

# リロード音
    execute if score @s GunCraft.Reload matches 0 at @s run function guncraft:core/sounds/reload

# アイテム変更
    execute if score @s GunCraft.Reload matches 0 run scoreboard players add $ammo GunCraft.Temp 1
    data merge storage guncraft:item {KaguNBT:{Item:{Ammo:0}}}
    execute if score @s GunCraft.Reload matches 0 store result storage guncraft:item KaguNBT.Item.Ammo int 1 run scoreboard players get $ammo GunCraft.Temp
    execute if score @s GunCraft.Reload matches 0 if score @s GunCraft.OffSet matches 1 run item replace entity @s weapon.mainhand from entity @s weapon.mainhand guncraft:item
    execute if score @s GunCraft.Reload matches 0 if score @s GunCraft.OffSet matches -1 run item replace entity @s weapon.offhand from entity @s weapon.offhand guncraft:item

# 弾薬減らす
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/shotgun run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/bazooka run clear @s command_block{KaguNBT:{Item:{Type:explosion_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/fire_gun run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/hand_gun run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/lazer_hand_gun run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/lazer_rifle run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/rifle run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 1
    execute unless entity @s[gamemode=creative] if score @s GunCraft.Reload matches 0 if predicate guncraft:have/scope_rifle run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 1

    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/shotgun run scoreboard players set @s GunCraft.Reload 10
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/bazooka run scoreboard players set @s GunCraft.Reload 20
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/fire_gun run scoreboard players set @s GunCraft.Reload 7
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/hand_gun run scoreboard players set @s GunCraft.Reload 5
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/lazer_hand_gun run scoreboard players set @s GunCraft.Reload 7
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/lazer_rifle run scoreboard players set @s GunCraft.Reload 20
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/rifle run scoreboard players set @s GunCraft.Reload 20
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/scope_rifle run scoreboard players set @s GunCraft.Reload 20

    execute if score @s GunCraft.Reload matches 0 run function #asset:guncraft/reload