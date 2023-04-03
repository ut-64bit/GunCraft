#> guncraft:core/projectile/trigger
#
# 発射処理
#
# @within function guncraft:core/main

#>
# @private
    #declare score_holder $ammo

# 発射
    ## hand_gun
        execute if predicate guncraft:have/hand_gun if score @s GunCraft.OffSet matches 0 if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/hand_gun/shot
        execute if predicate guncraft:have/off/hand_gun if score @s GunCraft.OffSet matches -1 positioned ^0.4 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/hand_gun/shot
        execute if predicate guncraft:have/main/hand_gun if score @s GunCraft.OffSet matches 1 positioned ^-0.4 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/hand_gun/shot

    ## rifle
        execute if predicate guncraft:have/rifle if score @s GunCraft.OffSet matches 0 run function guncraft:core/rifle/shot
        execute if predicate guncraft:have/rifle if score @s GunCraft.OffSet matches 1 positioned ^-0.4 ^ ^ run function guncraft:core/rifle/shot

    ## bazooka
        execute if predicate guncraft:have/bazooka run function guncraft:core/bazooka/shot

    ## shotgun
        execute if predicate guncraft:have/shotgun run scoreboard players set @s GunCraft.Recursion 5
        execute if predicate guncraft:have/shotgun if score @s GunCraft.OffSet matches 0 run function guncraft:core/shotgun/shot
        execute if predicate guncraft:have/shotgun if score @s GunCraft.OffSet matches 1 positioned ^-0.4 ^ ^ run function guncraft:core/shotgun/shot

    ## lazer_rifle
        execute if predicate guncraft:have/lazer_rifle if score @s GunCraft.OffSet matches 0 run function guncraft:core/lazer_rifle/shot
        execute if predicate guncraft:have/lazer_rifle if score @s GunCraft.OffSet matches 1 positioned ^-0.4 ^ ^ run function guncraft:core/lazer_rifle/shot

    ## lazer_hand_gun
        execute if predicate guncraft:have/lazer_hand_gun if score @s GunCraft.OffSet matches 0 if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/lazer_hand_gun/shot
        execute if predicate guncraft:have/main/lazer_hand_gun if score @s GunCraft.OffSet matches 1 positioned ^-0.4 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/lazer_hand_gun/shot
        execute if predicate guncraft:have/off/lazer_hand_gun if score @s GunCraft.OffSet matches -1 positioned ^0.4 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/lazer_hand_gun/shot

    ## fire_gun
        execute if predicate guncraft:have/fire_gun if score @s GunCraft.OffSet matches 0 if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/fire_gun/shot
        execute if predicate guncraft:have/main/fire_gun if score @s GunCraft.OffSet matches 1 positioned ^-0.4 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/fire_gun/shot
        execute if predicate guncraft:have/off/fire_gun if score @s GunCraft.OffSet matches -1 positioned ^0.4 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/fire_gun/shot

    ## scope_rifle
        execute if predicate guncraft:have/scope_rifle run function guncraft:core/scope_rifle/shot

function #asset:guncraft/trigger

# 残弾減算
    scoreboard players remove $ammo GunCraft.Temp 1
    execute store result storage guncraft:item KaguNBT.Item.Ammo int 1 run scoreboard players get $ammo GunCraft.Temp
    execute if score @s GunCraft.OffSet matches 1 run item replace entity @s weapon.mainhand from entity @s weapon.mainhand guncraft:item
    execute if score @s GunCraft.OffSet matches -1 run item replace entity @s weapon.offhand from entity @s weapon.offhand guncraft:item
    execute if score @s GunCraft.OffSet matches 0 if predicate guncraft:have/main/gun run item replace entity @s weapon.mainhand from entity @s weapon.mainhand guncraft:item
    execute if score @s GunCraft.OffSet matches 0 if predicate guncraft:have/off/gun run item replace entity @s weapon.offhand from entity @s weapon.offhand guncraft:item

# スコアリセット
    scoreboard players set @s GunCraft.Trigger 0