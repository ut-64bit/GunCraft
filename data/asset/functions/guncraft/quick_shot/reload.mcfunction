#> asset:guncraft/quick_shot/reload
#
# Reload
#
# @within tag/function asset:guncraft/reload

execute if predicate asset:guncraft/have/quick_shot run clear @s command_block{KaguNBT:{Item:{Type:light_ammo}}} 1
execute if predicate asset:guncraft/have/quick_shot run scoreboard players set @s GunCraft.Reload 02