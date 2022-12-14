#> guncraft:uninstall
# @user

#>
# @private
    #declare score_holder $uninstall

# msg
    tellraw @a {"color": "yellow","text": "データパック [ GunCraft ] をアンインストールします"}
    tellraw @a {"color": "yellow","text": "[ 0 / 2 ]"}

# GunCraft
    scoreboard objectives remove GunCraft.CoolTime
    scoreboard objectives remove GunCraft.Damage
    scoreboard objectives remove GunCraft.HeadDamage
    scoreboard objectives remove GunCraft.PlayerID
    scoreboard objectives remove GunCraft.Rclick
    scoreboard objectives remove GunCraft.Reach
    scoreboard objectives remove GunCraft.Recursion
    scoreboard objectives remove GunCraft.SneakTime
    scoreboard objectives remove GunCraft.Speed
    scoreboard objectives remove GunCraft.Trigger
    scoreboard objectives remove GunCraft.Recoil
    scoreboard objectives remove GunCraft.OffSet
    scoreboard objectives remove GunCraft.UsingScope
    scoreboard objectives remove GunParticle
    scoreboard objectives remove Help
    scoreboard objectives remove Setting.GunParticle
    scoreboard objectives remove GunCraft.SelectSlot
    scoreboard objectives remove GunCraft.Reload
    scoreboard objectives remove GunCraft.Debug
    scoreboard objectives remove GunCraft.LAmmo
    scoreboard objectives remove GunCraft.Temp

    tellraw @a {"color": "yellow","text": "[ 1 / 2 ]"}

# ScoreToHealth
    scoreboard objectives remove ScoreToHealth

    tellraw @a {"color": "yellow","text": "[ 2 / 2 ]"}

# msg
    tellraw @a {"color": "yellow","text": "データパック [ GunCraft ] のスコアが削除されました"}

# アンインストールｯ
    execute store success score $uninstall GunCraft.Temp run datapack disable "file/GunCraft.zip"
    execute if score $uninstall GunCraft.Temp matches 1 run scoreboard objectives remove GunCraft.Temp
    execute unless score $uninstall GunCraft.Temp matches 1 run tellraw @a {"color": "red","text": "データパック [ GunCraft ] のアンインストールが失敗しました"}