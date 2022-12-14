#> asset:guncraft/quick_shot/trigger
#
# Trigger
#
# @within tag/function asset:guncraft/trigger

execute if predicate asset:guncraft/have/quick_shot if score @s GunCraft.OffSet matches 0 if score $ammo GunCraft.Temp matches 1.. run function asset:guncraft/quick_shot/shot
execute if predicate asset:guncraft/have/off/quick_shot if score @s GunCraft.OffSet matches -1 positioned ^0.2 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function asset:guncraft/quick_shot/shot
execute if predicate asset:guncraft/have/main/quick_shot if score @s GunCraft.OffSet matches 1 positioned ^-0.2 ^ ^ if score $ammo GunCraft.Temp matches 1.. run function asset:guncraft/quick_shot/shot