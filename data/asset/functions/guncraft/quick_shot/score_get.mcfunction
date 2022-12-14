#> asset:guncraft/quick_shot/score_get
#
# Score
#
# @within tag/function asset:guncraft/score_get

execute if predicate asset:guncraft/have/main/quick_shot unless predicate guncraft:have/off/gun store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0
execute if predicate asset:guncraft/have/off/quick_shot unless predicate guncraft:have/main/gun store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0
execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate asset:guncraft/have/main/quick_shot store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0
execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate asset:guncraft/have/off/quick_shot store result score $have_ammo GunCraft.Temp run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 0
execute if predicate asset:guncraft/have/main/quick_shot unless predicate guncraft:have/off/gun run scoreboard players set $max_ammo GunCraft.Temp 10
execute if predicate asset:guncraft/have/off/quick_shot unless predicate guncraft:have/main/gun run scoreboard players set $max_ammo GunCraft.Temp 10
execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 if predicate asset:guncraft/have/main/quick_shot run scoreboard players set $max_ammo GunCraft.Temp 10
execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 if predicate asset:guncraft/have/off/quick_shot run scoreboard players set $max_ammo GunCraft.Temp 10