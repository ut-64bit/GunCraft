#> guncraft:core/projectile/miss
#
# 弾丸が入っていない状態で銃を打とうとしたときの処理
#
# @within function guncraft:core/main

# 音
    playsound ui.button.click player @s ~ ~ ~ 1 1 1

# 右手
    execute if score @s GunCraft.OffSet matches 1 anchored eyes positioned ^ ^ ^ run particle dust 0 0 0 0.5 ^-0.2 ^ ^0.6 0 0 0 0 3 normal @s

# 真ん中
    execute if score @s GunCraft.OffSet matches 0 anchored eyes positioned ^ ^ ^ run particle dust 0 0 0 0.5 ^ ^ ^0.6 0 0 0 0 3 normal @s

# 左手
    execute if score @s GunCraft.OffSet matches -1 anchored eyes positioned ^ ^ ^ run particle dust 0 0 0 0.5 ^0.2 ^ ^0.6 0 0 0 0 3 normal @s

    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/shotgun run scoreboard players set @s GunCraft.Reload 5
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/bazooka run scoreboard players set @s GunCraft.Reload 20
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/fire_gun run scoreboard players set @s GunCraft.Reload 5
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/hand_gun run scoreboard players set @s GunCraft.Reload 5
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/lazer_hand_gun run scoreboard players set @s GunCraft.Reload 5
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/lazer_rifle run scoreboard players set @s GunCraft.Reload 20
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/rifle run scoreboard players set @s GunCraft.Reload 20
    execute if score @s GunCraft.Reload matches 0 if predicate guncraft:have/scope_rifle run scoreboard players set @s GunCraft.Reload 20
    function guncraft:core/player/move_slot

# スコアリセット
    scoreboard players set @s GunCraft.Trigger 0