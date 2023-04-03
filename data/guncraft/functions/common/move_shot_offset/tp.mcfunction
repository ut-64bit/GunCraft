#> guncraft:common/move_shot_offset/tp
# @within function guncraft:common/move_shot_offset/

scoreboard players operation $Copy GunCraft.Speed = @s GunCraft.Speed

execute if score $Copy GunCraft.Speed matches 256.. run tp @s ^ ^ ^64
execute if score $Copy GunCraft.Speed matches 256.. run scoreboard players remove $Copy GunCraft.Speed 256

execute if score $Copy GunCraft.Speed matches 128.. run tp @s ^ ^ ^32
execute if score $Copy GunCraft.Speed matches 128.. run scoreboard players remove $Copy GunCraft.Speed 128

execute if score $Copy GunCraft.Speed matches 64.. run tp @s ^ ^ ^16
execute if score $Copy GunCraft.Speed matches 64.. run scoreboard players remove $Copy GunCraft.Speed 64

execute if score $Copy GunCraft.Speed matches 32.. run tp @s ^ ^ ^8
execute if score $Copy GunCraft.Speed matches 32.. run scoreboard players remove $Copy GunCraft.Speed 32

execute if score $Copy GunCraft.Speed matches 16.. run tp @s ^ ^ ^4
execute if score $Copy GunCraft.Speed matches 16.. run scoreboard players remove $Copy GunCraft.Speed 16

execute if score $Copy GunCraft.Speed matches 8.. run tp @s ^ ^ ^2
execute if score $Copy GunCraft.Speed matches 8.. run scoreboard players remove $Copy GunCraft.Speed 8

execute if score $Copy GunCraft.Speed matches 4.. run tp @s ^ ^ ^1
execute if score $Copy GunCraft.Speed matches 4.. run scoreboard players remove $Copy GunCraft.Speed 4

execute if score $Copy GunCraft.Speed matches 2.. run tp @s ^ ^ ^0.5
execute if score $Copy GunCraft.Speed matches 2.. run scoreboard players remove $Copy GunCraft.Speed 2

execute if score $Copy GunCraft.Speed matches 1.. run tp @s ^ ^ ^0.25
execute if score $Copy GunCraft.Speed matches 1.. run scoreboard players remove $Copy GunCraft.Speed 1

scoreboard players reset $Copy GunCraft.Speed