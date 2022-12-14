#> guncraft:system/install
#
# Playerのinstall
#
# @public

    scoreboard players set @s Setting.GunParticle 1
    scoreboard players set @s Help 0
    scoreboard players set @s GunCraft.CoolTime 0
    scoreboard players set @s GunCraft.Trigger 0
    scoreboard players enable @s Help
    scoreboard players enable @s GunParticle
    scoreboard players enable @s GunCraft.Trigger
    scoreboard players set @s GunCraft.Reload 0

tellraw @s [{ "text": "-----------------------------","color": "yellow"},{ "text": "\n\nデータパック [ ","color": "white"},{"text": "GunCraft","color": "blue"},{"text": " ] の導入が完了しました\n\n v1.0.0\n","color": "white"},{"text": "-----------------------------","color": "yellow"}]