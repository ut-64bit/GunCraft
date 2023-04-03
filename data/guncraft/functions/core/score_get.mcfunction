#> guncraft:core/score_get
#
# playerのscoreとnbtを取得
#
# @within function guncraft:core/main

#> temp
# @private
    #declare score_holder $slot プレイヤーが1tick前に選択していたスロット
    #declare score_holder $ammo
    #declare score_holder $have_ammo
    #declare score_holder $max_ammo

# PlayerIDが設定されてなければ設定
    execute unless score @s GunCraft.PlayerID matches -2147483648..2147483647 run scoreboard players add $Global GunCraft.PlayerID 1
    execute unless score @s GunCraft.PlayerID matches -2147483648..2147483647 run scoreboard players operation @s GunCraft.PlayerID = $Global GunCraft.PlayerID

# 1tick前からスロットが変わったか
    scoreboard players operation $slot GunCraft.SelectSlot = @s GunCraft.SelectSlot
    execute store result score @s GunCraft.SelectSlot run data get entity @s SelectedItemSlot
    execute unless score $slot GunCraft.SelectSlot = @s GunCraft.SelectSlot run function guncraft:core/player/move_slot

# オフセット変更
    function guncraft:core/projectile/shift/

# 銃の残弾数を取得
    ## メインハンド
        execute if predicate guncraft:have/main/gun unless predicate guncraft:have/off/gun store result score $ammo GunCraft.Temp run data get entity @s SelectedItem.tag.KaguNBT.Item.Ammo 1

    ## オフハンド
        execute if predicate guncraft:have/off/gun unless predicate guncraft:have/main/gun store result score $ammo GunCraft.Temp run data get entity @s Inventory[{Slot:-106b}].tag.KaguNBT.Item.Ammo 1

    ## 両手持ち
        ### 右手
            execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 store result score $ammo GunCraft.Temp run data get entity @s SelectedItem.tag.KaguNBT.Item.Ammo 1

        ### 左手
            execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 store result score $ammo GunCraft.Temp run data get entity @s Inventory[{Slot:-106b}].tag.KaguNBT.Item.Ammo 1


# 弾丸の所持数を取得
    execute if entity @s[gamemode=creative] run scoreboard players set $have_ammo GunCraft.Temp 999

    ## メインハンド
        ### hand_gun
            execute if predicate guncraft:have/main/hand_gun unless predicate guncraft:have/off/gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

        ### lazer_hand_gun
            execute if predicate guncraft:have/main/lazer_hand_gun unless predicate guncraft:have/off/gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

        ### fire_gun
            execute if predicate guncraft:have/main/fire_gun unless predicate guncraft:have/off/gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

        ### bazooka
            execute if predicate guncraft:have/bazooka unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:explosion_ammo}}} 0

        ### lazer_rifle
            execute if predicate guncraft:have/lazer_rifle unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 0

        ### rifle
            execute if predicate guncraft:have/rifle unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 0

        ### scope_rifle
            execute if predicate guncraft:have/scope_rifle unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 0

        ### 3burst
            execute if predicate guncraft:have/shotgun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:heavy_ammo}}} 0

    ## オフハンド
        ### hand_gun
            execute if predicate guncraft:have/off/hand_gun unless predicate guncraft:have/main/gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

        ### lazer_hand_gun
            execute if predicate guncraft:have/off/lazer_hand_gun unless predicate guncraft:have/main/gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

        ### fire_gun
            execute if predicate guncraft:have/off/fire_gun unless predicate guncraft:have/main/gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

    ## 両手持ち
        ### 右手
            #### hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate guncraft:have/main/hand_gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

            #### lazer_hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate guncraft:have/main/lazer_hand_gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

            #### fire_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate guncraft:have/main/fire_gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

        ### 左手
            #### hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate guncraft:have/off/hand_gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

            #### lazer_hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate guncraft:have/off/lazer_hand_gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

            #### fire_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate guncraft:have/off/fire_gun unless entity @s[gamemode=creative] store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0

# 最大装填数を取得
    ## メインハンド
        ### hand_gun
            execute if predicate guncraft:have/main/hand_gun unless predicate guncraft:have/off/gun run scoreboard players set $max_ammo GunCraft.Temp 8

        ### lazer_hand_gun
            execute if predicate guncraft:have/main/lazer_hand_gun unless predicate guncraft:have/off/gun run scoreboard players set $max_ammo GunCraft.Temp 6

        ### fire_gun
            execute if predicate guncraft:have/main/fire_gun unless predicate guncraft:have/off/gun run scoreboard players set $max_ammo GunCraft.Temp 6

        ### bazooka
            execute if predicate guncraft:have/bazooka run scoreboard players set $max_ammo GunCraft.Temp 1

        ### lazer_rifle
            execute if predicate guncraft:have/lazer_rifle run scoreboard players set $max_ammo GunCraft.Temp 1

        ### rifle
            execute if predicate guncraft:have/rifle run scoreboard players set $max_ammo GunCraft.Temp 1

        ### scope_rifle
            execute if predicate guncraft:have/scope_rifle run scoreboard players set $max_ammo GunCraft.Temp 1

        ### 3burst
            execute if predicate guncraft:have/shotgun run scoreboard players set $max_ammo GunCraft.Temp 5

    ## オフハンド
        ### hand_gun
            execute if predicate guncraft:have/off/hand_gun unless predicate guncraft:have/main/gun run scoreboard players set $max_ammo GunCraft.Temp 8

        ### lazer_hand_gun
            execute if predicate guncraft:have/off/lazer_hand_gun unless predicate guncraft:have/main/gun run scoreboard players set $max_ammo GunCraft.Temp 6

        ### fire_gun
            execute if predicate guncraft:have/off/fire_gun unless predicate guncraft:have/main/gun run scoreboard players set $max_ammo GunCraft.Temp 6

    ## 両手持ち
        ### 右手
            #### hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate guncraft:have/main/hand_gun run scoreboard players set $max_ammo GunCraft.Temp 8

            #### lazer_hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate guncraft:have/main/lazer_hand_gun run scoreboard players set $max_ammo GunCraft.Temp 6

            #### fire_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate guncraft:have/main/fire_gun run scoreboard players set $max_ammo GunCraft.Temp 6

        ### 左手
            #### hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate guncraft:have/off/hand_gun run scoreboard players set $max_ammo GunCraft.Temp 8

            #### lazer_hand_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate guncraft:have/off/lazer_hand_gun run scoreboard players set $max_ammo GunCraft.Temp 6

            #### fire_gun
                execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate guncraft:have/off/fire_gun run scoreboard players set $max_ammo GunCraft.Temp 6

function #asset:guncraft/score_get